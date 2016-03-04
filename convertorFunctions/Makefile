DOWNLOADER_OPTIONS  = --output-directory bin/output
DOWNLOADER_OPTIONS += --cache-directory bin/cache
DOWNLOADER_OPTIONS += --product-regex "function[.][a-zA-Z0-9_-]+[.]php"
DOWNLOADER_OPTIONS += --product-text-property "name:h1"
DOWNLOADER_OPTIONS += --product-text-property "prototype:div.methodsynopsis.dc-description:/[\\t\\r\\n ]+/ /"
DOWNLOADER_OPTIONS += --product-html-property "parameters:div.refsect1.parameters>p>dl:/[\\t\\r\\n ]+/ /"
DOWNLOADER_OPTIONS += --product-text-property "ret:div.refsect1.returnvalues>p:/[\\t\\r\\n ]+/ /"

CONVERTOR = neko bin/convertor.n
DEF_PARAMS_FIXER = neko ../defparamsfixer/bin/defparamsfixer.n

OUT_DIR = ../library

TARGET_FILES  = $(OUT_DIR)/php/VarNatives.hx
TARGET_FILES += $(OUT_DIR)/php/ArrayNatives.hx
TARGET_FILES += $(OUT_DIR)/php/ImapNatives.hx
TARGET_FILES += $(OUT_DIR)/php/DatetimeNatives.hx
TARGET_FILES += $(OUT_DIR)/php/InfoNatives.hx
TARGET_FILES += $(OUT_DIR)/php/StringsNatives.hx
TARGET_FILES += $(OUT_DIR)/php/MbstringNatives.hx
TARGET_FILES += $(OUT_DIR)/php/PcreNatives.hx
TARGET_FILES += $(OUT_DIR)/php/IconvNatives.hx
TARGET_FILES += $(OUT_DIR)/php/MathNatives.hx
TARGET_FILES += $(OUT_DIR)/php/UrlNatives.hx
TARGET_FILES += $(OUT_DIR)/php/FilesystemNatives.hx
TARGET_FILES += $(OUT_DIR)/php/OutcontrolNatives.hx
TARGET_FILES += $(OUT_DIR)/php/MiscNatives.hx
TARGET_FILES += $(OUT_DIR)/php/CtypeNatives.hx
TARGET_FILES += $(OUT_DIR)/php/JsonNatives.hx
TARGET_FILES += $(OUT_DIR)/php/FileinfoNatives.hx
TARGET_FILES += $(OUT_DIR)/php/FilterNatives.hx
TARGET_FILES += $(OUT_DIR)/php/HashNatives.hx
TARGET_FILES += $(OUT_DIR)/php/FunchandNatives.hx
TARGET_FILES += $(OUT_DIR)/php/ImageNatives.hx

build: $(TARGET_FILES)

$(OUT_DIR)/php/VarNatives.hx: bin/var.json
	$(CONVERTOR) $< php.VarNatives $(OUT_DIR)
	
$(OUT_DIR)/php/ArrayNatives.hx: bin/array.json
	$(CONVERTOR) $< php.ArrayNatives $(OUT_DIR)

$(OUT_DIR)/php/ImapNatives.hx: bin/imap.json
	$(CONVERTOR) $< php.ImapNatives $(OUT_DIR) "import php.imap.*"
	haxelib run refactor replaceInFile $@ "/:Resource/:ImapStream/"
	haxelib run refactor replaceInFile $@ "/: Resource/: ImapStream/"

$(OUT_DIR)/php/DatetimeNatives.hx: bin/datetime.json
	$(CONVERTOR) $< php.DatetimeNatives $(OUT_DIR)

$(OUT_DIR)/php/InfoNatives.hx: bin/info.json
	$(CONVERTOR) $< php.InfoNatives $(OUT_DIR)

$(OUT_DIR)/php/StringsNatives.hx: bin/strings.json
	$(CONVERTOR) $< php.StringsNatives $(OUT_DIR)

$(OUT_DIR)/php/MbstringNatives.hx: bin/mbstring.json
	$(CONVERTOR) $< php.MbstringNatives $(OUT_DIR)

$(OUT_DIR)/php/PcreNatives.hx: bin/pcre.json
	$(CONVERTOR) $< php.PcreNatives $(OUT_DIR)

$(OUT_DIR)/php/IconvNatives.hx: bin/iconv.json
	$(CONVERTOR) $< php.IconvNatives $(OUT_DIR)

$(OUT_DIR)/php/MathNatives.hx: bin/math.json
	$(CONVERTOR) $< php.MathNatives $(OUT_DIR)

$(OUT_DIR)/php/UrlNatives.hx: bin/url.json
	$(CONVERTOR) $< php.UrlNatives $(OUT_DIR)

$(OUT_DIR)/php/FilesystemNatives.hx: bin/filesystem.json
	$(CONVERTOR) $< php.FilesystemNatives $(OUT_DIR)

$(OUT_DIR)/php/OutcontrolNatives.hx: bin/outcontrol.json
	$(CONVERTOR) $< php.OutcontrolNatives $(OUT_DIR)

$(OUT_DIR)/php/MiscNatives.hx: bin/misc.json
	$(CONVERTOR) $< php.MiscNatives $(OUT_DIR)

$(OUT_DIR)/php/CtypeNatives.hx: bin/ctype.json
	$(CONVERTOR) $< php.CtypeNatives $(OUT_DIR)

$(OUT_DIR)/php/JsonNatives.hx: bin/json.json
	$(CONVERTOR) $< php.JsonNatives $(OUT_DIR)

$(OUT_DIR)/php/FileinfoNatives.hx: bin/fileinfo.json
	$(CONVERTOR) $< php.FileinfoNatives $(OUT_DIR)
	$(DEF_PARAMS_FIXER) $@

$(OUT_DIR)/php/FilterNatives.hx: bin/filter.json
	$(CONVERTOR) $< php.FilterNatives $(OUT_DIR)
	$(DEF_PARAMS_FIXER) $@

$(OUT_DIR)/php/HashNatives.hx: bin/hash.json
	$(CONVERTOR) $< php.HashNatives $(OUT_DIR)
	$(DEF_PARAMS_FIXER) $@

$(OUT_DIR)/php/FunchandNatives.hx: bin/funchand.json
	$(CONVERTOR) $< php.FunchandNatives $(OUT_DIR)
	$(DEF_PARAMS_FIXER) $@

$(OUT_DIR)/php/ImageNatives.hx: bin/image.json
	$(CONVERTOR) $< php.ImageNatives $(OUT_DIR)
	$(DEF_PARAMS_FIXER) $@


bin/array.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.array.php" \
		--output-json-file bin/array.json

bin/var.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.var.php" \
		--output-json-file $@

bin/imap.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.imap.php" \
		--output-json-file $@

bin/datetime.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.datetime.php" \
		--output-json-file $@

bin/info.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.info.php" \
		--output-json-file $@

bin/strings.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.strings.php" \
		--output-json-file $@

bin/mbstring.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.mbstring.php" \
		--output-json-file $@

bin/pcre.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.pcre.php" \
		--output-json-file $@

bin/iconv.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/book.iconv.php" \
		--output-json-file $@

bin/math.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.math.php" \
		--output-json-file $@

bin/url.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.url.php" \
		--output-json-file $@

bin/filesystem.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.filesystem.php" \
		--output-json-file $@

bin/outcontrol.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.outcontrol.php" \
		--output-json-file $@

bin/misc.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/book.misc.php" \
		--output-json-file $@

bin/ctype.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.ctype.php" \
		--output-json-file $@

bin/json.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.json.php" \
		--output-json-file $@

bin/fileinfo.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/book.fileinfo.php" \
		--output-json-file $@

bin/filter.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.filter.php" \
		--output-json-file $@

bin/hash.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.hash.php" \
		--output-json-file $@

bin/funchand.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/book.funchand.php" \
		--output-json-file $@

bin/image.json:
	haxelib run downloader $(DOWNLOADER_OPTIONS) \
		--list-url "http://php.net/manual/en/ref.image.php" \
		--output-json-file $@
