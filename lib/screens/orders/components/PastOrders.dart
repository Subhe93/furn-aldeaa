import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'OrderItemCell.dart';

class PastOrders extends StatelessWidget {
  const PastOrders({
    Key key,
    @required this.pastOrders,
  }) : super(key: key);

  final List<OrderModel> pastOrders;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: pastOrders.length,
          itemBuilder: (context, index) {
            return OrderItemCell(
              order: pastOrders[index],
            );
          },
        ),
      ),
    );
  }
}
