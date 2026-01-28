MovementSystem
Modular Is-A/Has-A composition system for NPC AI movement. Handles 100s of NPCs without lag—each with custom walkspeed, patrol range, and data components. Fits any game (non-monolithic).

Features
Individual NPC customization (walkspeed, patrol range)
Zero-lag performance (100+ NPCs)
Extensible class system
Server-authoritative movement

Folder Structure
text
ServerStorage
└── Movement (ModuleScript)
    ├── Noob (ModuleScript)        [Base class]
    └── [Add child classes here]   [Patrol, Chase, etc.]
    
Workspace
└── World (Folder)
    └── Live (Folder)
        ├── BossNpc (Model)
        │   └── MovementSetup (Script)
        ├── Npc1 (Model)
        ├── Npc2 (Model)
        ├── Npc3 (Model)
        └── [Scale to 100s...]
Usage
text
1. Paste Movement folder to ServerStorage
2. Add NPCs to Workspace/World/Live  
3. Each NPC auto-loads MovementSetup script
4. Customize via Attributes (WalkSpeed, PatrolRange)
