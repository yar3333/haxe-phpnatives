DOWNLOADER_OPTIONS  = --output-directory bin/output
DOWNLOADER_OPTIONS += --cache-directory bin/cache
DOWNLOADER_OPTIONS += --product-regex "class[.][a-zA-Z0-9_]+[.]php"
DOWNLOADER_OPTIONS += --product-text-property "name:h1"
DOWNLOADER_OPTIONS += --product-html-property "body:.classsynopsis"

CONVERTOR = neko bin/convertor.n

OUT_DIR = ../library

TARGET_FILES  = $(OUT_DIR)/php/calendar
TARGET_FILES += $(OUT_DIR)/php/xml
TARGET_FILES += $(OUT_DIR)/php/interfaces
TARGET_FILES += $(OUT_DIR)/php/misc
TARGET_FILES += $(OUT_DIR)/php/iterators
TARGET_FILES += $(OUT_DIR)/php/exceptions
TARGET_FILES += $(OUT_DIR)/php/files

#remake_xml: remove_xml $(OUT_DIR)/php/xml
	
#remove_xml:
#	rm -rf $(OUT_DIR)/php/xml

build: $(TARGET_FILES)

$(OUT_DIR)/php/calendar: bin/calendar.json
	$(CONVERTOR) $< php.calendar $(OUT_DIR)

$(OUT_DIR)/php/xml: bin/xml.json
	$(CONVERTOR) $< php.xml $(OUT_DIR)

$(OUT_DIR)/php/interfaces: bin/interfaces.json bin/spl.interfaces.json
	$(CONVERTOR) bin/interfaces.json php.interfaces $(OUT_DIR)
	$(CONVERTOR) bin/spl.interfaces.json php.interfaces $(OUT_DIR)

$(OUT_DIR)/php/misc: bin/spl.misc.json
	$(CONVERTOR) $< php.misc $(OUT_DIR)

$(OUT_DIR)/php/iterators: bin/spl.iterators.json
	$(CONVERTOR) $< php.iterators $(OUT_DIR)

$(OUT_DIR)/php/exceptions: bin/reserved.exceptions.json bin/spl.exceptions.json
	$(CONVERTOR) bin/reserved.exceptions.json php.exceptions $(OUT_DIR)
	$(CONVERTOR) bin/spl.exceptions.json php.exceptions $(OUT_DIR)

bin/calendar.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/refs.calendar.php" \
		--output-json-file $@

$(OUT_DIR)/php/files: bin/spl.files.json
	$(CONVERTOR) $< php.files $(OUT_DIR)

bin/xml.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/refs.xml.php" \
		--output-json-file $@
		
bin/interfaces.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/reserved.interfaces.php" \
		--output-json-file $@
		
bin/spl.misc.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/spl.misc.php" \
		--output-json-file $@

bin/spl.interfaces.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/spl.interfaces.php" \
		--output-json-file $@

bin/spl.iterators.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/spl.iterators.php" \
		--output-json-file $@

bin/reserved.exceptions.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/reserved.exceptions.php" \
		--output-json-file $@

bin/spl.exceptions.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/spl.exceptions.php" \
		--output-json-file $@

bin/spl.files.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/spl.files.php" \
		--output-json-file $@
