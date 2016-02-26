DOWNLOADER_OPTIONS  = --output-directory bin/output
DOWNLOADER_OPTIONS += --cache-directory bin/cache
DOWNLOADER_OPTIONS += --product-regex "function[.][a-zA-Z0-9_-]+[.]php"
DOWNLOADER_OPTIONS += --product-text-property "name:h1"
DOWNLOADER_OPTIONS += --product-text-property "prototype:div.methodsynopsis.dc-description:/[\\t\\r\\n ]+/ /"
DOWNLOADER_OPTIONS += --product-html-property "parameters:div.refsect1.parameters>p>dl:/[\\t\\r\\n ]+/ /"
DOWNLOADER_OPTIONS += --product-text-property "ret:div.refsect1.returnvalues>p:/[\\t\\r\\n ]+/ /"

JSON_FILES  = bin/array.json
JSON_FILES += bin/var.json
JSON_FILES += bin/imap.json
JSON_FILES += bin/datetime.json
JSON_FILES += bin/info.json
JSON_FILES += bin/strings.json
JSON_FILES += bin/mbstring.json
JSON_FILES += bin/pcre.json
JSON_FILES += bin/iconv.json
JSON_FILES += bin/math.json
JSON_FILES += bin/url.json
JSON_FILES += bin/filesystem.json

build: $(JSON_FILES)
	neko bin/convertor.n
	haxelib run refactor replaceInFile ../library/php/ImapNatives.hx "/:Resource/:ImapStream/"
	haxelib run refactor replaceInFile ../library/php/ImapNatives.hx "/: Resource/: ImapStream/"
	
bin/array.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.array.php" \
		--output-json-file bin/array.json

bin/var.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.var.php" \
		--output-json-file bin/var.json

bin/imap.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.imap.php" \
		--output-json-file bin/imap.json

bin/datetime.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.datetime.php" \
		--output-json-file bin/datetime.json

bin/info.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.info.php" \
		--output-json-file bin/info.json

bin/strings.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.strings.php" \
		--output-json-file bin/strings.json

bin/mbstring.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.mbstring.php" \
		--output-json-file bin/mbstring.json

bin/pcre.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.pcre.php" \
		--output-json-file bin/pcre.json

bin/iconv.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/book.iconv.php" \
		--output-json-file bin/iconv.json

bin/math.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.math.php" \
		--output-json-file bin/math.json

bin/url.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.url.php" \
		--output-json-file bin/url.json

bin/filesystem.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.filesystem.php" \
		--output-json-file bin/filesystem.json
