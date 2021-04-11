#!/bin/sh

THEMES=(
	'Belafonte Day'
	'Chalice'
	'Github'
	'Material'
	'Novel'
	'PencilLight'
	'Solarized Light'
	'Tango Light'
	'Tomorrow'
)

function download_url() {
	local theme="$(echo "$1" | sed -e 's/ /%20/g')"
	echo "https://raw.githubusercontent.com/lysyi3m/macos-terminal-themes/master/themes/${theme}.terminal"
}

for t in "${THEMES[@]}"; do
	curl -sLo "$t.terminal" "$(download_url "$t")"
done
