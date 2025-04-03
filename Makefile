BUILD_DIR = build
EXECUTABLE = myFem
GENERATE = exec
C ?= 4

all:
ifeq ($(OS),Windows_NT)
	if not exist $(BUILD_DIR) mkdir $(BUILD_DIR)
else
	mkdir -p $(BUILD_DIR)
endif
	cd $(BUILD_DIR) && cmake .. && make


solve:
	
	./$(BUILD_DIR)/$(EXECUTABLE)
	@echo "Simulation terminée." 


run: all

ifeq ($(C),4)
	@echo "Résolution du système..."
	./$(BUILD_DIR)/$(EXECUTABLE) $(C)
	@echo "Simulation terminée."
else
	@echo "Génération du maillage..."
	./$(BUILD_DIR)/$(GENERATE) $(C)
	@echo "Réparation du maillage..."
	python fixmesh.py 
	@echo "Résolution du système..."
	./$(BUILD_DIR)/$(EXECUTABLE) $(C)
	@echo "Simulation terminée."
endif

clean:
	rm -rf $(BUILD_DIR) 
	rm -f data/elasticity.txt
	rm -f data/fixed.txt
