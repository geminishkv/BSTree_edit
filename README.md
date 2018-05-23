### BSTree_demo_bmstu_dev 
[![Build status](https://ci.appveyor.com/api/projects/status/cr2xwpwe3iiafbwg?svg=true)](https://ci.appveyor.com/project/geminishkv/bstree-edit)
[![Build Status](https://travis-ci.org/geminishkv/BSTree_edit.svg?branch=crossdevelop)](https://travis-ci.org/geminishkv/BSTree_edit) <a href="https://geminishkv.github.io/BSTree_edit/"><img src="https://codedocs.xyz/doxygen/doxygen.svg"/></a>
[![version](https://img.shields.io/badge/hunter-v0.19.79-blue.svg)](https://github.com/ruslo/hunter/tree/v0.19.79)

```
Целью данного проекта является разработка программно-аппаратной части реализации функционала 
прозода по двоичному дереву BSTree: в соотвествии с указанными политиками исполднения кода, по серии ОСТ, 
в том числе относительно основополагающих требований и формаций для языка программирования С++, а также
форматов исполнения требований согласно приведенной локументации для работы с двоичным деревом 
поиска по распределенным вариантам.
```

```
Работа выполнена непосредственно: Зинченко Янисом, Шмаковым Ильей. 
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
Этапы:
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
- ✔️ Все функции по работе с деревом должны находиться в пространстве имен `BSTTree`;
- ✔️ Код должен быть читабельным и оформлен в едином стиле;
- ✔️ Оформление `README.md` в соответствии с содержанием проекта;
- ✔️ Оформление `.gitignore` в соответствии с содержанием проекта;
- ✔️ Создать `CMakeLists.txt` для автоматизации сборки проекта.;
- ✔️ Добавить в `CMakeLists.txt` автоматизацию процесса сборки примеров.
- ✔️ Добавить в `CMakeLists.txt` автоматизацию процесса сборки тестов.
- ✔️ Обеспечить непрерывный процесс сборки проекта с использованием сервиса **Travis CI**.
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
* 📘 Documentation: <a href="https://geminishkv.github.io/BSTree_edit/"><img src="https://codedocs.xyz/doxygen/doxygen.svg"/></a>
* 📦 Release: [not available yet]()
* 📘 Hunter:  [![version](https://img.shields.io/badge/hunter-v0.19.79-blue.svg)](https://github.com/ruslo/hunter/tree/v0.19.79)
* 📦 Build's:  [![Build status](https://ci.appveyor.com/api/projects/status/cr2xwpwe3iiafbwg?svg=true)](https://ci.appveyor.com/project/geminishkv/bstree-edit)
  [![Build Status](https://travis-ci.org/geminishkv/BSTree_edit.svg?branch=crossdevelop)](https://travis-ci.org/geminishkv/BSTree_edit) 

### Rights 4usage
* BSTree_dev
* tree-cli.cpp tree.h tree.cpp
* catch.hpp main.cpp test1.cpp
* Created by Zinchenko && Shmakov /BMSTU/.
* Copyright © 2018 iso4datel && geminishkv. All rights reserved.

### Demowiew_dev && saw repo: artifacts_all
[![asciicast][not available yet]()
