
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

  According to the [Minecraft Wiki](https://minecraft.gamepedia.com/Tutorials/Installing_a_data_pack) :

> #### Singleplayer Installation:
>
> 1. Open Minecraft.
> 2. Select the world you want to install the data pack for, click on "Edit", then "Open world folder".
> 3. Open the folder named datapacks, and put the data pack into it.
> 4. Type /reload (if you have enabled cheats) or re-open world.
>
> #### Multiplayer Installation:
> 
> 1. Open your server folder, then open the folder of the world you wish to install the data pack in (default: world).
> 2. Put the data pack into a folder named datapacks
> 3. Type /reload from the console or as a level 3 operator, or restart the server.  

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

To enter S.E.A.T adjustment mode:  

1. Look straight down while seated
2. You should see a prompt telling you to scroll up/down (only if prompts are enabled)
3. Scroll up/down rapidly on your mouse-wheel/hotbar  

Once you've entered S.E.A.T adjustment mode, you have 3 basic controls:  
1. Look-Around/Rotation:  
  This sets the direction you want to adjust your seat in. 
  Also, if rotation lock is enabled, the direction you're looking in when exiting S.E.A.T Adjustment Mode is taken as your seat's rotation.
2. Scroll Up/Down:  
  Moves your seat either forward or backward along the axis/direction you're currently facing.
3. Wait/Stop Scrolling:  
  If you stop scrolling for a while (about 7 seconds), the seat locks in your adjustment and exits S.E.A.T Adjustment Mode.  

<br>

This also works when sitting on mobs and entities but is really difficult to do because they don't sit still during adjustment. If this annoys you, enable the *'Freeze Rides on Adjust'* option in the pack menu to temporarily freeze entities you're sitting on during adjustment.  

