# Stopwatch/Timer
A stopwatch plugin for source engine games that support vscript
This plugin is very useful to measure precice timings on a work in progress or existing maps
A **demo** map is included that can be used as a template (**Demo** map only works in csgo)
## Installation
- Place the stopwatch plugin in `Steam\steamapps\common\Counter-Strike Global Offensive\csgo\scripts\vscripts`
- Copy the 5 `logic` entities to your map
- Compile your map
## How to use
- Type in the chat to **activate/deactivate** the timer
- Shoot your weapon to **start/stop** the timer
## Manual Installation
- Create a `logic_script` entity in your map and change the `Name` property to `logic_script` and Entity Scripts to `stopwatch.nut`
- Create and use `logic_eventlistener` to trigger various functions of the plugin (Check the **demo** map for examples)
- Use `Inputs/Outputs` to initiate functions in the plugin (Check the plugin code for more info)
