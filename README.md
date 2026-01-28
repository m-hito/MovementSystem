# MovementSystem
Context: this is a Is-a and has-a composition modular movement system which extends to diffrent type of movement required for NPCs, it can handle 100s of npc without causing lag each npc can have their own walkspeed/patrol range or just data components. Ai movement system which can fit in other systems a monolith style movement system.

Folder Structure:
ServerStorage
    |---- Movement (ModuleScript)
            |----- Noob (ModuleScript)
            |----- (Add more child class if u want) (ModuleScript) 

Workspace
      |----- World ( Folder)
              |----- Live (Folder)
                      |---- BossNpc (Model) 
                      |        |---- MovementSetup ( Script ) 
                      |---- Npc1 (Model)
                      |---- Npc2 (Model)
                      |---- Npc3 (Model) 
                      |---- (try adding as much npc as u want)
                      
