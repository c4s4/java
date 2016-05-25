NAME=we-3516
SRC_DIR=src
BUILD_DIR=build
CLASS_DIR=$(BUILD_DIR)/classes
MAIN_CLASS=test.Main

YELLOW=\033[1m\033[93m
CYAN=\033[1m\033[96m
CLEAR=\033[0m

help:
	@echo "$(YELLOW)Help$(CLEAR)"
	@echo "$(CYAN)help$(CLEAR)     Print this help page"
	@echo "$(CYAN)compile$(CLEAR)  Compile source files"
	@echo "$(CYAN)run$(CLEAR)      Run application"
	@echo "$(CYAN)clean$(CLEAR)    Clean generated files"

compile:
	@echo "$(YELLOW)Compiling$(CLEAR)"
	mkdir -p $(CLASS_DIR)
	javac -d $(CLASS_DIR) `find $(SRC_DIR) -name "*.java"`

run: compile
	@echo "$(YELLOW)Running$(CLEAR)"
	java -cp $(CLASS_DIR) $(MAIN_CLASS)

clean:
	@echo "$(YELLOW)Cleaning$(CLEAR)"
	rm -rf $(BUILD_DIR)

