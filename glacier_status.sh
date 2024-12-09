#!/bin/bash

if [[ $(docker ps -qf name=glacier-verifier) ]]; then
    echo "glacier正在运行"
else
    echo "停止"
fi
