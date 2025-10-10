#\!/bin/bash

# Install Ruby if not already installed
if \! command -v ruby &> /dev/null; then
    echo "Ruby is not installed. Please install Ruby first."
    echo "On Ubuntu/Debian: sudo apt-get install ruby-full ruby-bundler build-essential"
    echo "On macOS: brew install ruby"
    exit 1
fi

# Install bundler if not already installed
if \! command -v bundle &> /dev/null; then
    echo "Installing bundler..."
    gem install bundler
fi

# Install dependencies
echo "Installing Jekyll dependencies..."
bundle install --path vendor/bundle

# Clean any previous builds
echo "Cleaning previous builds..."
bundle exec jekyll clean

# Build the site
echo "Building the site..."
bundle exec jekyll build

# Serve the site
echo "Starting Jekyll server..."
echo "Your resume will be available at: http://localhost:4000"
bundle exec jekyll serve --host 0.0.0.0 --port 4000
