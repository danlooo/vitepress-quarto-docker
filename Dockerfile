FROM rocker/r-ver:4.4
WORKDIR /build

# install quarto
RUN apt-get update && \
    apt-get install -y wget && \
    wget -O quarto.deb https://github.com/quarto-dev/quarto-cli/releases/download/v1.6.42/quarto-1.6.42-linux-amd64.deb && \
    apt-get install -y ./quarto.deb

# install python
RUN  apt-get install -y python3 python3-pip python3-venv
COPY requirements.txt .
RUN  python3 -m venv pyenv && \
    . pyenv/bin/activate && \
    pip install -r requirements.txt

# install julia
RUN wget -O install-julia.sh https://install.julialang.org && sh install-julia.sh --yes
ENV PATH="/root/.juliaup/bin:$PATH"
COPY Project.toml /root/.julia/environments/v1.11/Project.toml
RUN julia -e 'using Pkg; Pkg.instantiate(); Pkg.status()'

# install renv
RUN apt-get install -y libpng-dev
RUN R -e "install.packages(c('renv', 'reticulate'))"
COPY renv.lock .
RUN R -e "renv::restore()"

# install docker
RUN apt-get install -y ca-certificates curl && \
    install -m 0755 -d /etc/apt/keyring && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc && \
    chmod a+r /etc/apt/keyrings/docker.asc && \
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
    tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

WORKDIR /work
CMD ["/bin/bash"]