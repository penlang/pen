# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_LOC=bin
PEN_BINARY_NAME=pen
IPEN_BINARY_NAME=ipen
MONKEY_BINARY_NAME=monkey

all: test build
build: 
	$(GOBUILD) -o ./$(BINARY_LOC)/$(PEN_BINARY_NAME) -v ./cmd/$(PEN_BINARY_NAME)/...
	$(GOBUILD) -o ./$(BINARY_LOC)/$(IPEN_BINARY_NAME) -v ./cmd/$(IPEN_BINARY_NAME)/...
	$(GOBUILD) -o ./$(BINARY_LOC)/$(MONKEY_BINARY_NAME) -v ./cmd/$(MONKEY_BINARY_NAME)/...
test: 
	$(GOTEST) -v ./...
clean: 
	$(GOCLEAN)
	rm -rf $(BINARY_LOC)


