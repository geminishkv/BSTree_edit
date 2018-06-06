# включаем в проект InstallRequiredSystemLibraries
include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_CONTACT gshkvbmstu@gmail.com)

# формализация преднастроек определенных спецификайий в файл,
# представление файла детализации и краткого описания
set(CPACK_PACKAGE_VERSION_MAJOR ${TREE_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${TREE_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${TREE_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION_TWEAK ${TREE_VERSION_TWEAK})
set(CPACK_PACKAGE_VERSION ${TREE_VERSION})

set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_CURRENT_SOURCE_DIR}/DESCRIPTION)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "static c++ library for printing")

# включение лицензии MIT и README.md + DESCRIPTIONS
set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)
set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/DESCRIPTIONS.md)

# формирование конфигурирования файла
set(CPACK_RPM_PACKAGE_NAME "tree-crossdevelop") 

# представление имени поставщика для PRM пакета
set(CPACK_RPM_PACKAGE_LICENSE "MIT") 

# представление лицензии поставщика для PRM пакета
set(CPACK_RPM_PACKAGE_GROUP "BSTree_interpretate's") 

# представление групы поставщика для PRM пакета
set(CPACK_RPM_PACKAGE_URL "https://github.com/geminishkv/BSTree_edit.git") 

# представление на каталог линковки для PRM пакета
set(CPACK_RPM_CHANGELOG_FILE ${CMAKE_CURRENT_SOURCE_DIR}/ChangeLog.md) 

# представление CHANGELOG_FILE в ChangeLog.md для PRM пакета
set(CPACK_RPM_PACKAGE_RELEASE 1) 

# представление нормализованной версии выпуска для PRM пакета
# формирование конфигурирования файла
set(CPACK_DEBIAN_PACKAGE_NAME "lib4BSTree-dev")

# представление имени поставщика для DEB пакета
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://geminishkv.github.io/BSTree_edit/")

# представление линкования для DEB пакета
set(CPACK_DEBIAN_PACKAGE_PREDEPENDS "cmake >= 3.0") 

# представление рекомендованной версионности cmake для DEB пакета 
set(CPACK_DEBIAN_PACKAGE_RELEASE 1) 

# представление версионности для DEB пакета 
include(CPack)
