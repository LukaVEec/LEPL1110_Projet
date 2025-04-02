BUILD_DIR = build
EXECUTABLE = myFem
GENERATE = exec

all:
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake .. && make

mesh: 


run: all
ifeq ($(PRINT),0)
	@echo "Génération du maillage..."
	./$(BUILD_DIR)/$(GENERATE) $(C) > /dev/null 2>&1
	@echo "Réparation du maillage..."
	python fixmesh.py > /dev/null 2>&1
	@echo "Résolution du système..."
	./$(BUILD_DIR)/$(EXECUTABLE) > /dev/null 2>&1
	@echo "Simulation terminée."
else 
	./$(BUILD_DIR)/$(GENERATE) $(C)
	python fixmesh.py
	./$(BUILD_DIR)/$(EXECUTABLE)
endif

clean:
	rm -rf $(BUILD_DIR) 
	rm -f data/elasticity.txt
	rm -f data/fixed.txt
