//  BSTree_dev
//  tree-cli.cpp
//  Created by Zinchenko && Shmakov /bmstu/.
//  Copyright © 2018 iso4datel && geminishkv. All rights reserved.
//

#include <catch.hpp>
#include <tree.hpp>

/*TEST_CASE("Test tree", "[tree]"){
    std::cout <<"Проверка работы сообщений для пустого дерева" << std::endl;
    BSTree::Tree tree8 = BSTree::Tree();
    tree8.exists(1);
    REQUIRE(tree8.is_empty()==true);
    tree8.remove(4);
    tree8.print(BSTree::traversal_order:: pre_order);
    interface.work_with_file(tree8, 1, false);
    
    BSTree::Tree tree1 = BSTree::Tree();
    tree1.insert(6);
    
    std::cout <<"Проверка работы конструктора копирования" << std::endl;
    BSTree::Tree tree2 = BSTree::Tree(tree1);
    tree2.print_tree(0);
    
    std::cout <<"Проверка работы оператора копирования" << std::endl;
    BSTree::Tree tree3 = BSTree::Tree();
    tree3 = tree1;
    tree3.print_tree(0);
    
    std::cout <<"Проверка работы конструктора переноса" << std::endl;
    BSTree::Tree tree4 = BSTree::Tree(std::move(tree1));
    tree4.print_tree(0);
    
    std::cout <<"Проверка работы оператора переноса" << std::endl;
    BSTree::Tree tree5 = BSTree::Tree();
    tree5 = std::move(tree1);
    
    std::cout <<"Конструктор с листом" << std::endl;
    std::initializer_list <int> nodes = {6,8,7,9,4,1};
    BSTree::Tree tree = BSTree::Tree(nodes);
    tree.print_tree(0);
    
    std::cout <<"Добавление существующего узла с ключом " << std::endl;
    tree.insert(6);
    tree.print_tree(0);
    REQUIRE(tree.check_existing(6)==true);
    
    std::cout <<"Добавление несуществующих узлов " << std::endl;
    tree.insert(42);
    tree.insert(19);
    tree.insert(17);
    tree.print_tree(0);
    
    std::cout <<"Прямой обход" << std::endl;
    tree.show_nodes(BSTree::traversal_order:: pre_order);
    
    std::cout <<"Поперечный обход" << std::endl;
    tree.show_nodes(BSTree::traversal_order:: in_order);
    
    std::cout <<"Обратный обход" << std::endl;
    tree.show_nodes(BSTree::traversal_order:: post_order);
    
    std::cout <<"Удаление узлов из дерева" << std::endl;
    tree.delete_node(6);
    tree.print_tree(0);
    tree.delete_node(19);
    tree.print_tree(0);
    tree.delete_node(42);
    tree.print_tree(0);
    REQUIRE(tree.check_existing(6)==false);
    tree.delete_node(5);
    
    std::cout <<"Проверка существования файла" << std::endl;
    std::string path1 = "1.txt";
    std::string path2 = "2.txt";
    REQUIRE(interface.check_file_exist(path2)==false);
    
    std::cout <<"Запись в файл" << std::endl;
    interface.work_with_file(tree, 1, false);
    REQUIRE(interface.check_file_exist(path1)==true);
    
    std::cout <<"Загрузка из файла" << std::endl;
    BSTree::Tree tree7;
    tree7.print_tree(0);
    interface.work_with_file(tree7, 2, false);
    tree7.print_tree(0);
}*/
