
# Xmas Labs | S.E.A.T Pack | User Guide


Thank you for checking out the S.E.A.T pack!  
This little document should cover ALL the information you need to use this pack in your world. If you're not in the mood to read it, you can watch it in video-form here: 

## About

The S.E.A.T pack is my attempt at making the ultimate sitting solution for Vanilla Minecraft.  

### Features:
- Sit on (almost) any block/entity in the game, including other players
- Fine-tune your sitting position to make it look just right
- Reacts to world physics letting players fall, bounce, slide, etc while seated
- In-pack menu that lets you customize and configure pack features to your liking
- Works in both singleplayer and multiplayer games
- Carefully coded to prevent conflicts with other datapacks/mods, especially those made by me  

## Installation

  According to the [Minecraft Wiki](https://minecraft.gamepedia.com/Tutorials/Installing_a_data_pack) :

> ### Singleplayer Installation:
>
> 1. Open Minecraft.
> 2. Select the world you want to install the data pack for, click on "Edit", then "Open world folder".
> 3. Open the folder named datapacks, and put the data pack into it.
> 4. Type /reload (if you have enabled cheats) or re-open world.
> <br> <br>
> ### Multiplayer Installation:
> 
> 1. Open your server folder, then open the folder of the world you wish to install the data pack in (default: world).
> 2. Put the data pack into a folder named datapacks
> 3. Type /reload from the console or as a level 3 operator, or restart the server.  

You must copy both C.O.R.E and S.E.A.T datapacks to your world folder.
The Co-Ordinated Runtime Environment (C.O.R.E) holds commands shared between my packs. You need it to run the S.E.A.T pack.

If you're installing the pack for the first time, or loading it after a previous un-installation, you will have to reload twice. If installed and loaded correctly, you should see both packs show up as advancements in your Advancements Tab (Press L key to open).


## Pack Menu

There's an in-built menu you can open in your chat by running the following command:
/function x_seat:menu

This menu lets you toggle different pack settings to suit your experience. Turning off things like physics might improve performance and stability, especially on servers. Each option comes with a description you can view by hovering over it with your mouse.

You can navigate to different pages using the page arrows at the bottom, or clear the menu using the Close Menu button. Remember, changes you make in this menu get applied to everyone in your world/server.

Here's each menu option explained:

1. Use Physics: 
This feature makes you responsive to world physics while seated. Keep it ON if you want to fall, bounce, slide, etc while sitting. Turn it OFF to improve performance and avoid glitches.

2. Rotation Lock:
Turn ON to lock S.E.A.T rotation. Makes seated movement look more natural, especially when riding mobs, but restricts your freedom of rotation. Also causes a bug where your inventory will auto-close if sitting on an entity that rotates. This setting is ignored in S.E.A.T Adjustment Mode.

3. Only If Sneaking:
Makes sitting slightly more complicated. If ON, players need to sneak for a bit while looking down, then release sneak and right-click to sit. Takes some getting used to, but stops you from unintentionally sitting on things. Also looks more realistic.

4. Bounce Off Floors:
By default, falling on bouncy surfaces looks strange as the player seems to bounce mid-air. Turning this ON will fix that but might cause the bounce to look less realistic.

5. Only Sit Down:
By default, S.E.A.T tries to seat you on any sittable surface directly behind you. If it doesn't find any, it seats you on/in whatever block you're standing on/in. Turning this ON forces S.E.A.T to only use the block you're standing on/in.

6. Fall Damage:
Keep this ON to apply fall damage to seated players when falling. No reason to turn this OFF unless you're playing it super safe.

7. Block Inventory:
Prevents players from accessing their inventory while seated. This 'feature' only exists to hide the non-functional inventory GUI added by S.E.A.T components. Turning this OFF will allow seated inventory access but might break immersion.

8. Freeze Ride On Adjust:
Turning this ON will temporarily disable AI in the entity/mob you're sitting on while in S.E.A.T Adjustment Mode. This makes adjustment much easier but is quite unrealistic and might cause issues with the mob/entity you're sitting on since it resets their state.

9. Show Prompts:
Turn this OFF to disable sitting instruction prompts. This might make things difficult for players new to the pack.
