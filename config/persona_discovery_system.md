# Persona Discovery & Activation Management System

## Core Concepts

### Persona States
- **Available Pool**: All personas discovered in the project/workspace
- **Active Roster**: Currently engaged personas for this session
- **Suggested**: Context-based recommendations (not auto-activated)
- **Dormant**: Available but not currently active or suggested

### Persistence Strategy
- **Platform-dependent**: Use available persistence mechanisms
  - Claude Projects: Store in project artifacts
  - VS Code: Store in workspace settings
  - ChatGPT: Custom GPT knowledge base
  - Fallback: Session-only (re-initialize each conversation)

## Discovery Operations

### Persona Pool Management
```
/personas scan              # Rebuild available pool from files
/personas list              # Show all available personas
/personas info @persona     # Show detailed persona information
```

### Active Roster Management
```
/team show                  # Display current active roster
/team add @persona          # Activate specific persona
/team remove @persona       # Deactivate specific persona
/team clear                 # Deactivate all personas
/team reset                 # Return to default roster
```

### Auto-Discovery Controls
```
/discover on                # Enable context-based suggestions
/discover off               # Disable auto-suggestions
/discover suggest           # Show current suggestions for context
```

## Discovery Logic

### Context Analysis for Suggestions
1. **Keyword matching**: Scan user input for expertise-related terms
2. **Domain patterns**: Recognize question types that benefit from specific expertise
3. **Conversation history**: Consider what personas have been valuable recently
4. **Active roster gaps**: Identify missing expertise for current discussion

### Suggestion Triggers
- **Domain shift**: "Now let's talk about security..." → suggest security specialist
- **Complexity increase**: Multi-faceted questions → suggest relevant team members
- **Explicit need**: "I need help with X" → suggest X specialists
- **Follow-up depth**: Deep dive into topic → suggest domain experts

### Suggestion Presentation
```
[SYSTEM] Based on your question about authentication flows, 
I suggest activating @security_specialist. Add with `/team add @security_specialist`

Current team: @project_coordinator, @backend_developer
Available: @security_specialist, @ui_designer, @database_expert
```

## Persistence Patterns

### Claude Projects Implementation
- Store active roster in project artifact: `team_configuration.json`
- Update artifact when roster changes
- Load roster at conversation start

### VS Code Workspace Implementation
- Store in `.vscode/settings.json` under `personas.activeRoster`
- Integrate with workspace switching
- Sync with Copilot context

### ChatGPT Custom GPT Implementation
- Embed default roster in GPT instructions
- Use conversation memory for session changes
- Reset to default roster on new conversations

### Fallback Session-Only
- Track roster in conversation memory
- Display current roster periodically
- Require re-initialization each session

## Team Templates (Future)

### Template Structure
```json
{
  "template_name": "security_review_team",
  "description": "Team for security-focused code reviews",
  "personas": ["security_specialist", "backend_developer", "project_coordinator"],
  "default_primary": "security_specialist",
  "auto_suggest_contexts": ["security", "authentication", "encryption"]
}
```

### Template Operations
```
/templates list             # Show available team templates
/templates load security    # Activate security review team
/templates save my_team     # Save current roster as template
```

## Performance Impact Considerations

### Potential Impacts (Not Yet Measured)
⚠️ **Token Usage**: Each persona adds context overhead - exact impact varies by platform
⚠️ **Response Length**: Collaborative responses may be longer than single-persona responses  
⚠️ **Processing Time**: Multi-persona consultation may increase response generation time
⚠️ **Quota Consumption**: More complex responses may consume user quotas faster

### Framework State Management

#### Persona System States
- **OFF**: No persona processing, base LLM only, availability notification ready
- **MINIMAL**: Essential personas only, reduced context overhead
- **ACTIVE**: Full persona system with selected roster
- **MONITORING**: Active system with performance tracking enabled

#### OFF Mode Behavior
When personas are turned OFF:
- System returns to base LLM responses only
- No background context analysis for persona suggestions
- No persona-specific processing overhead
- One-time notification: "Persona support available - `/personas on` to enable"
- Optional: Display session summary if personas were previously active

### Measurement & Visibility Framework

#### Usage Tracking (When Available)
```
/metrics show               # Display session performance data
/metrics summary           # Show cumulative impact over time
/metrics reset             # Clear tracking data
```

#### Performance Monitoring
- Response length comparison (persona vs non-persona responses)
- Processing time tracking (when platform provides timing data)
- Context utilization estimates
- User satisfaction indicators (explicit feedback)

## Implementation Priorities

### Phase 1: Basic Discovery + Performance Awareness
- [ ] Persona pool scanning from files
- [ ] Simple active roster management
- [ ] Manual activation/deactivation commands
- [ ] OFF/MINIMAL/ACTIVE state management
- [ ] Basic performance impact warnings

### Phase 2: Smart Suggestions + Monitoring
- [ ] Context analysis for suggestions
- [ ] Suggestion presentation without auto-activation
- [ ] Discovery on/off controls
- [ ] Performance measurement framework (platform-dependent)

### Phase 3: Persistence + Optimization
- [ ] Platform-specific persistence implementation
- [ ] Graceful fallback to session-only
- [ ] Cross-session roster continuity
- [ ] Performance-based roster recommendations

### Phase 4: Advanced Features + Intelligence
- [ ] Team templates system
- [ ] Usage pattern learning
- [ ] Advanced context analysis
- [ ] Predictive performance optimization

## User Experience Flow

### New User Experience
1. Framework scans for available personas
2. Suggests starting with default roster (Project Coordinator + 1-2 others)
3. Shows how to discover and activate additional personas
4. Learns from user's activation patterns

### Ongoing Usage
1. User asks question
2. System analyzes context for persona suggestions
3. If suggestions available, presents them (doesn't auto-activate)
4. User can accept suggestions or continue with current roster
5. Active roster persists across conversations (when possible)

### Discovery Commands
Users can always ask:
- "Who's on my team?"
- "What personas are available?"
- "Who might help with this topic?"
- "Add a security expert to the team"