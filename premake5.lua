workspace("cube")
language("C++")
configurations{"Debug", "Release"}
architecture("x32")

filter("configurations:Debug")
symbols("On")

filter("configurations:Release")
optimize("Full")
floatingpoint("Fast")
rtti("Off")

project("cube")
kind("WindowedApp")

includedirs{
"src"
}

files{
"src/client.cpp",
"src/clientextras.cpp",
"src/clientgame.cpp",
"src/clients2c.cpp",
"src/command.cpp",
"src/console.cpp",
"src/editing.cpp",
"src/entities.cpp",
"src/main.cpp",
"src/menus.cpp",
"src/monster.cpp",
"src/physics.cpp",
"src/rendercubes.cpp",
"src/renderextras.cpp",
"src/rendergl.cpp",
"src/rendermd2.cpp",
"src/renderparticles.cpp",
"src/rendertext.cpp",
"src/rndmap.cpp",
"src/savegamedemo.cpp",
"src/server.cpp",
"src/serverbrowser.cpp",
"src/serverms.cpp",
"src/serverutil.cpp",
"src/sound.cpp",
"src/tools.cpp",
"src/weapon.cpp",
"src/world.cpp",
"src/worldio.cpp",
"src/worldlight.cpp",
"src/worldocull.cpp",
"src/worldrender.cpp"
}

filter("system:windows")
includedirs{"includes"}
libdirs{"libs"}
links{
"SDL",
"SDL_image",
"SDL_mixer",
"z",
"opengl32",
"enet",
"lws2_32",
"winmm",
"glu32"
}

filter("system:macosx")
includedirs{"enet/include"}
libdirs{"enet"}
links{
"SDL.framework",
"SDL_image.framework",
"SDL_mixer.framework",
"CoreAudio.framework",
"AudioToolbox.framework",
"AudioUnit.framework",
"OpenGL.framework",
"Cocoa.framework",
"z",
"enet:static",
"X11"
}

filter("system:not windows", "system:not macosx")
includedirs{"enet/include", "/usr/include/SDL"}
libdirs{"enet"}
links{
"enet:static",
"SDL",
"SDL_image",
"SDL_mixer",
"z",
"GL",
"GLU",
"X11"
}
