import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import 'food_page.dart';

class CategoryItem extends StatelessWidget {

  Category category;
  CategoryItem({this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return InkWell(
      onTap: () {
        print("taped category item ${this.category.content}");
        /*Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => FoodPage(category: this.category,))
        );*/
        Navigator.pushNamed(context, FoodPage.routeName,
            arguments: {'category': category});
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                this.category.content,
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: '',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ]),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              colors: [_color.withOpacity(0.8), _color],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
          color: _color,
        ),
      ),
    );
  }
}
