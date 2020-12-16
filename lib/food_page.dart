import 'package:flutter/material.dart';
import 'package:foodapp/fake_data.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/models/food.dart';
import 'detail_food_page.dart';

class FoodPage extends StatelessWidget {

  static const String routeName = '/FoodsPage';

  Category category;
  FoodPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];
    List<Food> foods =
        FAKE_FODD.where((food) => food.categoryId == this.category.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Food from ${category.content}"),
        centerTitle: true,
      ),
      body: Center(
        child: Center(
          child: foods.length >0 ? ListView.builder(
              itemCount: foods.length,
              itemBuilder: (context, index) {
                Food food = foods[index];
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DetailFoodPage(food: food))
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          clipBehavior: Clip.hardEdge,
                          child: Center(
                            child: FadeInImage.assetNetwork(
                                placeholder: '',
                                image: food.urlImage),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 30,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 2,color: Colors.white)
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.white,
                                size: 25,
                              ),
                              Text(
                                '${food.duration.inMinutes} minutes',
                                style: TextStyle(fontSize: 22, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                );
              }) :
          Text("No food found",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
