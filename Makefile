BUILD_DIR = build
SOURCES = lox/TokenType.java \
			lox/Token.java \
			lox/Scanner.java \
			lox/Lox.java
CLASSES = $(SOURCES:lox/%.java=$(BUILD_DIR)/lox/%.class)

run: $(BUILD_DIR) $(CLASSES)
	java -cp $(BUILD_DIR) lox.Lox

$(BUILD_DIR)/lox/%.class: lox/%.java
	javac -d $(BUILD_DIR) $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)/lox

clean:
	rm -rf $(BUILD_DIR)

.PHONY: run clean