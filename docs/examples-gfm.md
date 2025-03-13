

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

    CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS     NAMES
    579ac5e5def3   buildenv       "quarto render ."        52 seconds ago   Up 51 seconds             trusting_benz
    6a408477dff2   767eb0a2545e   "R"                      47 minutes ago   Up 47 minutes             frosty_fermi
    ab1df71f5953   75dc493f1d7d   "julia"                  59 minutes ago   Up 59 minutes             heuristic_goldberg
    2e75814fd810   julia          "docker-entrypoint.s…"   4 hours ago      Up 4 hours                eloquent_carson

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

    2025-03-13T16:18:06.994

## Python

``` python
import xarray as xr
print("hello world")
```

    hello world
