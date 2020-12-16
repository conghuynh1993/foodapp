import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/models/food.dart';

// ignore: non_constant_identifier_names
var FAKE_CATEGORIES = [
  Category(id: 1, content: 'Pizza', color: Colors.teal),
  Category(id: 2, content: 'Janpanese\'s Food', color: Colors.deepOrange),
  Category(id: 3, content: 'Humburgers', color: Colors.cyanAccent),
  Category(id: 4, content: 'Italia', color: Colors.pink),
  Category(id: 5, content: 'Mike', color: Colors.deepPurple),
  Category(id: 6, content: 'Vegetables', color: Colors.green),
  Category(id: 7, content: 'Phở', color: Colors.deepOrangeAccent),
  Category(id: 8, content: 'Bánh mì', color: Colors.amberAccent),
];

var FAKE_FODD = [
  Food(
      name: 'Hamburger thịt heo',
      urlImage:
      'https://cdn.huongnghiepaau.com/wp-content/uploads/2019/01/banh-hamburger-heo-hap-dan-600x401.jpg',
      duration: Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: ['thịt heo','bắp cải xanh','bắp cải tím','rau ngò', 'ớt xanh'],
      categoryId: 3),
  Food(
      name: 'Hamburger thịt bò',
      urlImage:
      'https://cdn.tgdd.vn/Files/2017/07/03/999119/cach-lam-hamburger-bo-pho-mai-sieu-don-gian-tai-nha.jpg',
      duration: Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['bò băm','đường','hạt nêm','bột chiên xù','phô mai miếng'],
      categoryId: 3),
  Food(
      name: 'Mỳ Spaghettio',
      urlImage:
      'https://focusasiatravel.vn/wp-content/uploads/2018/09/Spaghetti-768x512.jpg',
      duration: Duration(minutes: 25),
      complexity: Complexity.Hard,
      ingredients: ['thịt xông hơi','ớt','cá cơm','nụ bạch hoa','ô liu'],
      categoryId: 4),
  Food(
      name: 'Bánh mì chảo',
      urlImage:
      'https://cdn.huongnghiepaau.com/wp-content/uploads/2019/01/banh-mi-chao-thom-ngon.jpg',
      duration: Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: ['trứng gà','xúc xích','cà chua','dưa leo'],
      categoryId: 8),
  Food(
      name: 'Tonda Pizza',
      urlImage:
          'https://cdn.netspace.edu.vn/2018/10/24/tuyen-phu-bep-lam-viec-tai-pizza-tonda-800.jpg',
      duration: Duration(minutes: 25),
      complexity: Complexity.Hard,
      ingredients: ['tomato', 'Onion', 'Pepperoni'],
      categoryId: 1),
  Food(
      name: 'Sushi',
      urlImage:
          'https://cdn.daynauan.info.vn/wp-content/uploads/2016/09/sushi-cuon-nam.jpg',
      duration: Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['rong biển','cơm','cá ngừ','bơ'],
      categoryId: 2),
  Food(
      name: 'Tempura',
      urlImage:
          'https://achau.net/assets/upload/page/thuong-thuc-mon-tempura-am-thuc-van-hoa-nhat-ban_bE2g63RM.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      ingredients: ['tôm','bột'],
      categoryId: 2),
  Food(
      name: 'sashimi',
      urlImage:
          'https://www.sashimihome.com/wp-content/uploads/An-sashimi-co-tot-khong.jpg',
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Cá','bạch tuộc','lươn','hào'],
      categoryId: 2)
];
