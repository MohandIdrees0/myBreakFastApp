import 'package:flutter/material.dart';

class DietFood {
  final String name;
  final String imageAsset; // You can use an image asset or network URL here
  final int minCalories;
  final int maxCalories;
  final Color color;

  DietFood({
    required this.name,
    required this.imageAsset,
    required this.minCalories,
    required this.maxCalories,
    required this.color,
  });
}

List<DietFood> sampleDietFoods = [
  DietFood(
    name: 'Salad with Grilled Chicken',
    imageAsset: 'images/food/popular/hot-pot.png',
    minCalories: 300,
    maxCalories: 400, color: Colors.blue.shade200,
  ),
  DietFood(
    name: 'Greek Yogurt with Berries',
    imageAsset: 'images/food/popular/diet.png',
    minCalories: 150,
    maxCalories: 200, color:Colors.purpleAccent.shade200,
  ),
  DietFood(
    name: 'Oatmeal with Fruit',
    imageAsset: 'images/food/popular/dish.png',
    minCalories: 200,
    maxCalories: 300, color: Colors.green.shade200,
  ),
  DietFood(
    name: 'Grilled Fish with Steamed Vegetables',
    imageAsset: 'images/food/popular/pancakes.png',
    minCalories: 250,
    maxCalories: 350, color: Colors.blue.shade200,
  ),
  DietFood(
    name: 'Quinoa Salad with Veggies',
    imageAsset: 'images/food/popular/salad.png',
    minCalories: 200,
    maxCalories: 300, color: Colors.tealAccent.shade200,
  ),
];