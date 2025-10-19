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

# Build and create release zip
release: build
    cp FILE_ID.DIZ target/
    cp LICENSE target/
    cp README.md target/
    cd target && zip -r liquid_read.zip FILE_ID.DIZ README.md LICENSE *
    rm target/FILE_ID.DIZ target/README.md target/LICENSE
    echo "Created target/liquid_read.zip"