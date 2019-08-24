#!/usr/bin/env bash

. onion.urls



validate_urls () {
	# validates urls in list

	for url in "${urls[@]}"; do

		if [[ $( curl --socks5-hostname localhost:9150 "$url" ) ]]; then
			printf "$url [good]"
}

save_urls () {
	# saves current urls to onion.urls
	printf "urls=(${urls[@]})" > onion.urls
}


