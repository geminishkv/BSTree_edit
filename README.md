### BSTree_bmstu_dev

## BSTree_demodev [![Build Status](https://travis-ci.org/geminishkv/BSTree.svg?branch=develop)](https://travis-ci.org/geminishkv/BSTree) <a href="https://geminishkv.github.io/BSTree/"><img src="https://codedocs.xyz/doxygen/doxygen.svg"/></a>

```
Целью данного проекта является разработка программно-аппаратной части по серии ОСТ 
для языка программирования С++, для работы с двоичным деревом поиска по вариантам, 
на распределенность.
```

```
Работа выполняют: Зинченко Янис, Шмаков Илья, Группа: ИУ8-21М.
```

```
Целью является разработка работы двоичным деревом поиска со следующим TUI:

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
1. :deciduous_tree:
2. :deciduous_tree:
3. :deciduous_tree:
4. :deciduous_tree:
5. :deciduous_tree:
6. :deciduous_tree:
7. :deciduous_tree:
8. :deciduous_tree:
```

### Требования::
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
- ✔️ Обеспечить непрерывный процесс сборки и тестирование проекта с использованием сервисов Travis CI и AppVeyor.
- ✔️ Написать документацию к проекту с использованием инструмента doxygen и разместить 
ее на сервисе GitHub Page.
- ✔️ Добавить в CMakeLists.txt автоматизацию процесса пакетирования.
- ✔️ Обеспечить размещение пакета проекта на сервисе GitHub Release при успешном слияние ветки develop и master.


### Build

* Building BSTree:
```ShellSession
$ git clone https://github.com/geminishkv/BSTree.git BSTree
$ cd BSTree
$ cmake -H. -B_build -DBUILD_TESTS=ON -DBUILD_EXAMPLES=ON
$ cmake --build _builds
$ _build/example1 && echo
$ cmake -H. -B_build -DCMAKE_INSTALL_PREFIX=_install
$ cmake --build _build --target install
$ tree _install
```

* Building examples:
```ShellSession
$ git clone https://github.com/geminishkv/BSTree.git BSTree
$ cd BSTree
```

* Building test`s:
```ShellSession
$ git clone https://github.com/geminishkv/BSTree.git BSTree
$ cd BSTree
```

```ShellSession
$ git clone https://github.com/geminishkv/BSTTree.git BSTTree
$ cd BSTTree
$ git checkout develop
$ cmake -H. -B_builds
$ cmake --build _builds
```

### Links
* 📘 Documentation: [not available yet](https://geminishkv.github.io/BSTree/)
* 📦 Release: [not available yet]()

### Demowiew_dev
[![asciicast]
