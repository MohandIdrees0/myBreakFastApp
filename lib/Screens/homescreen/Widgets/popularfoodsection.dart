import 'package:flutter/material.dart';

import '../../../modules/Popular.dart';
List<DietFood> popular=sampleDietFoods;
class popularfoodsection extends StatelessWidget {
  const popularfoodsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Popular Food',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),textAlign: TextAlign.start,),
        Container(
          height: MediaQuery.of(context).size.width/2.5+15,
          child: ListView.separated(
            itemCount: popular.length,
              itemBuilder: (_,i){
            return Container(
              padding: EdgeInsets.all(5),
              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: popular[i].color,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.transparent,
                      height: 55,width: 55,
                      child: Image.asset(popular[i].imageAsset)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width:MediaQuery.of(context).size.width-120,
                          child: Center(child: Text(popular[i].name,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white),overflow: TextOverflow.ellipsis,maxLines: 1,))),
                      Text(popular[i].minCalories.toString()+" To "+popular[i].minCalories.toString()+" Cal",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),textAlign: TextAlign.center,)
                    ],
                  )
                ],
              ),
            );
          }, separatorBuilder: (BuildContext context, int index)=>SizedBox(height: 10,),),
        ),
      ],
    );
  }
}
