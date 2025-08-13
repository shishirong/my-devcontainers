add_rules("mode.debug", "mode.release")

target("xmake-c-demo")
    set_kind("binary")
    add_files("src/*.c")
