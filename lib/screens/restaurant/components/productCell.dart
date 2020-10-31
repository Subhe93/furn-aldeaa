import 'package:flutter/material.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/item/item.dart';
import '../../../Constants.dart';

class ProductCell extends StatelessWidget {
  final Product product;
  const ProductCell({
    Key key,
    this.product,
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
                    this.product.title,
                    style: TextStyle(fontSize: 17, color: kTextColor),
                  ),
                  Text(this.product.descriptions,
                      style: TextStyle(fontSize: 15, color: kTextColor)),
                  Text('\$' + this.product.price,
                      style: TextStyle(fontSize: 17, color: kTextColor))
                ],
              ),
              Container(
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(this.product.image))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
