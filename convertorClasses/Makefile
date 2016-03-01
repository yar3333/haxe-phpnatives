DOWNLOADER_OPTIONS  = --output-directory bin/output
DOWNLOADER_OPTIONS += --cache-directory bin/cache
DOWNLOADER_OPTIONS += --product-regex "class[.][a-zA-Z0-9_]+[.]php"
DOWNLOADER_OPTIONS += --product-url "http://php.net/manual/en/class.datetime.php"
DOWNLOADER_OPTIONS += --product-text-property "name:h1"
DOWNLOADER_OPTIONS += --product-html-property "body:.classsynopsis"

JSON_FILES  = bin/calendar.json
#JSON_FILES += bin/var.json

build: $(JSON_FILES)
	neko bin/convertor.n
	
bin/calendar.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/refs.calendar.php" \
		--output-json-file bin/calendar.json
