# Output binary name
BINARY_NAME=./bin/llvm-slicer

# Check if the bin directory exists and create it if it doesn't
create_bin:
	@mkdir -p ./bin

# Build the Go program
build: create_bin
	go build -o $(BINARY_NAME) ./src

# Clean up the binary
clean:
	@rm -f $(BINARY_NAME)
