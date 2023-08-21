import 'package:flutter/material.dart';
import '../../modules/Dietinfo.dart';

class recomendationScreen extends StatefulWidget {
  final DietList dite;

  const recomendationScreen({Key? key, required this.dite}) : super(key: key);

  @override
  _recomendationScreenState createState() => _recomendationScreenState();
}

class _recomendationScreenState extends State<recomendationScreen> with SingleTickerProviderStateMixin {
  bool isFavorite = false;
  late Animation iconColor;
  late Animation<double> size;
  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 300),vsync: this, );
    size = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 38), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 38, end: 30), weight: 50)
    ]).animate(_controller);

    iconColor =
        ColorTween(begin: Colors.grey[600], end: Colors.red).animate(_controller);
    _controller.addStatusListener((status) {
      status == AnimationStatus.completed
          ? isFavorite = true
          : isFavorite = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          widget.dite.name,
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.end,
        ),
        centerTitle: true,
        elevation: 0.4,
      ),
      body: AnimatedBuilder(
        builder: (context,_){
          return Container(
            child: Column(
              children: [
                Container(
                  color: Colors.blueGrey,
                  child: Hero(tag:widget.dite.key,
                  child: Image.asset(widget.dite.assetLink)),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.dite.name,
                            style: TextStyle(
                                fontSize: 20, color: Colors.purpleAccent.shade200),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                print(isFavorite);
                                !isFavorite
                                    ? _controller.forward()
                                    : _controller.reverse();
                              });
                            },
                            icon:Icon(
                              Icons.favorite,
                              color: iconColor.value,
                              size: size.value,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Text(
                          widget.dite.description,
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'font1', color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }, animation: _controller,
      ),
    );
  }
}
