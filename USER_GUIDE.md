# Persona Framework User Guide

The Persona Framework enables collaborative AI assistance with multiple specialized personas working together to provide expert guidance in software development.

## Quick Start

To use the Persona Framework:

1. Navigate to the Persona Framework directory:

   ```bash
   cd "/Users/MGasto000/Code/Persona Framework"
   ```

2. Run the CLI tool:

   ```bash
   ./persona-cli.js init     # Initialize the framework
   ./persona-cli.js team     # List team members
   ./persona-cli.js on       # Enable persona mode
   ./persona-cli.js off      # Disable persona mode
   ```

## Working with Personas

### Available Personas

The following personas are currently available:

- **ui_designer (Taylor Ten-Foot)**: TV interface designer specializing in Lightning framework patterns
- **blits_developer (Johnny Blits)**: Lightning/Blits framework specialist
- **ux_ui_strategist (Dave Design)**: Cross-platform UX/UI expert
- **experienced_developer (Dylan Developer)**: Senior developer/architect
- **lightning_developer (Lucy Lightning)**: Lightning v2 framework specialist
- **ux_designer (Uma UX)**: UX designer for TV interfaces
- **security_specialist (Samantha Security)**: Application security expert
- **xip_developer (Xavier XIP)**: XIP platform specialist

### Addressing Personas

When persona mode is enabled, you can address a specific persona using the @ symbol:

```text
@blits_developer How should I structure this component?
@security_specialist Review this authentication flow.
@ui_designer What's the best way to design this TV menu?
```

If no persona is addressed, the request will be routed to the appropriate persona based on the topic.

## Adding New Personas

To add a new persona:

1. Create a JSON schema file in the `/codebase-specific` directory following the existing schema format
2. Run `./persona-cli.js init` to refresh the persona registry

## Using with AI Workbench

The Persona Framework can be integrated with AI Workbench. For more information, see the `persona-framework.aiw-tool.json` file and follow the AI Workbench documentation for tool registration.

## Journal Artifacts

The framework can store artifacts (notes, code snippets, diagrams) in the `/journal` directory for later reference.

## Primary Voice System

When multiple personas collaborate on a response, they use a tagging system:

```text
[DEVELOPER_CODING_PERSONA] This is a response from the primary persona...
[BD] This input is from the Blits Developer...
[SS] Security input from the Security Specialist...
```

This helps track which persona is providing which parts of the response.
