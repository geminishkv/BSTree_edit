### BSTree_demo_bmstu_dev ![GitHub issue author](https://img.shields.io/badge/RelaseAuthor-Elijah%20Doman(Shmakov)-green%20.svg)![GitHub issue author](https://img.shields.io/badge/develop-geminishkv__dev-green.svg)![GitHub issue author](https://img.shields.io/badge/Co--Develop-Yanis%20Zinchenko%20(iso4datel)-green.svg)
![Pull Request Stats (long form)](https://img.shields.io/badge/pull%20regues%20issue-latest%2031%2C%20May-green.svg)
[![Build status](https://ci.appveyor.com/api/projects/status/cr2xwpwe3iiafbwg?svg=true)](https://ci.appveyor.com/project/geminishkv/bstree-edit)]
[![Build Status](https://travis-ci.org/geminishkv/BSTree_edit.svg?branch=crossdevelop)](https://travis-ci.org/geminishkv/BSTree_edit) <a href="https://geminishkv.github.io/BSTree_edit/"><img src="https://codedocs.xyz/doxygen/doxygen.svg"/></a>]
[![version](https://img.shields.io/badge/hunter-v0.19.79-blue.svg)](https://github.com/ruslo/hunter/tree/v0.19.79)]
![AUR](https://img.shields.io/aur/license/yaourt.svg)
![AUR](https://img.shields.io/aur/license/travis.svg)
![JIRA issue](https://img.shields.io/jira/issue/https/issues.apache.org/jira/release.svg)
![Docker Build Status](https://img.shields.io/docker/build/jrottenberg/ffmpeg.svg)
![GitHub manifest version](https://img.shields.io/github/manifest-json/v/RedSparr0w/IndieGala-Helper.svg)
![GitHub release](https://img.shields.io/github/release/qubyte/rubidium.svg)
![npm (scoped)](https://img.shields.io/npm/v/@cycle/core.svg)
![Read the Docs (version)](https://img.shields.io/readthedocs/pip/stable.svg)
![continuousphp](https://img.shields.io/continuousphp/git-hub/doctrine/dbal/master.svg)][![Jenkins test](https://img.shields.io/jenkins/t/https/jenkins.qa.ubuntu.com/view/Precise/view/All%20Precise/job/precise-desktop-amd64_default.svg)


```
Целью данного проекта является разработка программно-аппаратной части реализации функционала 
прозода по двоичному дереву BSTree: в соотвествии с указанными политиками исполднения кода, по серии ОСТ, 
в том числе относительно основополагающих требований и формаций для языка программирования С++, а также
форматов исполнения требований согласно приведенной локументации для работы с двоичным деревом 
поиска по распределенным вариантам. [![PyPI - Status](https://img.shields.io/pypi/status/Django.svg)]
```

```
Работа выполнена непосредственно: Зинченко Янисом, Шмаковым Ильей. [![JIRA sprint completion](https://img.shields.io/jira/sprint/https/jira.spring.io/93.svg)]
Группа - ИУ8-21М.
```

```
Целью является разработка работы двоичным деревом поиска со следующим TUI(управлением):
```

```
Выберите одну из операций:
1. Вывести дерево на экран
2. Вывести список узлов дерева 
   a. Прямой обход
   b. Поперечный обход
   c. Обратный обход
3. Добавить узел в дерево
4. Удалить узел из дерева
5. Сохранить дерево в файл
6. Загрузить дерево из файла
7. Проверить наличие узла
8. Завершить работу программы
```

```
Этапы: [![Hackage-Deps](https://img.shields.io/hackage-deps/v/lens.svg)]
1. ✔️
2. ✔️
3. ✔️
4. ✔️
5. ✔️
6. ✔️
7. ✔️
8. ✔️
```

### Формализованные требования:
- ✔️ Единый стиль кода;
- ✔️ Проверка утилитой **cpplint**;
- ✔️ Все функции по работе с деревом должны находиться в пространстве имен `BSTree`;
- ✔️ Код должен быть читабельным и оформлен в едином стиле;
- ✔️ Оформление `README.md` в соответствии с содержанием проекта;
- ✔️ Оформление `.gitignore` в соответствии с содержанием проекта;
- ✔️ Создать `CMakeLists.txt` для автоматизации сборки проекта.;
- ✔️ Добавить в `CMakeLists.txt` автоматизацию процесса сборки примеров.
- ✔️ Добавить в `CMakeLists.txt` автоматизацию процесса сборки тестов.
- ✔️ Обеспечить непрерывный процесс сборки проекта с использованием сервиса **Travis CI** и AppVeyor.
- ✔️ Обеспечить 100% покрытие кода с использованием фреймворка Catch.
- ✔️ Обеспечить непрерывный процесс сборки и тестирование проекта с использованием сервисов Travis CI 
и AppVeyor.
- ✔️ Написать документацию к проекту с использованием инструмента doxygen и разместить 
ее на сервисе GitHub Page.
- ✔️ Добавить в CMakeLists.txt автоматизацию процесса пакетирования.
- ✔️ Обеспечить размещение пакета проекта на сервисе GitHub Release при успешном слияние ветки develop 
и master.


### Build

* Building BSTree:
```ShellSession
$ git clone https://github.com/geminishkv/BSTree_edit.git BSTree_edit
$ git clone https://github.com/geminishkv/BSTree_edit.git tree-cli # or that type
$ cd BSTree_edit
$ git checkout crossdevelop
$ cmake -H. -B_build -DBUILD_TESTS=ON -DBUILD_EXAMPLES=ON
$ cmake --build _builds
$ _build/tree-cli && echo
```

* Building BSTree 2 type:
```ShellSession
$ git clone https://github.com/geminishkv/BSTree_edit.git BSTTree_edit
$ git clone https://github.com/geminishkv/BSTree_edit.git tree-cli # or that type
$ cd BSTree_edit
$ git checkout crossdevelop
$ cmake -H. -B_builds
$ cmake --build _builds
```

* Building install:
```
$ cmake -H. -B_build -DCMAKE_INSTALL_PREFIX=_install
$ cmake --build _build --target install
$ tree _install
```

* Building example's:
```ShellSession
$ git clone https://github.com/geminishkv/BSTree_edit.git BSTree_edit
$ git clone https://github.com/geminishkv/BSTree_edit.git tree-cli # or that type
$ cd BSTree_edit
$ git checkout crossdevelop
```

* Building test`s:
```ShellSession
$ git clone https://github.com/geminishkv/BSTree_edit.git BSTree_edit
$ git clone https://github.com/geminishkv/BSTree_edit.git tree-cli # or that type
$ cd BSTree_edit
$ git checkout crossdevelop
```

* Building cmake/cpack configure:
```ShellSession
$ cmake -H. -B_build -DCPACK_GENERATOR="TGZ" # like exmp 4 init procc
$ cmake --build _build --target package
$ cmake -H. -B_build
$ cmake --build _build
$ cd _build
$ cpack -G "TGZ"
$ cd ..
```

### Links 
* 📘 Documentation: ![GitHub issue size](https://img.shields.io/badge/Code%20Size-120%20MB-brightgreen.svg)
* 📦 Release: <a href="https://github.com/geminishkv/BSTree_edit/releases"><img scr=<https://img.shields.io/badge/releases-latest-green.svg"/></a>
* 📘 Hunter:  [![version](https://img.shields.io/badge/hunter-v0.19.79-blue.svg)](https://github.com/ruslo/hunter/tree/v0.19.79)
* 📦 Build's:  [![Build status](https://ci.appveyor.com/api/projects/status/cr2xwpwe3iiafbwg?svg=true)](https://ci.appveyor.com/project/geminishkv/bstree-edit)
[![Build status](https://ci.appveyor.com/api/projects/status/cr2xwpwe3iiafbwg?svg=true)](https://ci.appveyor.com/project/geminishkv/bstree-edit)
master branch:[![Build Status](https://travis-ci.org/geminishkv/BSTree_edit.svg?branch=crossdevelop)](https://travis-ci.org/geminishkv/BSTree_edit) 
master branch:[![Build Status](https://travis-ci.org/geminishkv/BSTree_edit.svg?branch=master)](https://travis-ci.org/geminishkv/BSTree_edit) 
[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)]

### Rights 4usage
* BSTree_dev ![Elijah Doman Directory](https://img.shields.io/badge/Elijah%20Doman%2FShmakov%20Directory-liquid%20true-green.svg)
* CMake driven cross-platform package manager for C/C++.
* Supported platforms: **Linux**, **Mac**, **Windows**. ![Bitbucket open pull requests](https://img.shields.io/bitbucket/pr-raw/osrf/gazebo.svg)
* tree-cli.cpp tree.h tree.cpp
* catch.hpp(by hunter) main.cpp test1.cpp
* Hunter by Ruslo: <a href="https://github.com/ruslo/hunter"><img src="https://img.shields.io/badge/hunter-v0.19.79-blue.svg)](https://github.com/ruslo/hunter/tree/v0.19.79"/></a>
* Created by Zinchenko && Shmakov /BMSTU/. ![Plugin on redmine.org](https://img.shields.io/redmine/plugin/rating/redmine_xlsx_format_issue_exporter.svg)
* Copyright © 2018 iso4datel && geminishkv. All rights reserved. ![DUB](https://img.shields.io/dub/l/vibe-d.svg)![PyPI - License](https://img.shields.io/pypi/l/Django.svg)
 
### Demowiew_dev && saw repo: artifacts_all ![GitHub (Pre-)Release Date](https://img.shields.io/badge/Rlease%20Date-May-blue.svg)
