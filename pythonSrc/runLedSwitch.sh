#!/bin/bash

AWS_IOT_ENDPOINT='a3gs90a9oayjfd-ats.iot.us-east-1.amazonaws.com'
AWS_IOT_CERTIFICATE_FILE='../certs/dev/6df4b41ca6-certificate.pem.crt'
AWS_IOT_PRIVATE_KEY_FILE='../certs/dev/6df4b41ca6-private.pem.key'
AWS_IOT_PUBLIC_KEY_FILE='../certs/dev/6df4b41ca6-public.pem.key'
AWS_IOT_AMAZON_ROOT_CA1_FILE='../certs/AmazonRootCA1.pem'
AWS_IOT_LPS_THING_NAME='lps-0000000018'
#AWS_IOT_LPS_THING_NAME='raspi'
AWS_IOT_THING_SHADOW_PROPERTY='switchOn'
#AWS_IOT_THING_SHADOW_PROPERTY='light'

python3 shadow.py \
--endpoint $AWS_IOT_ENDPOINT \
--cert $AWS_IOT_CERTIFICATE_FILE \
--key $AWS_IOT_PRIVATE_KEY_FILE \
--root-ca $AWS_IOT_AMAZON_ROOT_CA1_FILE \
--thing-name $AWS_IOT_LPS_THING_NAME \
--shadow-property $AWS_IOT_THING_SHADOW_PROPERTY

