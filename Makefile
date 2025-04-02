BUILD_DIR = build
EXECUTABLE = myFem
GENERATE = exec

all:
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake .. && make

fix:
	python fixmesh.py

run: all
	@echo "Génération du maillage..."
	./$(BUILD_DIR)/$(GENERATE) $(C)
	@echo "Réparation du maillage..."
	python fixmesh.py
	./$(BUILD_DIR)/$(EXECUTABLE)

clean:
	rm -rf $(BUILD_DIR)
