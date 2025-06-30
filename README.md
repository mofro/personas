# Persona Framework v2.0

A collaborative AI team management system that enables multiple specialized personas to work together seamlessly, providing expert guidance across different domains through unified team intelligence.

## What This Framework Does

Transform AI assistance from individual expert consultation into **true collaborative team intelligence** with:

- **🤝 Team-Based Collaboration**: Pre-configured expert teams that work together seamlessly
- **🎯 Primary Voice System**: Unified responses incorporating multiple expertise areas
- **🧠 Optimistic Skepticism**: Challenges premises before providing solutions
- **⚡ Dynamic State Management**: Full on/off control with performance optimization
- **🔍 Context-Aware Discovery**: Intelligent suggestions for expertise activation
- **📊 Performance Monitoring**: Real-time impact measurement and optimization

## Quick Start

### Framework Activation
```
"personas on"                    # Activate the framework
"show my teams"                  # See available expert teams
"activate security team"         # Start with pre-configured team
"who's on my current team?"      # Check active roster
```

### Team Management
```
"add @security_specialist"       # Add individual expertise
"remove @persona_name"           # Remove from current team
"deactivate team"               # Return to coordinator only
"suggest personas for this question"  # Get contextual recommendations
```

### Performance Control
```
"show performance metrics"       # Monitor framework impact
"minimal persona mode"           # Reduce overhead for simple questions
"personas off"                   # Return to base LLM
```

## Framework Structure

```
/config                         # Framework configuration files
├── persona_collaboration_framework.md    # Core collaboration rules
├── persona_interaction_architecture.md   # Addressing and schema specs
├── persona_activation_framework.md       # State management system
└── measurement_framework.md              # Performance monitoring

/personas                       # Individual persona schemas
├── /development               # Development-focused personas
└── /design                   # Design and UX personas

/teams                         # Pre-configured team definitions
├── security_review_team.json
├── frontend_development_team.json
└── react_fullstack_team.json

/journal                       # Session artifacts and conversation logs
```

## Persona Schema Format

Individual personas use the extended v1.1+ schema with collaboration capabilities:

```json
{
  "schema_version": "1.1",
  "persona": {
    "persona_name": "security_specialist",
    "display_name": "SecuritySpecialist", 
    "custom_name": "Samantha Security",
    "role": "Application security expert",
    "expertise": ["token_security", "authentication", "secure_apis"]
  },
  "collaboration": {
    "expertise_scope": ["authentication_security", "api_security"],
    "defers_to": ["project_coordinator"],
    "collaborates_well_with": ["backend_developer", "frontend_developer"],
    "approach_style": "analytical",
    "conflict_style": "evidence"
  }
}
```

## Team Definition Format

Teams combine complementary personas with auto-discovery triggers:

```json
{
  "team": {
    "team_name": "security_review_team",
    "display_name": "Security Review Team",
    "members": ["project_coordinator", "security_specialist", "backend_developer"],
    "default_primary": "security_specialist"
  },
  "activation": {
    "auto_suggest_contexts": ["security", "authentication", "vulnerability"],
    "discovery_priority": "high"
  }
}
```

## Key Features

### Collaborative Intelligence
- **Unified Team Voice**: Single coherent response incorporating multiple expertise areas
- **Seamless Handoffs**: Natural transitions when topics move outside current expertise  
- **Response Attribution**: Clear tagging showing which expertise contributed where
- **Optimistic Skepticism**: Framework challenges premises before providing solutions

### Advanced State Management
- **Framework Modes**: OFF/MINIMAL/ACTIVE/MONITORING for performance control
- **Team Persistence**: Active rosters maintained across conversations (platform-dependent)
- **Context Discovery**: Intelligent suggestions based on question analysis
- **Performance Metrics**: Real-time impact measurement and optimization recommendations

### Platform Compatibility
- **Claude Projects**: Full persistence and artifact storage
- **VS Code/Copilot**: Workspace integration and development workflow
- **ChatGPT**: Custom GPT configurations and web browsing
- **Google Gemini**: Multimodal input and workspace integration

## Implementation

### Basic Setup
1. Upload framework files to your AI platform of choice
2. Initialize with: `"I'd like to activate the Persona Framework v2.0"`
3. Start with: `"show my teams"` to see available configurations
4. Activate expertise: `"activate [team name]"` or `"add @persona_name"`

### Advanced Configuration
1. Create custom personas using the v1.1+ schema format
2. Define team templates for recurring workflows
3. Configure auto-discovery triggers for your domain
4. Monitor performance and optimize team compositions

See `Persona_Framework_Implementation_Guide.md` for detailed platform-specific instructions.

## Performance Management

The framework provides transparent performance impact visibility:

- **Response Length**: Typically +40-110% vs base LLM responses
- **Context Overhead**: ~15-30% additional processing (varies by team size)
- **Quality Enhancement**: Collaborative responses show higher user engagement
- **Optimization**: Built-in recommendations for team size and composition

Use `"show performance metrics"` to monitor impact and `"minimal mode"` to reduce overhead when needed.

## Contributing

This framework evolves based on real usage patterns. Contributions welcome for:

- New persona schemas for specialized domains
- Team definition templates for common workflows  
- Platform-specific implementation improvements
- Performance optimization strategies

## Framework Philosophy

**Collaborative Over Individual**: Multiple perspectives create better solutions than single expert advice.

**Transparent Performance**: Users should understand and control the performance impact of their choices.

**Adaptive Intelligence**: Framework learns and suggests optimizations based on actual usage patterns.

**Domain Agnostic**: Core collaboration patterns work across software development, design, security, and beyond.

---

**Transform your AI assistance from expert consultation to collaborative team intelligence.**