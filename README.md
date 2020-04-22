# haxeheapsbasegame3d

Work in progress test.

# Created by: Lightnet

# License: MIT
 I do not own the assets that is default from heaps game engine. As well test assets to understand heaps game engine.

# Required:
 * haxe 4.0.5
 * vscode 1.44.0
 * hashlink 1.11

# Information:

    It is to learn how heaps.io game engine works.

    To create game base template for 3D. (Might not work just idea.)

# command line:

## setup:
    Notes you need to install lib from haxe command line.
```
    haxelib install <package name>
    haxelib git <package name> <git url> //to get the latest version
```

```
    haxelib git heaps https://github.com/HeapsIO/heaps
    haxelib git castle https://github.com/ncannasse/castle
    haxelib git hxbit https://github.com/ncannasse/hxbit
    haxelib git hscript https://github.com/HaxeFoundation/hscript
    haxelib git hxnodejs https://github.com/HaxeFoundation/hxnodejs
    haxelib git domkit https://github.com/HeapsIO/domkit
    haxelib git hx3compat https://github.com/HaxeFoundation/hx3compat
	
    haxelib install format
    haxelib install hldx
    haxelib install hlopenal
    haxelib install hlsdl
    haxelib git hide https://github.com/HeapsIO/hide

    haxelib git bullet https://github.com/HeapsIO/bullet (doesn't work)
    haxelib install haxebullet  (doesn't work)
    haxelib git haxebullet https://github.com/armory3d/haxebullet (doesn't work)

```

 download hashlink

## command line build:
```
haxe build.js.hxml // build browser js
haxe build.hl.hxml // build application
hl bin/client.hxml // run application

haxe hide-plugin.hxml
```

# Hide Editor:
 download https://github.com/HeapsIO/hide for to edit 3D model prefab and level.

 work in progress setup...


# Links:
 * https://www.youtube.com/watch?v=Nm4eFGE
 * https://www.gamefromscratch.com/post/2020/04/07/Shiros-Game-Technology-Stack.aspx
 * https://haxe.org/blog/shirogames-stack/
 * https://deepnight.net/tutorial/using-my-gamebase-to-create-a-heaps-game/

# Trouble Shoot:
 * https://community.haxe.org/t/hashlink-vscode-debugger-problem/2291
```
Hide ( Editor / IDE)
Domkit ( UI )
heaps ( Game Engine )
castle db ( Database / Editor )
hscript ( script lang )
MPMan ( Network / close src )
HxBit ( Serialization and Network )
```

# Assets:
 Note the assets or contents should be in res folder. It where the data to access image, texture, and other things.