import 'package:flutter/cupertino.dart';
import '../../../modules/Category.dart';

List<categor> categories = categor.list();
class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Catagory',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 15,),
        Container(
          height: 100,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, i) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: categories[i].color,
                  ),
                  height: 100,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 45,
                          width: 45,
                          child: Image.asset(categories[i].assetLink)),
                      Text(categories[i].name)
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 25,
              ),
              itemCount: 5),
        )
      ],
    );
  }
}
