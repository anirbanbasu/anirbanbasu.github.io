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

# Serve the website locally using Zola
serve:
    @echo "Serving the website locally using Zola..."
    @zola serve
    @echo "Website is being served at http://127.0.0.1:1111"

# Update any theme submodules (if applicable)
update-theme-submodules:
    @echo "Updating theme submodules. This will clean and reset all submodules to ensure they are up to date with their remote repositories."
    @git submodule foreach --recursive git clean -fdx
    @git submodule foreach --recursive git reset --hard
    @git submodule update --init --recursive --remote
    @echo "Theme submodules updated."

# Run the Open Source Vulnerability scanner
vulnerability-scan:
    @echo "Running Open Source Vulnerability scanner..."
    @osv-scanner scan source -r .
    @echo "Vulnerability scan complete."

# Generate and push a lightweight CalVer tag (without creating a release) for the latest commit
calver-tag:
    @echo "Generating lightweight CalVer tag for the latest commit..."
    @git tag -s -a v$(date +%Y.%m.%d)
    @git push origin v$(date +%Y.%m.%d)
    @echo "Lightweight tag v$(date +%Y.%m.%d) generated and pushed."
