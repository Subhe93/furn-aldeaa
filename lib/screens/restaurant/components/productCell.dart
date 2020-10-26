import 'package:flutter/material.dart';
import 'package:furn_aldeaa/screens/item/item.dart';
import '../../../Constants.dart';

class ProductCell extends StatelessWidget {
  const ProductCell({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
      child: InkWell(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Item())),
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Pizza 1+1 Free',
                    style: TextStyle(fontSize: 17, color: kTextColor),
                  ),
                  Text('Choose 1 pizza and get 1 for free',
                      style: TextStyle(fontSize: 15, color: kTextColor)),
                  Text('\$44.42',
                      style: TextStyle(fontSize: 17, color: kTextColor))
                ],
              ),
              Container(
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/طوشكا.jpg'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
