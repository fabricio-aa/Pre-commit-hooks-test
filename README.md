# Pre-commit Hooks Test

This repo provides a basic pre-commit script to ensure files end with a newline.

Pre requisites:
pip install pre-commit
pre-commit install


You can use it in two ways:

Versioned per repo: keep the script in a .git/hooks/pre-commit.
Manual copy: copy the files directly into any repo you want to enforce the rule.

Instructions

Create a script: tools/pre-commit-check.sh (see example in this repo).
Create a file: .git/hooks/pre-commit that calls the script.

Make both files executable:
chmod +x tools/pre-commit-check.sh
chmod +x .git/hooks/pre-commit

The check will run automatically on every commit.
