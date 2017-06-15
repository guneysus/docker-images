#!/usr/bin/env bash

for i in $(ls -d */); 
    do 
        make -C ${i%%/}; 
    done

