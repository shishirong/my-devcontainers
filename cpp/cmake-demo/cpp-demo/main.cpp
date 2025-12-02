#include <spdlog/spdlog.h>

int main(int argc, char *argv[])
{
    spdlog::set_level(spdlog::level::trace);
    spdlog::info("{}\tbuild: {} {}", PROJECT_NAME, __DATE__, __TIME__);
    return 0;
}
