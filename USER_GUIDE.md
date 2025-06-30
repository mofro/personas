# Persona Framework v2.0 User Guide

Complete guide to using the collaborative AI team management system for expert guidance across multiple domains.

## Getting Started

### Framework Activation

**Initial Setup:**
```
"personas on"                    # Activate the framework
"show my teams"                  # List available expert teams  
"list available personas"        # See individual personas
```

**Quick Team Start:**
```
"activate security team"         # Start with Security Architecture Review Team
"activate frontend team"         # Start with UI/UX Development Team
"activate design strategy team"  # Start with Cross-platform Design Team
```

### Understanding Framework States

**OFF Mode** - Base LLM responses only
- No persona processing overhead
- Framework completely dormant
- One-time availability notification

**MINIMAL Mode** - Essential expertise only  
- Single coordinator persona active
- Reduced context overhead
- Core functionality maintained

**ACTIVE Mode** - Full collaborative system (Default)
- Complete team collaboration enabled
- Context analysis and suggestions active
- Performance monitoring available

**MONITORING Mode** - Enhanced tracking
- Detailed performance metrics collection
- Usage pattern analysis
- Optimization recommendations

## Working with Teams

### Pre-Configured Teams

**Security Architecture Review Team**
- **Members**: Security Specialist, Senior Developer, Project Coordinator
- **Focus**: Authentication, secure coding, vulnerability assessment
- **Activation**: `"activate security team"`
- **Best For**: Security reviews, threat modeling, compliance

**Frontend Development Team** 
- **Members**: UI Designer, UX Designer, Frontend Developer, Project Coordinator
- **Focus**: User interface design, user experience, frontend implementation
- **Activation**: `"activate frontend team"`
- **Best For**: UI/UX design, component architecture, responsive design

**React Full-Stack Development Team**
- **Members**: React Specialist, Senior Developer, UX Strategist, UI Designer, Security Specialist
- **Focus**: End-to-end React application development
- **Activation**: `"activate react team"`
- **Best For**: React projects, web applications, full-stack development

### Team Management Commands

**Team Operations:**
```
"who's on my current team?"      # Display active roster
"show my teams"                  # List all available teams
"activate [team name]"           # Switch to pre-configured team
"deactivate team"               # Return to coordinator only
"clear my team"                 # Remove all personas from roster
```

**Individual Persona Management:**
```
"add @persona_name"             # Add specific expertise to current roster
"remove @persona_name"          # Remove persona from active team
"persona info @security_specialist"  # Get detailed persona information
```

**Custom Team Building:**
```
"create team mobile_dev with @react_specialist @ui_designer @security_specialist"
"save current team as api_development_team"    # Save roster as template
```

## Working with Individual Personas

### Available Personas

**Development Expertise:**
- **@dylan_developer (Dylan Developer)**: Senior developer/architect with system design expertise
- **@johnny_blits (Johnny Blits)**: Lightning/Blits framework specialist for TV applications
- **@lucy_lightning (Lucy Lightning)**: Lightning v2 core framework expert
- **@riley_react (Riley React)**: Pragmatic React specialist who balances best practices with simplicity

**Design Expertise:**
- **@taylor_ten_foot (Taylor Ten-Foot)**: TV interface designer specializing in Lightning framework patterns  
- **@uma_ux (Uma UX)**: UX designer focused on 10-foot UI experiences and TV usability
- **@dave_design (Dave Design)**: Cross-platform UX/UI strategist with strong design opinions

**Security Expertise:**
- **@samantha_security (Samantha Security)**: Application security expert focused on authentication and secure coding

### Addressing Personas

**Direct Engagement:**
```
@johnny_blits How should I structure this Blits component?
@samantha_security Review this authentication flow for vulnerabilities.
@dave_design What's wrong with this user interface approach?
```

**Natural Topic Routing:**
Ask domain-specific questions and the framework will automatically suggest relevant personas:
- "How do I secure user tokens?" → Suggests @samantha_security
- "What's the best TV navigation pattern?" → Suggests @johnny_blits or @taylor_ten_foot
- "Should I use React for this project?" → Suggests @riley_react

## Advanced Features

### Discovery and Suggestions

**Context-Aware Recommendations:**
```
"suggest personas for this question"    # Get recommendations for current context
"enable discovery"                      # Turn on automatic suggestions
"disable discovery"                     # Turn off auto-suggestions
"scan for new personas"                # Refresh available persona pool
```

**Example Discovery Flow:**
```
You: "I need to implement OAuth authentication"
Framework: 💡 Based on your authentication question, consider:
- Adding @samantha_security (security expertise)
- Activating security review team (comprehensive analysis)
Add with: "add security specialist" or "activate security team"
```

### Primary Voice System

**How Team Collaboration Works:**
- **Single Unified Response**: One persona speaks for the team, incorporating all expertise
- **Response Attribution**: Tags show which expertise contributed: `[SS]` = Security Specialist, `[BD]` = Blits Developer
- **Natural Handoffs**: Primary voice shifts when topics move outside current expertise
- **Optimistic Skepticism**: Framework challenges premises before providing solutions

**Example Collaborative Response:**
```
[RILEY_REACT] Before we jump into implementation, what specific problem does this solve?

Looking at this React component pattern... [SAMANTHA_SECURITY] we need to consider how props validation affects security, and [UMA_UX] the user experience implications of this state management approach.

[RILEY_REACT] Overall recommendation: simpler state management would serve your goals better.
```

## Performance Management

### Monitoring Framework Impact

**Current Session Metrics:**
```
"show performance metrics"

📊 Session Performance
Active Team: React Development Team (6 personas)
Questions: 15 (12 with personas, 3 without)
Response Length: +85% vs base LLM
Estimated Overhead: ~20-25% context usage
User Engagement: High (active command usage)
```

**Historical Analysis:**
```
"metrics summary"

📈 Usage Summary (Last 30 Days)
Most Used: @dylan_developer (89%), @samantha_security (67%)
Least Used: @database_expert (12%)
Average Response Length: +75% vs base LLM

💡 Optimization Suggestions:
- Consider removing unused personas
- Current team size effective for complex projects
```

**Performance Controls:**
```
"minimal persona mode"          # Reduce to essential expertise only
"monitoring mode"               # Enable detailed performance tracking  
"personas off"                  # Return to base LLM responses
```

### Optimization Strategies

**Team Size Guidelines:**
- **2-3 personas**: Routine questions, focused expertise
- **4-5 personas**: Complex projects, multiple domains  
- **6+ personas**: Comprehensive analysis, major architectural decisions

**Performance Tips:**
- Use `"minimal mode"` for simple questions
- Monitor metrics and remove unused personas
- Leverage team templates for recurring workflows
- Consider framework impact vs response quality trade-offs

## Platform-Specific Features

### Claude Projects
- **Team Persistence**: Active rosters maintained across conversations
- **Artifact Storage**: Performance metrics and team configurations saved
- **Document Analysis**: Upload files for persona team analysis

### VS Code/Copilot
- **Workspace Integration**: Personas understand project context
- **Development Workflow**: Integrated with coding tasks and file analysis
- **Extension Recommendations**: Personas suggest relevant VS Code extensions

### ChatGPT  
- **Custom GPT Configurations**: Pre-configured persona teams
- **Web Browsing**: Teams can research current information
- **Code Execution**: Technical validation of recommendations

### Google Gemini
- **Multimodal Input**: Analyze screenshots and diagrams
- **Workspace Integration**: Access Google Docs/Sheets context
- **Real-time Information**: Up-to-date data for team analysis

## Best Practices

### Effective Team Usage

**Start Small, Scale Up:**
1. Begin with coordinator persona only
2. Add expertise as questions become more complex
3. Use discovery suggestions rather than pre-loading large teams
4. Monitor performance impact and adjust accordingly

**Leverage Team Templates:**
- Use pre-configured teams for common workflows
- Save successful custom combinations as templates
- Share effective team compositions across projects

**Performance Awareness:**
- Monitor response length vs value trade-offs
- Use minimal mode for routine questions
- Turn off framework for simple tasks
- Regularly review usage metrics and optimize

### Collaboration Optimization

**Natural Interaction:**
- Let the framework suggest personas rather than manually managing large rosters
- Use direct addressing (`@persona_name`) for expertise handoffs
- Trust the primary voice system for unified responses
- Provide feedback to improve suggestion accuracy

**Quality Focus:**
- Challenge the framework's assumptions (it expects this!)
- Ask clarifying questions about expertise boundaries
- Request specific persona input when needed: "What does the security specialist think?"
- Use performance metrics to validate collaboration effectiveness

## Troubleshooting

### Common Issues

**Framework Not Responding to Commands:**
- Ensure framework is activated: `"personas on"`
- Check available personas: `"list available personas"`
- Verify team exists: `"show my teams"`

**Personas Not Collaborating Effectively:**
- Try smaller team size for clearer responses
- Use direct addressing: `@persona_name`
- Request specific collaboration: `"get input from security and UX perspectives"`

**Performance Issues:**
- Switch to minimal mode: `"minimal persona mode"`
- Check current overhead: `"show performance metrics"`
- Deactivate unused personas: `"remove @persona_name"`

**Inconsistent Behavior:**
- Reinitialize framework: `"personas off"` then `"personas on"`
- Clear and rebuild team: `"clear team"` then rebuild
- Check for outdated schema files

### Getting Help

**Framework Status:**
- `"framework status"` - Current state and active components
- `"show performance metrics"` - Resource usage and recommendations  
- `"list available personas"` - All discoverable expertise
- `"show my teams"` - Pre-configured team options

**Support Commands:**
- `"explain current team"` - Detailed roster analysis
- `"why this suggestion?"` - Discovery logic explanation
- `"optimize my setup"` - Performance improvement recommendations

---

The Persona Framework v2.0 transforms AI assistance from individual consultations into true collaborative team intelligence. Start with simple team activation and gradually explore advanced features as you become comfortable with the system.