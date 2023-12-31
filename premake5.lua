workspace("cube")
language("C++")
configurations{"Debug", "Release"}

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
"SDL2",
"SDL2_image",
"SDL2_mixer",
"z",
"opengl32",
"enet",
"lws2_32",
"winmm",
"glu32"
}

filter("system:macosx")
links{
"SDL2.framework",
"SDL2_image.framework",
"SDL2_mixer.framework",
"CoreAudio.framework",
"AudioToolbox.framework",
"AudioUnit.framework",
"OpenGL.framework",
"Cocoa.framework",
"z",
"enet"
}

filter("system:not windows", "system:not macosx")
includedirs{"/usr/include/SDL2"}
links{
"enet",
"SDL2",
"SDL2_image",
"SDL2_mixer",
"z",
"GL",
"GLU"
}
