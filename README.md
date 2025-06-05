# speedrun-datapack
<p align="center">
<img src="https://res.cloudinary.com/atapas/image/upload/v1632156569/demos/GitHub-Projects_tyxnkl.png" alt="name"/>
<p/>
  
# 👋 Introducing `Speedrun Datapack`
`speedrun-datapack` is a public lightweight Minecraft datapack designed for speedrunners by 9_24 group, with timers, progression tracking, and helpful tools to optimize your runs. 
  
# 🔥 Features
`speedrun-datapack` comes with a bundle of features already. You can do the followings with it,

- Custom scoreboard timer for tracking your run time. Have pause and can work in single player and muliplayer game mode.
- Bossbar progress indicators for major milestones. Blaze rod and ender pearl counters for Nether goal tracking. 100 tree logs for overworld.
- Coordinate broadcast system for structures like bastions and fortresses. Portal coordinates broadcast for easier exit.

# ⚒️ Use Cases
- `speedrun-datapack` Perfect for solo speedruns or speedruns with friends
- Helps track split goals and improve efficiency, help new players understand their goals
- Great tool for stream overlays or practice sessions

# 📦 Compatibility
- Minecraft Java Edition `1.21+`
- Works in both singleplayer and multiplayer worlds

# 🏗️ How to Set up `speedrun-datapack` for Singleplayer world?

1. Download .zip file

2. Paste it to your world folder ./saves/world_name/datapacks/

That's All!!! Now open minecaraft saved world to see the app.

# 📁 Datapack Folder Structure

The datapack follows the standard Minecraft structure, using namespaces to keep functions and data well organized:
```bash
speedrun-tools-datapack/
├── pack.mcmeta
├── data/
│   ├── minecraft/
│   │   └── tags/
│   │       └── function/
│   │           ├── load.json       # Called once when the world loads
│   │           └── tick.json       # Runs every game tick
│   └── speedrun_func/                   # Main namespace for datapack logic
│       ├── function/
│       │   ├── init.mcfunction     # Setup commands (scoreboards, bossbars)
│       │   ├── tick.mcfunction     # Runs every tick, checks goals/progress
│       │   ├── dimension_init.mcfunction # Show bossbar
│       │   ├── dimesnion_tick.mcfunction
│       │   ├── reset.mcfunction          # Reset timer and bossbar
│       │   └── locations/              # Location broadcast functions (with trigger function)
|       │       ├── found_bastion.mcfunction
|       │       ├── found_portal.mcfunction
|       │       ├── found_fortress.mcfunction
|       │       ├── show.mcfunction
|       │       ├── tick.mcfunction
|       │       ├── trigger_show.mcfunction
│       │       └── setup.mcfunction
│       │   └── time/              # Timer pause, resume
|       │       ├── pause.mcfunction
|       │       ├── resume.mcfunction
│       └── advancement/           # Custom advancements
|           ├── entered_nether.json      
|           ├── found_bastion.json      
│           └── found_fortress.json      
├── LICENSE
└── README.md
```
# 🦄 Upcoming Features & Bugs 👾
`speedrun-datapack` has all the potentials to grow further. Here are some of the upcoming features planned(not in any order),

## ✅ Planned Features
- ✔️  Village Timer Bossbar
Show a bossbar timer when a player enters a village — lasts ~10 minutes, then disappears automatically.
- ✔️ Overworld Bossbar Upgrade
Replace basic log-based objectives with more dynamic goals in the Overworld phase.
- ✔️ Clickable Trigger Text
Add clickable text in chat that runs trigger commands (e.g. /trigger show_locations) for better UX.

## 🐞 Known Bugs / Fixes
- ✔️ Advancement Trigger Bug
Custom advancements don't re-trigger correctly after /reload.
- ✔️ Item Count Bug
Bossbar counter shows incorrect values — needs validation of item tracking logic (e.g. blaze rods, pearls).

# 💡 Want to contribute?
Any kind of positive contribution is welcome! Please help us to grow by contributing to the project.

If you wish to contribute, you can work on any features [listed here](https://github.com/atapas/model-repo#-upcoming-features) or create one on your own. After adding your code, please send us a Pull Request.

> Please read [`CONTRIBUTING`](CONTRIBUTING.md) for details on our [`CODE OF CONDUCT`](CODE_OF_CONDUCT.md), and the process for submitting pull requests to us.
