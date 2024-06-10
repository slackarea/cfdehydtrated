#!/bin/bash
export LEXICON_CLOUDFLARE_USERNAME=${LEXICON_CLOUDFLARE_USERNAME:-"insert_your_cloudflare_username@domain.tld"}
export LEXICON_CLOUDFLARE_TOKEN=${LEXICON_CLOUDFLARE_TOKEN:-"YOUR GLOBAL API KEY HERE"}

. /etc/dheydrated/config

if [ ! -d $BASEDIR/accounts ]; then
   dehydrated --config /etc/dehydrated/config --register --accept-terms
fi

dehydrated --config /etc/dehydrated/config --cron --hook /etc/dehydrated/hook.sh --challenge dns-01