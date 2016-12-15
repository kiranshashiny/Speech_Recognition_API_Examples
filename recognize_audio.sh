#!/bin/bash

. ./envvars

curl -X POST -u ${username}:${password} --header "Content-Type: audio/flac" --header "Transfer-Encoding: chunked" --data-binary @./audio-file.flac "https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?continuous=true"

