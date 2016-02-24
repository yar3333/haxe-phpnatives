DOWNLOADER_OPTIONS  = --output-directory bin/output
DOWNLOADER_OPTIONS += --cache-directory bin/cache
DOWNLOADER_OPTIONS += --product-regex "function[.][a-zA-Z0-9_-]+[.]php"
DOWNLOADER_OPTIONS += --product-text-property "name:h1"
DOWNLOADER_OPTIONS += --product-text-property "prototype:div.methodsynopsis.dc-description:/[\\t\\r\\n ]+/ /"
DOWNLOADER_OPTIONS += --product-html-property "parameters:div.refsect1.parameters>p>dl:/[\\t\\r\\n ]+/ /"
DOWNLOADER_OPTIONS += --product-text-property "ret:div.refsect1.returnvalues>p:/[\\t\\r\\n ]+/ /"

../library/php/Native.php: bin/array.json bin/var.json bin/imap.json
	neko bin/convertor.n

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
