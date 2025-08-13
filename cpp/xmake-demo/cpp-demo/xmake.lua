add_rules("mode.debug", "mode.release")

add_requires("spdlog")

target("xmake-cpp-demo")
    set_kind("binary")
    add_files("src/*.cpp")
    add_packages("spdlog")

