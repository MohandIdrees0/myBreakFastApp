import 'package:breakfast/Screens/homescreen/Widgets/Category.dart';
import 'package:flutter/material.dart';
import 'Widgets/appbar.dart';
import '../../modules/Category.dart';
import 'Widgets/DietSection.dart';
import 'Widgets/popularfoodsection.dart';
class homeScreen extends StatefulWidget {
  homeScreen({super.key});
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset:false,
      backgroundColor: Colors.white,
      appBar: appbar(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Textfeild(context),
            SizedBox(
              height: 25,
            ),
            Category(),
            Diet(),
            SizedBox(height: 25,),
            popularfoodsection(),
          ],
        ),
      ),
    );
  }



  Container Textfeild(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 40,
            spreadRadius: 0,
            color: Colors.blue.withOpacity(0.05))
      ]),
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue.shade400)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            filled: true,
            prefixIcon: Icon(Icons.search),
            hintText: "BreakFast Stlye",
            fillColor: Colors.white24,
            suffixIcon: Container(
              width: MediaQuery.of(context).size.width / 13,
              child: const IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.1,
                    ),
                    Icon(Icons.add)
                  ],
                ),
              ),
            )),
        textAlign: TextAlign.center,
      ),
    );
  }
}

