import 'package:breakfast/modules/Dietinfo.dart';
import 'package:flutter/material.dart';

import '../../RecomendationScreen/recomendationScreen.dart';
List<DietList> DietInfo = DietList.list();

class Diet extends StatefulWidget {
  const Diet({Key? key}) : super(key: key);

  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 25,
        ),
        Text(
          'Recomendation \n for Diet',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        Container(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) {
              return GestureDetector(
                onVerticalDragCancel: () {
                  setState(() {
                    DietInfo[DietList.prevselected].isselected=false;
                    DietList.prevselected=i;
                    DietInfo[i].isselected=true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: DietInfo[i].isselected?DietInfo[i].color:DietInfo[i].color.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15)),
                  height: 150,
                  width: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 45,
                          width: 45,
                          child: Hero(tag: DietInfo[i].key,
                          child: Image.asset(DietInfo[i].assetLink))),
                      Text(DietInfo[i].cal),
                      Text(DietInfo[i].name.toUpperCase()),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            gradient:DietInfo[i].isselected?LinearGradient(colors: [Colors.red,Colors.tealAccent.shade700]): LinearGradient(colors: [Colors.red.shade200,Colors.blue.shade300])),
                        height: 40,
                        width: 70,
                        child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=> recomendationScreen( dite: DietInfo[i],)));
                            },
                            child: Text('View',style: TextStyle(color: Colors.white,fontSize: 15),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, Builder) => SizedBox(
              width: 25,
            ),
            itemCount: DietInfo.length,
          ),
        )
      ],
    );
  }
}
