
import 'package:flutter/material.dart';

class categor {
  late String name;
  late String assetLink;
  late Color color;
  categor(String name, String link,Color color) {
    this.name = name;
    this.assetLink = link;
    this.color=color;
  }
  static List<categor> list() {
    return [
      categor('donut', 'images/food/donut.png',Colors.green.shade200),
      categor('hamburger', 'images/food/hamburger.png',Colors.red.shade200),
      categor('pizza', 'images/food/pizza.png',Colors.blue.shade200),
      categor('roasted', 'images/food/roasted-chicken.png',Colors.purpleAccent.shade200),
      categor('vegetable', 'images/food/vegetable.png',Colors.tealAccent.shade200),
    ];
  }
}
