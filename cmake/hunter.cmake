# преднастройка файла конфигурации hunter.cmake на исполнение
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    tree-cli
    VERSION
    "0.19.137.1"
    #Other type4 realise hynter
    #URL 
    #"https://github.com/ruslo/hunter/archive/v0.22.0.tar.gz"
    #SHA1 
    #"f91a01c6e0eb53b1dc55a6442cd93580db91da07"
    URL 
    "https://github.com/geminishkv/hunter/archive/v0.19.137.1.tar.gz"
    SHA1 
    "116a39be623b7cf2e85a3d229babcec07506406a"
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

hunter_cmake_args(
    tree
    CMAKE_ARGS
    BUILD_EXAMPLES=ON
    BUILD_TESTS=ON
)

hunter_cacheable(tree-cli)
hunter_download(PACKAGE_NAME tree-cli)

# предустановка наименования версионности, с приведением версии
hunter_config(print VERSION 7.9.4.5)
