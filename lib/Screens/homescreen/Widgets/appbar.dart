import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget{
  const appbar({super.key});
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Text(
        "BreakFast",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          print(1);
        },
        child: Container(
            margin: EdgeInsets.all(15), child: Image.asset('images/left.png')),
      ),
      actions: [
        Container(
            margin: EdgeInsets.all(12), child: Image.asset('images/search.png'))
      ],
    );
  }
}
