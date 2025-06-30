# Persona Framework

This tool allows you to use multiple AI personas in your development workflow, providing specialized expertise across different domains.

## Installation

1. Make sure the framework directory / files are in your project directory:
   - `persona-framework/Persona_Framework_Implementation_Guide.md` - The main implementation docs
   - `persona-framework/config/*` - The persona framework configuration files
   - `/persona-framework/personas/*` - The persona catalog

2. Initialize the framework within AI Workbench (if required by your setup) - See the `Persona_Framework_Implementation_Guide.md` for detailed instructions.

## Usage

The following commands are available:
- `@<persona_name>` - Address a specific persona (when personas are initialized)

## Persona Schema

Persona schemas are stored in the `/personas` directory as JSON files. Each schema defines:

- Persona name and display name
- Role and expertise areas
- Collaboration preferences
- Behavioral rules
- Knowledge base references

## Adding New Personas

To add a new persona:

1. Create a JSON schema file in the `/personas` directory
2. Reinitialize the framework to include the new persona

## Journal Artifacts

The framework can store artifacts in the `/journal` directory for later reference.
