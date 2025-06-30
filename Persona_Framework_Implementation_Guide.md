# Persona Framework: Implementation Guide

This guide provides instructions for implementing and using the Persona Framework across different AI assistant platforms and applications.

## Table of Contents

1. [Overview of the Persona Framework](#overview-of-the-persona-framework)
2. [Implementation in VS Code with GitHub Copilot](#implementation-in-vs-code-with-github-copilot)
3. [Implementation in Claude (Native & Web Applications)](#implementation-in-claude-native--web-applications)
4. [Implementation in ChatGPT](#implementation-in-chatgpt)
5. [Implementation in Google Gemini](#implementation-in-google-gemini)
6. [Cross-Platform Best Practices](#cross-platform-best-practices)
7. [Troubleshooting](#troubleshooting)

## Overview of the Persona Framework

The Persona Framework enables a collaborative AI assistance system where multiple specialized personas work together to provide expert guidance in software development. The system features:

- **Multiple specialized personas** with defined expertise areas (e.g., Blits Developer, Security Specialist)
- **GitHub-style addressing** to target specific personas (`@persona_name`)
- **Primary voice system** where one persona leads the response with input from others
- **Optimistic skepticism protocol** that challenges premises before solving problems
- **Response tagging** that identifies which persona is contributing to different parts of a response

## Implementation in VS Code with GitHub Copilot

### Setup Process for VS Code

1. **Create a Workspace**:

   ```bash
   mkdir -p MyProject/Persona_Framework/config
   mkdir -p MyProject/Persona_Framework/personas
   ```

2. **Copy Schema Files**:
   - Place the main persona schema files in `Persona_Framework/personas/`
   - Place configuration files in `Persona_Framework/config/`

3. **Create a VS Code Workspace File**:

   ```json
   // MyProject.code-workspace
   {
     "folders": [
       {
         "path": "."
       }
     ],
     "settings": {
       "copilot.conversation.includePaths": ["./Persona_Framework"]
     }
   }
   ```

### Usage with GitHub Copilot

1. **Initialize a Session**:
   - Open the VS Code command palette (Ctrl+Shift+P / Cmd+Shift+P)
   - Type `Copilot: Start Conversation`
   - First message: "I'd like to use the Persona Framework located in ./Persona_Framework"

2. **Addressing Personas**:
   - Direct addressing: `@blits_developer How should I structure this component?`
   - Topic-based routing: "What's the best way to handle TV navigation?" (automatically routes to Blits Developer)

3. **Switching Personas**:
   - Explicit: `@security_specialist Now let's review this authentication code`
   - Implicit: Ask a security-related question to trigger automatic handoff

4. **Customization in VS Code**:
   - Create a `.github/copilot/personas` directory in your project
   - Place your custom persona JSON files there
   - Copilot will automatically load these personas when available in the context

### VS Code-Specific Features

- **Integration with tasks.json**: Run persona-specific tasks through Copilot commands
- **Extension recommendations**: Personas can suggest VS Code extensions based on context
- **Workspace-aware responses**: Personas have access to workspace context for more relevant answers
- **Syntax highlighting**: VS Code can highlight `@persona_name` mentions in markdown files

## Implementation in Claude (Native & Web Applications)

### Setup Process for Claude

1. **Create a New Chat**:
   - Start a new chat with Claude
   - Upload the persona schema files and framework configuration

2. **Initialize the Framework**:

   ```text
   I'd like to use a Persona Framework with multiple AI personas for software development. 
   I've uploaded the schema files. Please load these personas and use them according to the 
   framework specifications when answering my questions.
   ```

### Usage with Claude

1. **Direct Addressing**:
   - `@blits_developer How would you implement focus management in a TV app?`

2. **Conversation Mode**:
   - In Claude's chat interface, the primary persona will respond with tags indicating when other personas contribute
   - Example: "[DEVELOPER_CODING_PERSONA] Let's analyze this from an architectural perspective... [BD] For Lightning/Blits specifically, you'll need to consider..."

3. **Claude-Specific Features**:
   - **Document Analysis**: Upload code files for personas to analyze
   - **Long Context Window**: Include more comprehensive persona definitions
   - **Multiple File Upload**: Include all persona schemas at once

4. **Limitations in Claude**:
   - No persistent workspace context between sessions
   - Need to re-upload schema files for new conversations
   - Claude may need occasional reminders about the persona system

### Implementation Example for Claude

```text
Claude, I'd like you to act as a collection of AI personas according to these schemas 
I've uploaded. When I address a specific persona using @name notation, please respond 
as that persona. Otherwise, use the Developer Coding Persona as the primary voice, 
incorporating input from other personas when relevant using the [BD], [SS], etc. tags.
```

## Implementation in ChatGPT

### Setup Process for ChatGPT

1. **Create a Custom GPT** (with ChatGPT Plus subscription):
   - Name it "Persona Framework"
   - Upload the schema and configuration files as knowledge base
   - Set instructions to implement the persona framework behavior
   - Create a conversation starter that explains the persona system

2. **Use in Regular ChatGPT**:
   - Paste the complete system instructions in your first message
   - Upload the schema files if possible, or paste their content

### Usage in ChatGPT

1. **Initialization**:

   ```text
   I want you to implement a Persona Framework for software development with multiple AI personas. Here are the schema definitions: [paste schemas]. Please follow the persona collaboration framework and respond using the primary voice system with appropriate tagging.
   ```

2. **Addressing and Responses**:
   - Same as other platforms: `@persona_name` for direct addressing
   - For GPTs: Set custom conversation starters for different personas

3. **ChatGPT-Specific Features**:
   - **Web Browsing**: Personas can use web browsing to gather up-to-date information
   - **DALL-E Integration**: Personas can generate visualizations or diagrams
   - **Code Interpreter**: Technical personas can execute and test code examples

4. **Limitations in ChatGPT**:
   - Context window limitations may require condensed persona definitions
   - Custom GPTs may not perfectly implement the collaboration framework
   - Need to occasionally refresh the persona framework rules

## Implementation in Google Gemini

### Setup Process for Gemini

1. **Start a New Conversation**:
   - Upload or paste the persona schema files
   - Provide the framework configuration instructions

2. **Extension Configuration** (when available):
   - Gemini extensions could potentially load these schemas from GitHub repositories
   - Use workspace connections to maintain persistence

### Usage in Gemini

1. **Initialization Command**:

   ```text
   I'm uploading schema files for a Persona Framework. Please implement this system
   where you act as multiple developer personas that I can address using @name notation.
   The primary voice should be Developer Coding Persona unless I specifically address
   another persona.
   ```

2. **Addressing and Collaboration**:
   - Same addressing system: `@persona_name`
   - Responses will include tags to indicate persona contributions

3. **Gemini-Specific Features**:
   - **Multimodal Input**: Analyze screenshots or diagrams for technical feedback
   - **Google Workspace Integration**: Reference content from Google Docs/Sheets
   - **Real-time Information**: Access to more up-to-date information

4. **Limitations in Gemini**:
   - May need more frequent reminders about the persona system
   - Limited file upload capabilities compared to some other platforms
   - Workspace context may be more limited

## Cross-Platform Best Practices

### Persona File Management

1. **Centralized Repository**:
   - Store persona schemas in a GitHub repository
   - Use version control to track changes to personas
   - Create a folder structure:

     ```text
     /personas
       /core
         developer_coding_persona.json
       /domain-specific
         blits_developer.json
         security_specialist.json
         ...
     /config
       persona_collaboration_framework.md
       persona_interaction_architecture.md
     ```

2. **Versioning**:
   - Include version numbers in schema files
   - Document changes in a CHANGELOG.md
   - Use semantic versioning for schema updates

### Consistent Addressing Conventions

1. **Standardized Format**:
   - Always use `@persona_name` format for addressing
   - Maintain consistent snake_case naming for personas
   - Document custom names in a central reference file

2. **Persona Directory**:
   - Create a `persona_directory.md` file listing all available personas
   - Include brief descriptions of each persona's expertise
   - Update when adding new personas

### Cross-Platform Initialization

Create a standardized initialization prompt that works across platforms:

```text
I'd like to implement a Persona Framework for software development assistance.
This framework includes multiple AI personas with specific expertise areas that
collaborate to provide comprehensive guidance.

Key components:
1. Multiple specialized personas (Blits Developer, Security Specialist, etc.)
2. GitHub-style addressing (@persona_name)
3. Primary voice system (Developer Coding Persona is default)
4. Response tagging ([BD], [SS], etc. for contributions)

I've provided the schema files and configuration. Please implement this system
for our conversation.
```

## Troubleshooting

### Common Issues and Solutions

1. **Persona Not Responding**:
   - Explicitly mention the persona again: `@persona_name are you there?`
   - Provide more context related to that persona's expertise
   - Check if the persona schema was properly loaded

2. **Inconsistent Tagging**:
   - Remind the AI: "Please use the tagging system ([BD], [SS], etc.) for clarity"
   - Ask for a "fully tagged response" to see all contributions
   - Reinitialize the framework if needed

3. **Primary Voice Confusion**:
   - Explicitly state: "Developer Coding Persona should be primary unless I address another persona"
   - Use clear handoff language: "Now I'd like to speak with @security_specialist"
   - Reset with: "Let's return to our primary developer persona"

4. **Context Window Limitations**:
   - Use abbreviated persona definitions when needed
   - Focus on core expertise areas rather than complete schemas
   - Periodically remind the AI of the framework principles

### Platform-Specific Troubleshooting

1. **VS Code / GitHub Copilot**:
   - Check that schema files are in the expected locations
   - Verify Copilot has access to the files (check settings)
   - Try restarting the Copilot conversation

2. **Claude**:
   - Re-upload schema files if behavior changes
   - Use more explicit instructions if Claude drifts from the framework
   - Break complex schemas into multiple messages if hitting limits

3. **ChatGPT**:
   - For custom GPTs, edit the instructions if behavior is inconsistent
   - In regular ChatGPT, provide refresher context in longer conversations
   - Use "continue acting as" reminders when needed

4. **Gemini**:
   - More frequent framework reminders may be needed
   - Use numbered lists for complex instructions
   - Explicitly request persona responses when automatic routing fails

---

By following this implementation guide, you can leverage the Persona Framework across multiple AI platforms, providing a consistent collaborative AI assistance experience tailored to your software development needs.
