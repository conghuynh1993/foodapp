import 'package:flutter/material.dart';
import 'package:foodapp/categories_page.dart';
import 'package:foodapp/food_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fodd App with Navigator",
      initialRoute: '/',
      routes: {
        '/FoodsPage' : (context) => FoodPage(),
        '/CategoriesPage' : (context) => CategoriesPage()
      },
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          fontFamily: 'Itim'),
      home: Scaffold(
        body: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Food\'s Categories"),
          ),
          body: SafeArea(
            child: CategoriesPage(),
          ),
        )
      ),
    );
  }
}
