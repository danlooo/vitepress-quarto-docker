# Examples


## Bash

``` bash
echo hello world
```

    hello world

access host docker:

``` bash
docker ps
```

    CONTAINER ID   IMAGE                     COMMAND                  CREATED              STATUS              PORTS     NAMES
    fd9512db98bd   vitepress-quarto-docker   "/bin/bash quarto re…"   58 seconds ago       Up 58 seconds                 relaxed_wu
    767e2da69e88   vitepress-quarto-docker   "/bin/bash"              About a minute ago   Up About a minute             mystifying_fermi

## R

``` r
a <- 1
a + 1
```

    [1] 2

## Julia

``` julia
using Dates
using Zarr
Dates.now()
```

    2025-03-14T12:04:14.546

## Python

``` python
import xarray as xr
print("hello world")
```

    hello world
