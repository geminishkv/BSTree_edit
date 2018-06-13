//  BSTree_dev
//  tree-cli.cpp
//  Created by Zinchenko && Shmakov /bmstu/.
//  Copyright © 2018 iso4datel && geminishkv. All rights reserved.
//

#include <catch.hpp>
#include <tree.hpp>

TEST_CASE("Test tree", "[tree]"){
	
	// experimental
	std::string path = "test.txt";
	std::initializer_list<BSTree::Data> exp_list = { 1, 2, 12, 0, 10, 3, 4, 5 };
	std::vector<BSTree::Data> exp_vector(exp_list);

    std::cout <<"Проверка работы сообщений для пустого дерева" << std::endl;
	BSTree::Tree tree_empty;
	REQUIRE(tree_empty.exists(10) == false);
	REQUIRE(tree_empty.remove(10) == false);
	REQUIRE(tree_empty.save("test.txt") == false);
	REQUIRE(tree_empty.isEmprty() == true);
	REQUIRE(tree_empty.insert(20) == true); // now not empty

	std::cout << "Проверка работы конструкторов" << std::endl;
	BSTree::Tree tree_constructors1;						// empty
	tree_constructors1.print(BSTree::traversal_order::pre);
	BSTree::Tree tree_constructors2(exp_list);				// list
	tree_constructors2.print(BSTree::traversal_order::pre);
	BSTree::Tree tree_constructors3(tree_constructors2);	// copy
	tree_constructors3.print(BSTree::traversal_order::pre);
	BSTree::Tree tree_constructors4(BSTree::Tree({ 1,2 }));	// &&
	tree_constructors4.print(BSTree::traversal_order::pre);
	BSTree::Tree tree_constructors5(exp_vector);			// vector				
	tree_constructors5.print(BSTree::traversal_order::pre);


	std::cout << "Проверка работы операторов" << std::endl;
	BSTree::Tree tree_operators1;
	tree_operators1 = tree_constructors5;				// =&
	tree_operators1.print(BSTree::traversal_order::pre);
	BSTree::Tree tree_operators5;
	tree_operators5 = BSTree::Tree(exp_list);			// =&&
	tree_operators5.print(BSTree::traversal_order::pre);

	std::cout << "Проверка методов" << std::endl;
	//BSTree::Tree methods(tree_constructors2);
	BSTree::Tree methods(exp_list);
	methods.show();

	REQUIRE(methods.insert(11) == true);
	REQUIRE(methods.insert(11) == false);

	REQUIRE(methods.exists(11) == true);
	REQUIRE(methods.exists(151) == false);

	REQUIRE(methods.remove(11) == true);
	REQUIRE(methods.remove(151) == false);

	bool file = methods.save(path);
	REQUIRE(file == true);
	REQUIRE(methods.load(path) == true);

	if (file)
		remove(path.c_str());
	
	std::cout << "Проверка вывода и обходов" << std::endl;
	//BSTree::Tree orders(tree_constructors2);
	BSTree::Tree orders(exp_list);
	//orders.show();
	orders.print(BSTree::traversal_order::pre);
	orders.print(BSTree::traversal_order::in);
	orders.print(BSTree::traversal_order::post);

}
