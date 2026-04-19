# Install pre-commit hooks using 'prek'
install-pre-commit-hooks:
    @echo "Installing pre-commit hooks using prek..."
    @prek install
    @echo "Pre-commit hooks installed."

# Update pre-commit hooks using 'prek'
pre-commit-update:
    @echo "Updating pre-commit hooks using prek..."
    @prek auto-update
    @echo "Pre-commit hooks updated."

# Run the Open Source Vulnerability scanner
vulnerability-scan:
    @echo "Running Open Source Vulnerability scanner..."
    @osv-scanner scan source -r .
    @echo "Vulnerability scan complete."
