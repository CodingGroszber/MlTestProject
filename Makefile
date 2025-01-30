# Makefile for MLTestProject

# Initialize the environment
init:
    conda env create -f environment.yml

# Run tests
test:
    pytest tests/

# Format code using black and isort
format:
    black src/
    isort src/

# Clean up temporary files
clean:
    find . -type f -name "*.pyc" -delete
    find . -type d -name "__pycache__" -delete

# Run the training script
train:
    python src/training.py

# Help command to list available targets
help:
    @echo "Available targets:"
    @echo "  init       - Set up the conda environment"
    @echo "  test       - Run tests"
    @echo "  format     - Format code using black and isort"
    @echo "  clean      - Clean up temporary files"
    @echo "  train      - Run the training script"
    @echo "  help       - Show this help message"