import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/orders/pastOrderDetails.dart';
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
            return InkWell(
              onTap: () => openOrderDetailsSheet(context),
              child: OrderItemCell(
                order: pastOrders[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

void openOrderDetailsSheet(context) async {
  showModalBottomSheet<dynamic>(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      context: (context),
      isDismissible: false,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: OrderDetails(),
        );
      });
}
