import 'package:flutter/material.dart';

class DietList {
  late String key; // New field for key
  late String name;
  late String assetLink;
  late String cal;
  late Color color;
  late String description;
  late bool isselected = false;
  static late int prevselected = 0;

  DietList(String key, String name, String link, Color color, String cal, String description) {
    this.key = key;
    this.name = name;
    this.assetLink = link;
    this.color = color;
    this.cal = cal;
    this.description = description;
  }

  static List<DietList> list() {
    return [
      DietList(
          '1',
          'vegan',
          'images/food/vegan.png',
          Colors.blue.shade200,
          "26 | Kal | 23 St",
          "A vegan diet is a plant-based diet that excludes all animal products, including meat, dairy, and eggs. It focuses on consuming fruits, vegetables, grains, legumes, nuts, and seeds, and is often chosen for ethical, environmental, and health reasons."
      ),
      DietList(
          '2',
          'Salad',
          'images/food/diet.png',
          Colors.green.shade200,
          "35 | Kal | 3 St",
          "Salad is a nutritious dish made with a variety of fresh vegetables, greens, and often accompanied by protein sources such as chicken, fish, or tofu. It's a popular choice for those looking to eat light and maintain a healthy lifestyle."
      ),
      DietList(
          '3',
          'watermelon',
          'images/food/watermelon.png',
          Colors.tealAccent.shade200,
          "23 | Kal | 12 St",
          "Watermelon is a hydrating and delicious fruit that's perfect for hot days. It's low in calories, high in water content, and rich in vitamins and antioxidants. Enjoy it as a refreshing snack or as part of your summer diet."
      ),
      DietList(
          '4',
          'raspberry',
          'images/food/raspberry.png',
          Colors.purpleAccent.shade200,
          "11 | Kal | 13 St",
          "Raspberries are small, vibrant berries packed with nutrients and antioxidants. They are known for their sweet-tart flavor and are often added to breakfasts, desserts, and smoothies. Including raspberries in your diet can provide various health benefits."
      ),
    ];
  }
}
