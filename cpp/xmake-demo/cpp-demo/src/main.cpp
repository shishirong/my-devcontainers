#include <spdlog/spdlog.h>

int main(int argc, char *argv[])
{
    spdlog::set_level(spdlog::level::trace);
    spdlog::info("Hello xmake cpp demo !\nbuild:\t{}\t{}",__DATE__, __TIME__);
    return 0;
}
