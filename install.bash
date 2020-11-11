#!/bin/bash

# script prereq's
if [ ! -d "/opt/julia-1.5.3" ]; then
    sudo apt-get install wget tar

    mkdir -p ./installation
    pushd ./installation

    # get the 1.5.3 release of Julia
    wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.3-linux-x86_64.tar.gz

    tar -xzvf ./julia-1.5.3-linux-x86_64.tar.gz

    sudo mv ./julia-1.5.3 /opt/

    popd

    rm -rf ./installation

    # add julia to the path
    sudo ln -s /opt/julia-1.5.3/bin/julia /usr/local/bin/julia-1.5.3
    sudo ln -s /usr/local/bin/julia-1.5.3 /usr/local/bin/julia
else
    echo "Julia is already installed"
fi
