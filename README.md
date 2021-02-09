
<br>

# Xmas Labs  |  S.E.A.T  |  User Guide

Thank you for checking out the S.E.A.T pack!  
This little document should cover *all* the information you need to use this pack in your world. If you're not in the mood to read it, you can watch it in video-form [here](https://www.youtube.com) 

<br>

## About
The S.E.A.T pack is my attempt at making the ultimate sitting solution for Vanilla Minecraft.  

### Features:
- **Sit on (almost) any block/entity in the game, including other players**
- **Fine-tune your sitting position to make it look just right**
- **Reacts to world physics letting players fall, bounce, slide, etc while seated**
- **In-pack menu that lets you customize and configure pack features to your liking**
- **Works in both singleplayer and multiplayer worlds**
- **Carefully coded to prevent conflicts with other datapacks/mods, especially those made by me**

<br>

## Installation  

**According to the [Minecraft Wiki](https://minecraft.gamepedia.com/Tutorials/Installing_a_data_pack),**

> #### Singleplayer Installation:
>
> 1. Open Minecraft.
> 2. Select the world you want to install the data pack for, click on "Edit", then "Open world folder".
> 3. Open the folder named datapacks, and put the data pack into it.
> 4. Type `/reload` (if you have enabled cheats) or re-open world.
>
> #### Multiplayer Installation:
> 
> 1. Open your server folder, then open the folder of the world you wish to install the data pack in (default: world).
> 2. Put the data pack into a folder named datapacks
> 3. Type `/reload` from the console or as a level 3 operator, or restart the server.  

<br>

**You must copy both C.O.R.E and S.E.A.T datapacks to your world folder.**  
The *Co-Ordinated Runtime Environment (C.O.R.E)* holds commands shared between my packs. You need it to run the S.E.A.T pack.

**If you're installing the pack for the first time, or loading it after a previous un-installation, you will have to reload** ***twice***.  
If installed and loaded correctly, you should see both packs show up as advancements in your **Advancements Tab** *(Press L key to open)*.

<br>

## Pack Menu

There's an **in-built menu** you can open in your chat by running the following command:  
    
    /function x_seat:menu

This menu lets you toggle different pack settings to suit your experience. Turning off things like physics might improve performance and stability, especially on servers. Each option comes with a description you can view by hovering over it with your mouse.

You can navigate to different pages using the page arrows at the bottom, or clear the menu using the Close Menu button.  
**Remember, changes you make in this menu get applied to everyone in your world/server.**

<br>

### Menu Options:

- #### Use Physics: 
  This feature makes you responsive to world physics while seated. Keep it *ON* if you want to fall, bounce, slide, etc while sitting. Turn it *OFF* to improve performance and avoid glitches.

- #### Rotation Lock:
  Turn *ON* to lock S.E.A.T rotation. Makes seated movement look more natural, especially when riding mobs, but restricts your freedom of rotation. Also causes a bug where your inventory will auto-close if sitting on an entity that rotates. This setting is ignored in S.E.A.T Adjustment Mode.

- #### Only If Sneaking:
  Makes sitting slightly more complicated. If *ON,* players need to sneak for a bit while looking down, then release sneak and right-click to sit. Takes some getting used to, but stops you from unintentionally sitting on things. Also, sneaking before sitting is slightly more realistic.

- #### Bounce Off Floors:
  By default, falling on bouncy surfaces looks strange as the player seems to bounce mid-air. Turning this *ON* will fix that but might cause the bounce to look less realistic.

- #### Only Sit Down:
  By default, S.E.A.T tries to seat you on any sittable surface directly behind you. If it doesn't find any, it seats you on/in whatever block you're standing on/in. Turning this *ON* forces S.E.A.T to only use the block you're standing on/in.

- #### Fall Damage:
  Keep this *ON* to apply fall damage to seated players when falling. No reason to turn this *OFF* unless you're playing it super safe.

- #### Block Inventory:
  Prevents players from accessing their inventory while seated. This 'feature' only exists to hide the non-functional inventory GUI added by S.E.A.T components. Turning this *OFF* will allow seated inventory access but might break immersion.

- #### Freeze Ride On Adjust:
  Turning this *ON* will temporarily disable AI in the entity/mob you're sitting on while in S.E.A.T Adjustment Mode. This makes adjustment much easier but may cause issues with the mob/entity you're sitting on, since this resets their state.

- #### Show Prompts:
  Turn this *OFF* to disable sitting instruction prompts. This might make things difficult for players new to the pack.
  
<br>

## Sitting Down

There are two ways to sit:

#### Default Method:
  1. Stand infront (or on top of) of the block you want to sit on
  2. Turn around and face away from the block
  3. Look straight down and Right-Click (USE button / MOUSE 2) 

#### 'Only If Sneaking' Method:
  1. Stand infront (or on top of) of the block you want to sit on
  2. Turn around and face away from the block
  3. Look straight down and 
    3.1. Hold Left Shift for a second or two (SNEAK button)
    3.2. Release Left Shift (SNEAK button) & quickly press Right Click (USE button)

**You can switch to your preferred method using the pack menu**

<br>

## S.E.A.T Adjustment Mode

This lets you fine-tune your sitting position after sitting. It's the Minecraft equivalent to *'scooting over'.* 

<br>

**To enter S.E.A.T adjustment mode:**
1. Look straight down while seated
2. You should see a prompt telling you to scroll up/down (only if prompts are enabled)
3. Scroll up/down rapidly on your mouse-wheel/hotbar  

<br>

Once you've entered S.E.A.T adjustment mode, you have 3 basic controls:  

- #### Look-Around/Rotation:  
  This sets the direction you want to adjust your seat in. 
  Also, if rotation lock is enabled, the direction you're looking in when exiting S.E.A.T Adjustment Mode is taken as your seat's rotation.
  
- #### Scroll Up/Down:  
  Moves your seat either forward or backward along the axis/direction you're currently facing.
  
- #### Wait/Stop Scrolling:  
  If you stop scrolling for a while (about 7 seconds), the seat locks in your adjustment and exits S.E.A.T Adjustment Mode.  

<br>

This also works when sitting on mobs and entities but is really difficult to do because they don't sit still during adjustment. If this annoys you, enable the *'Freeze Rides on Adjust'* option in the pack menu to temporarily freeze entities you're sitting on during adjustment.  

<br>

## Sitting On Entities

This pack lets you sit on almost every mob/entity in the game including other players, armor stands and mobs that can fly. You cannot sit on underwater mobs though, because Minecraft does not let you ride anything underwater (or under-lava).  

To sit on an entity, all you have to do is sit on them from above (or fall on them while seated). Be careful doing this in Survival Mode as the mob you're sitting on could get you killed. For instance, you could be sitting on a cat that suddenly decides to run into a 1-block high passage, suffocating you inside the block above. Also, sitting on hostile mobs is generally a bad idea, though in a few cases, it's possible to get away with it.  

When Rotation Lock is enabled, you tend to rotate with the entity you're sitting on (unless you're in S.E.A.T Adjustment Mode). This usually isn't apparent visually, unless the entity makes a drastic rotation.  

Please note that sitting on an entity isn't the same as riding them. The main difference is that you can't directly control the movement of entities you're sitting on this way. However, you can now do things like share a ride with other players (they can join you as passengers).

<br>

## Physics

If physics is enabled, you will respond to world physics while seated. You could be pushed around by world mechanics like water, gravity, explosions, pistons, etc. How smoothly this runs depends on the performance of your world/server.   

Please do not enable this in a Hardcore world! This feature is the sole cause behind 99% of this pack's bugs. It works most of the time, but during those rare moments when it doesn't work, you might find yourself being launched into outer-space or phasing through blocks.  

I spent days patching all known physics bugs, but I'm sure there are a few that went under my radar. It's impossible to find some of these unless you try every possible block or entity interaction in the game. So, if you want to stay safe, here's a general rule of thumb - DON'T SIT IN WEIRD SPOTS.

<br>

## Uninstalling

If you want to disable this pack 💔, you should first run the uninstaller function using the following command:  
    
    /function x_seat:uninstall  

This will remove all traces of the S.E.A.T pack, including any changes made to your world. If you're not using any other Xmas Labs packs, you could uninstall the C.O.R.E pack as well, using the following command:  
    
    /function x_core:uninstall  

Uninstalling the C.O.R.E pack will also automatically remove the S.E.A.T pack or any other packs that depend on it. If done correctly, you will no longer see the pack(s) in your Advancements tab.  

Once you've uninstalled the pack(s), you can safely remove the datapack(s) from your world folder. If you don't remove them, they will re-install themselves the next time you load/reload your world.

<br>

## F.A.Q

**Q: Why is nothing working?**  
A: Stay calm. If you don't see any prompts while looking down, this usually means the pack hasn't loaded correctly. One way to check this is using your Advancements tab (Press L key to open). If the pack loaded correctly, it should show up there. If it didn't load correctly, or if something's not working, try reloading your world. If you have cheats enabled, use the '/reload' command or re-open your world. 
If that doesn't fix it, try using the '/datapack list' command to see if the packs were installed correctly. If they're not listed, you probably copied them into the wrong folder, or else the packs aren't compatible with your version of Minecraft. 

**Q: Does Right-Click to sit not work sometimes?**  
A: Yes, sometimes there's a bug where right-clicking doesn't seat you even if the prompt shows up. When that happens, just look/move around a tiny bit and try again.   

**Q: Do the scrolling controls for S.E.A.T adjustment not work sometimes?**  
A: The scrolling controls work by tracking the movement of the selected slot on your hotbar. If you scroll too quickly, the selection wraps around and confuses the function. To avoid this, just slow down your scrolling to 1 or 2 slots at a time.

**Q: Why can't I sit on entity/mob X?**  
A: You need to be directly above the entity/mob's hitbox to sit on them. Just try falling on top of them while seated. You can't sit on anything inside water or lava. Also, we've disabled sitting on things like item-drops and xp orbs, as they resulted in a lot of issues during testing.

**Q: Can I sit underwater?**  
A: No. There's a technical limitation/feature in Minecraft that dismounts you if you're riding anything underwater.

**Q: Why do I get hurt while sitting or getting up?**  
A: This can happen if you're trying to sit in a cramped or hard-to-access location. Try disabling different S.E.A.T menu options, such as physics and fall damage. If that doesn't work, you're outta luck.

**Q: Why is this so buggy?**  
A: I feel you, really I do. I've spent nearly a month getting this to where it's at, but there's only so much you can do with Minecraft commands. 
If you want something more reliable, there are plenty of mods out there that do the same thing in a straight-forward manner. With datapacks however, you have to rely on invisible llamas and sleeping foxes to implement stuff like this. This makes them fun to develop but it's almost impossible to get a perfect solution. 

<br>

## Contributing  

If you want to help improve this pack, first of all, thank you ❤.  

If you're not familiar with Minecraft commands or how datapacks work, I would still love to hear your feedback and suggestions. These packs use a lot of *'fickle'* code to do their thing and I could really use some testing help.  

If you know how to use Minecraft commands and make datapacks, you can contribute edits to the code. There are are two folders to work with - the default 'functions' folder, which should be familiar to you, and the 'scripts' folder which is used with a tool called [mcscript](https://mcscript.stevertus.com/#variables), to generate those functions.

I used mcscript mainly because of its command grouping features. For example:  

    asat('@p'){
      /say hello
      /tp ~ ~ ~
    }

gets compiled to 

    /execute as @p at @s run say hello
    /execute as @p at @s run tp ~ ~ ~  

As you can see, it greatly simplifies coding Minecraft functions.
You can learn more about mcscript [here](https://mcscript.stevertus.com/#variables).  

You can also directly contribute edits to functions, but mcscript scripts are so much easier to work with.  
I've also added comments to almost every line in those scripts, so it shouldn't be too difficult to figure out. Please try and understand the C.O.R.E pack first as a lot of S.E.A.T code depends on it.  

<br>

<br>

---

*That sums up everything you need to know about the S.E.A.T pack.*
*Thank you once again for checking it out.
I really hope you you find it useful.*

💛, Xmas
