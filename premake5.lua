workspace "Ophelia"
    architecture "x64"
    configurations { "Debug", "Release" }

outputdir = "%cfg.buildcfg-%cfg.system-%cfg.architecture"

project "Ophelia"
    kind "ConsoleApp"
    language "C++"
    location "Ophelia"
    
    targetdir ("Binaries" .. outputdir)
    objdir ("Intermediate" .. outputdir)

    files { "Source" }

    includedirs { "vendor" }

    filter "configurations:Debug"
        defines { "RE_DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "RE_RELEASE" }
        optimize "On"