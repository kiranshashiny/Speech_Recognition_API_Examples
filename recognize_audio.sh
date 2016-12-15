#!/bin/bash

. ./envvars


curl -X POST -u ${username}:${password} --header "Content-Type: audio/flac" --header "Transfer-Encoding: chunked" --data-binary @./ContrastSecurityLibertyOnTravis.flac "https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?model=en-US_NarrowbandModel&continuous=true"
