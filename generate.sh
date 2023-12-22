#!/bin/bash

while true; do
    # Generate a new partner user ID
    partnerUserId=$(cat /dev/urandom | tr -dc 'a-f0-9' | head -c64)

    # Make the API request with the new partner user ID
    curl 'https://api.discord.gx.games/v1/direct-fulfillment' \
        -H 'authority: api.discord.gx.games' \
        -H 'accept: */*' \
        -H 'accept-language: en-GB,en-US;q=0.9,en;q=0.8' \
        -H 'content-type: application/json' \
        -H 'origin: https://www.opera.com' \
        -H 'referer: https://www.opera.com/' \
        -H 'sec-ch-ua: "Opera GX";v="105", "Chromium";v="119", "Not?A_Brand";v="24"' \
        -H 'sec-ch-ua-mobile: ?0' \
        -H 'sec-ch-ua-platform: "macOS"' \
        -H 'sec-fetch-dest: empty' \
        -H 'sec-fetch-mode: cors' \
        -H 'sec-fetch-site: cross-site' \
        -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0' \
        --data-raw '{"partnerUserId":"'"$partnerUserId"'"}' \
        --compressed >> test1.txt
	sleep 1
    # Extract the token and append to ergebnis.csv
done

