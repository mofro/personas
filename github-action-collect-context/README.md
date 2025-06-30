# Persona Framework Context Collection GitHub Action

This repository contains a GitHub Actions workflow to collect all files needed to "exercise" or run the Persona Framework into a single, flat, deployable zip file.

## Usage

1. The workflow is defined in [`.github/workflows/collect-context.yml`](.github/workflows/collect-context.yml).
2. It runs automatically on push to `main` or when a release is published.
3. The workflow:
   - Collects all files from `config/`, `personas/`, and `teams/` (flattened, no subdirectories)
   - Copies main documentation files
   - Zips them into `deployable.zip`
   - Uploads the zip as a downloadable artifact

## Downloading the Artifact

After the workflow runs:

1. Go to the **Actions** tab in your GitHub repository.
2. Select the relevant workflow run.
3. Download the `deployable-artifact` from the Artifacts section.

## Local Collection (optional)

You can also use [`scripts/collect_context.sh`](scripts/collect_context.sh) to collect files locally.

---

**No Node.js dependencies or custom JavaScript actions are required.**