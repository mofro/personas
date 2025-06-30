name: Deploy Application

on:
  push:
    branches:
      - main  # Change this to your default branch if necessary
  workflow_dispatch:  # Allows manual triggering of the workflow

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      # - name: Set up Node.js (if applicable)
      #   uses: actions/setup-node@v2
      #   with:
      #     node-version: '14'  # Specify your Node.js version

      # - name: Install dependencies (if applicable)
      #   run: |
      #     npm install  # Change this to your package manager if necessary

      - name: Create deployable directory
        run: |
          mkdir -p deploy
          find config -type f -exec cp {} deploy/ \;
          find personas -type f -exec cp {} deploy/ \;
          find teams -type f -exec cp {} deploy/ \;
          cp README.md deploy/ || true
          cp USER_GUIDE.md deploy/ || true
          cp Persona_Framework_Implementation_Guide.md deploy/ || true

      - name: Zip deployable directory
        run: |
          cd deploy
          zip -r ../deployable.zip .  # Create a zip file of the deployable directory

      - name: Upload deployable package
        uses: actions/upload-artifact@v2
        with:
          name: deployable-package
          path: deployable.zip