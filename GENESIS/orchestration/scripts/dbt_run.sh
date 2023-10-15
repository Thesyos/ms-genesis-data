#!/bin/bash

# Project team to customize the script for running a group of dbt commands
set -x

PROFILE_DIR="/git/repo/ms-genesis-data/GENESIS/transformation/"
PROJECT_DIR="/git/repo/ms-genesis-data/GENESIS/transformation/"


run_type=$1  # run/test
full_refresh=$2  # boolean True/False
target=$3        # env target
layer=$4        # workflow layer (staging, compute, mapping, published, technical)

if [ $run_type = "run" ]; then

    if [ $full_refresh = "True" ]; then
        # Mapping 
        if [ $layer = "mappings" ]; then 
            echo "mapping models"
            dbt seed --full-refresh --project-dir $PROJECT_DIR --profiles-dir $PROFILE_DIR --target $target
        else
            echo dbt run --full-refresh --project-dir $PROJECT_DIR --profiles-dir $PROFILE_DIR --target $target --select $layer.*
            dbt run --full-refresh --project-dir $PROJECT_DIR --profiles-dir $PROFILE_DIR --target $target --select $layer.*
        fi
    else
        # Mapping 
        if [ $layer = "mappings" ]; then 
            echo "mapping models"
            dbt seed --project-dir $PROJECT_DIR --profiles-dir $PROFILE_DIR --target $target
        else
            echo dbt run --project-dir $PROJECT_DIR --profiles-dir $PROFILE_DIR --target $target --select $layer.*
            dbt run --project-dir $PROJECT_DIR --profiles-dir $PROFILE_DIR --target $target --select $layer.*
        fi
    fi

elif [ $run_type = "test" ]; then
    echo dbt test --project-dir $PROJECT_DIR --profiles-dir $PROFILE_DIR --target $target
    dbt test --project-dir $PROJECT_DIR --profiles-dir $PROFILE_DIR --target $target 
fi


# capture the exit code from the dbt run command
exit_code=$?

# rethrowing the exit code to KubernetesPodOperator
exit $exit_code