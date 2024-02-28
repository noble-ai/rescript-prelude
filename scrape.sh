#Extract all lines prefixed with ///doc/ into markdown files parallel to the source
#Also removes leading prefixes from the extracted lines
#Usage: ./scrape.sh
#Requires: find, grep, sed, sh

find ./src -name "*.res" -type f -exec sh -c 'mkdir -p "$(dirname "./docs/${1%.*}.md")"; touch "./docs/${1%.*}.md"; grep "///doc/" "$1" | sed -E "s/^.*\/\/\/doc\/\s?//" > "./docs/${1%.*}.md"' _ {} \;
