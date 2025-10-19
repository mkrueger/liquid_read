username := "SYSOP"
password := "SYSOP"

# Build for all runtime versions
build:
    pplc --runtime 300
    pplc --runtime 330
    pplc --runtime 340
    pplc --runtime 400

# Build and run with icboard
run:
    icboard --runppe "{{username}};;pwrd:{{password}};PPE:target/icboard/lread.ppe"

# Clean build artifacts
clean:
    rm -rf target
