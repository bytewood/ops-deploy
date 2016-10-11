 #!/usr/bin/env bash

dkr run -it \
        --rm \
        --name micro \
        --add-host "artifactory:10.9.38.34" \
        -v /home/peter/.gradle:/root/.gradle \
        -v /media/data/projects/bytewood/ops/microservice:/app \
        bytewood/ops-gradle:latest \
        sh
