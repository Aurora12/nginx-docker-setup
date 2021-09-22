#!/bin/bash

set -x

NAME=$(cat ./NAME)

docker stop "$NAME"
