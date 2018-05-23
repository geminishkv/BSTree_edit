# включаем в проект InstallRequiredSystemLibraries
include(InstallRequiredSystemLibraries)

# формализация преднастроек определенных спецификайий в файл,
# представление файла детализации и краткого описания
set(CPACK_PACKAGE_CONTACT gshkvbmstu@gmail.com)
set(CPACK_PACKAGE_VERSION_MAJOR ${PRINT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PRINT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PRINT_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION_TWEAK ${PRINT_VERSION_TWEAK})
set(CPACK_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_CURRENT_SOURCE_DIR}/DESCRIPTION)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "static c++ library for printing")

# включение лицензии и README.md
set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)

# формирование конфигурирования файла
set(CPACK_RPM_PACKAGE_NAME "tree-crossdevelop") 
set(CPACK_RPM_PACKAGE_NAME "demo-devel")

# представление имени поставщика для PRM пакета
set(CPACK_RPM_PACKAGE_LICENSE "MIT") 

# представление лицензии поставщика для PRM пакета
set(CPACK_RPM_PACKAGE_GROUP "BSTree_interpretate's") 
set(CPACK_RPM_PACKAGE_GROUP "demo")

# представление групы поставщика для PRM пакета
set(CPACK_RPM_PACKAGE_URL "https://github.com/geminishkv/BSTree_edit.git") 
set(CPACK_RPM_PACKAGE_URL "https://github.com/geminishkv/BSTree_edit.git")

# представление на каталог линковки для PRM пакета
set(CPACK_RPM_CHANGELOG_FILE ${CMAKE_CURRENT_SOURCE_DIR}/ChangeLog.md) 

# представление CHANGELOG_FILE в ChangeLog.md для PRM пакета
set(CPACK_RPM_PACKAGE_RELEASE 1) 

# представление нормализованной версии выпуска для PRM пакета
# формирование конфигурирования файла
set(CPACK_DEBIAN_PACKAGE_NAME "lib4BSTree-dev") 
set(CPACK_DEBIAN_PACKAGE_NAME "libdemo-dev")

# представление имени поставщика для DEB пакета
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://geminishkv.github.io/BSTree_edit/")

# представление линкования для DEB пакета
set(CPACK_DEBIAN_PACKAGE_PREDEPENDS "cmake >= 3.0") 

# представление рекомендованной версионности cmake для DEB пакета 
set(CPACK_DEBIAN_PACKAGE_RELEASE 1) 

# представление версионности для DEB пакета 
include(CPack)
