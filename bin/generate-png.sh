#!/bin/sh

set -eu

cd "$(dirname "$(readlink -f "$0")")/.."

: ${PNG_OPTIMIZER:=oxipng}

find_png_optimizer() {
	# Check the envvar first.
	if which "$PNG_OPTIMIZER" >/dev/null 2>&1 ; then
		echo "$PNG_OPTIMIZER"
		return
	fi
	# Check oxipng.
	if which oxipng >/dev/null 2>&1 ; then
		echo oxipng
		return
	fi
	# Check optipng.
	if which optipng >/dev/null 2>&1 ; then
		echo optipng
		return
	fi
}

# $1: Variant name
# $2: Size
convert_to_png() {
	inkscape --export-filename=png/"$2"/"$1".png --export-width "$2" --export-height="$2" svg/"$1".svg
	"$PNG_OPTIMIZER" png/"$2"/"$1".png
}

# Check arguments.
if [ -z "${1:-}" ] ; then
	echo "Usage: $(basename "$0") {variant_name}" >&2
	exit 1
fi

# Check existence of Inkscape.
if ! which inkscape >/dev/null 2>&1 ; then
	echo '`inkscape` command not found' >&2
	exit 1
fi

PNG_OPTIMIZER="$(find_png_optimizer)"

# Convert SVG to PNGs.
convert_to_png "$1" 256
convert_to_png "$1" 1024
