#!/bin/bash

#set -eux

pivnet-api-token="$1"
product-slug="$2"
product-version="$3"
product-file-glob="$4"

if [ -z "$pivnet-api-token" ] || [ -z "$product-slug" ] || [ -z "$product-version" ] || [ -z "$product-file-glob"]; then
    echo -e "ERROR: Improper parameters \n"
    echo -e "\nUSAGE: generate-product-config.sh <PIVNET TOKEN> <PRODUCT SLUG> <PRODUCT VERSION> <FILE GLOB>\n"
fi
