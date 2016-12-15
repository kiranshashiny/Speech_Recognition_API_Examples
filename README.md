# Speech_Recognition_API_Examples

https://www.ibm.com/watson/developercloud/doc/speech-to-text/tutorial.shtml
This repository documents the trials and errors that I must have made during my learning processes of the Speech to Text Watson engine.

Essentially we have to first set up a certain model to interpret the voice in the flat file or streaming audio.

In my exposure so far I was able to read external files of format ( flac ) and convert it to text ( as JSON output ) for a certain model.

If you are trying to read in a certain audio file in flac format and receive an error that the engine cannot read, then you might want to consider setting one of the other models to recognize the audio.

In other words the engine supports different types of models as listed below and we can get that out by issuing the GET command,

The documentation for other models are also listed in this URL 

http://www.ibm.com/watson/developercloud/doc/speech-to-text/output.shtml


User can set up the model when issuing the GET command and recognize the voice or audio.


Since audio formats could come in various formats, I converted a m4a to flac model and was able to input that the recognize curl command and tried to interpret the audio.  The online tool to convert m4a to flac that I used was from  zamzar  ( google it please )

Some of the CURL commands that I experimented with :


####### Get Models

. ./envvars
echo $username
echo $password

curl -X GET -u ${username}:${password} "https://stream.watsonplatform.net/speech-to-text/api/v1/models"

				{
				   "models": [
				      {
				         "name": "fr-FR_BroadbandModel", 
				         "language": "fr-FR", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/fr-FR_BroadbandModel", 
				         "rate": 16000, 
				         "supported_features": {
				            "custom_language_model": false, 
				            "speaker_labels": false
				         }, 
				         "description": "French broadband model."
				      }, 
				      {
				         "name": "en-US_NarrowbandModel", 
				         "language": "en-US", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/en-US_NarrowbandModel", 
				         "rate": 8000, 
				         "supported_features": {
				            "custom_language_model": true, 
				            "speaker_labels": true
				         }, 
				         "description": "US English narrowband model."
				      }, 
				      {
				         "name": "pt-BR_BroadbandModel", 
				         "language": "pt-BR", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/pt-BR_BroadbandModel", 
				         "rate": 16000, 
				         "supported_features": {
				            "custom_language_model": false, 
				            "speaker_labels": false
				         }, 
				         "description": "Brazilian Portuguese broadband model."
				      }, 
				      {
				         "name": "ja-JP_NarrowbandModel", 
				         "language": "ja-JP", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/ja-JP_NarrowbandModel", 
				         "rate": 8000, 
				         "supported_features": {
				            "custom_language_model": true, 
				            "speaker_labels": true
				         }, 
				         "description": "Japanese narrowband model."
				      }, 
				      {
				         "name": "zh-CN_BroadbandModel", 
				         "language": "zh-CN", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/zh-CN_BroadbandModel", 
				         "rate": 16000, 
				         "supported_features": {
				            "custom_language_model": false, 
				            "speaker_labels": false
				         }, 
				         "description": "Mandarin broadband model."
				      }, 
				      {
				         "name": "ja-JP_BroadbandModel", 
				         "language": "ja-JP", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/ja-JP_BroadbandModel", 
				         "rate": 16000, 
				         "supported_features": {
				            "custom_language_model": true, 
				            "speaker_labels": false
				         }, 
				         "description": "Japanese broadband model."
				      }, 
				      {
				         "name": "pt-BR_NarrowbandModel", 
				         "language": "pt-BR", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/pt-BR_NarrowbandModel", 
				         "rate": 8000, 
				         "supported_features": {
				            "custom_language_model": false, 
				            "speaker_labels": false
				         }, 
				         "description": "Brazilian Portuguese narrowband model."
				      }, 
				      {
				         "name": "es-ES_BroadbandModel", 
				         "language": "es-ES", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/es-ES_BroadbandModel", 
				         "rate": 16000, 
				         "supported_features": {
				            "custom_language_model": false, 
				            "speaker_labels": false
				         }, 
				         "description": "Spanish broadband model."
				      }, 
				      {
				         "name": "ar-AR_BroadbandModel", 
				         "language": "ar-AR", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/ar-AR_BroadbandModel", 
				         "rate": 16000, 
				         "supported_features": {
				            "custom_language_model": false, 
				            "speaker_labels": false
				         }, 
				         "description": "Modern Standard Arabic broadband model."
				      }, 
				      {
				         "name": "zh-CN_NarrowbandModel", 
				         "language": "zh-CN", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/zh-CN_NarrowbandModel", 
				         "rate": 8000, 
				         "supported_features": {
				            "custom_language_model": false, 
				            "speaker_labels": false
				         }, 
				         "description": "Mandarin narrowband model."
				      }, 
				      {
				         "name": "en-UK_BroadbandModel", 
				         "language": "en-UK", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/en-UK_BroadbandModel", 
				         "rate": 16000, 
				         "supported_features": {
				            "custom_language_model": false, 
				            "speaker_labels": false
				         }, 
				         "description": "UK English broadband model."
				      }, 
				      {
				         "name": "es-ES_NarrowbandModel", 
				         "language": "es-ES", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/es-ES_NarrowbandModel", 
				         "rate": 8000, 
				         "supported_features": {
				            "custom_language_model": false, 
				            "speaker_labels": true
				         }, 
				         "description": "Spanish narrowband model."
				      }, 
				      {
				         "name": "en-US_BroadbandModel", 
				         "language": "en-US", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/en-US_BroadbandModel", 
				         "rate": 16000, 
				         "supported_features": {
				            "custom_language_model": true, 
				            "speaker_labels": false
				         }, 
				         "description": "US English broadband model."
				      }, 
				      {
				         "name": "en-UK_NarrowbandModel", 
				         "language": "en-UK", 
				         "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/en-UK_NarrowbandModel", 
				         "rate": 8000, 
				         "supported_features": {
				            "custom_language_model": false, 
				            "speaker_labels": false
				         }, 
				         "description": "UK English narrowband model."
				      }
				   ]
				}


#####  Recognize audio - downloaded a certain audio file called audio-file.flac and played it here.

        #!/bin/bash

        . ./envvars

        curl -X POST -u ${username}:${password} --header "Content-Type: audio/flac" --header "Transfer-Encoding: chunked" --data-binary @./audio-file.flac "https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?continuous=true"



    The return json file is :

				{
				   "results": [
				      {
				         "alternatives": [
				            {
				               "confidence": 0.891, 
				               "transcript": "several tornadoes touch down as a line of severe thunderstorms swept through Colorado on Sunday "
				            }
				         ], 
				         "final": true
				      }
				   ], 
				   "result_index": 0
				}


#####  Recognize audio with time stamps - downloaded a certain audio file called audio-file.flac and played it here.

curl -X POST -u ${username}:${password} --header "Content-Type: audio/flac" --header "Transfer-Encoding: chunked" --data-binary @./audio-file.flac "https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?continuous=true&timestamps=true&max_alternatives=3"



				{
				   "results": [
				      {
				         "alternatives": [
				            {
				               "timestamps": [
				                  [
				                     "several", 
				                     1.01, 
				                     1.52
				                  ], 
				                  [
				                     "tornadoes", 
				                     1.52, 
				                     2.15
				                  ], 
				                  [
				                     "touch", 
				                     2.15, 
				                     2.5
				                  ], 
				                  [
				                     "down", 
				                     2.5, 
				                     2.81
				                  ], 
				                  [
				                     "as", 
				                     2.81, 
				                     2.93
				                  ], 
				                  [
				                     "a", 
				                     2.93, 
				                     2.98
				                  ], 
				                  [
				                     "line", 
				                     2.98, 
				                     3.29
				                  ], 
				                  [
				                     "of", 
				                     3.29, 
				                     3.39
				                  ], 
				                  [
				                     "severe", 
				                     3.39, 
				                     3.77
				                  ], 
				                  [
				                     "thunderstorms", 
				                     3.77, 
				                     4.51
				                  ], 
				                  [
				                     "swept", 
				                     4.51, 
				                     4.81
				                  ], 
				                  [
				                     "through", 
				                     4.81, 
				                     4.94
				                  ], 
				                  [
				                     "Colorado", 
				                     4.94, 
				                     5.62
				                  ], 
				                  [
				                     "on", 
				                     5.62, 
				                     5.74
				                  ], 
				                  [
				                     "Sunday", 
				                     5.74, 
				                     6.34
				                  ]
				               ], 
				               "confidence": 0.891, 
				               "transcript": "several tornadoes touch down as a line of severe thunderstorms swept through Colorado on Sunday "
				            }, 
				            {
				               "transcript": "several tornadoes touched down as a line of severe thunderstorms swept through Colorado on Sunday "
				            }, 
				            {
				               "transcript": "several tornadoes touch down is a line of severe thunderstorms swept through Colorado on Sunday "
				            }
				         ], 
				         "final": true
				      }
				   ], 
				   "result_index": 0
				}





####   How to Personalize Model when interpreting Audio, this is required when we have our own audio file that we would like to convert to text.

In this example - I used the same curl command above to recognize and it failed !!

The error message and how to resolve it is in the snapshot , we have to include the "MODEL argument" with the appropriate model in the curl command as an argument.



<img width="1327" src="https://cloud.githubusercontent.com/assets/14288989/21221587/f85f5654-c2e3-11e6-9ef1-b2fddf8de657.png">

To resolve this include the model as part of the curl command.


curl -X POST -u ${username}:${password} --header "Content-Type: audio/flac" --header "Transfer-Encoding: chunked" --data-binary @./ContrastSecurityLibertyOnTravis.flac "https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?model=en-US_NarrowbandModel&continuous=true"


<img width="1335" src="https://cloud.githubusercontent.com/assets/14288989/21222032/eb11bfa8-c2e5-11e6-90f7-2b4a63fd1cd4.png">
