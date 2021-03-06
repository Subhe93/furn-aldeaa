import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';
import 'package:furn_aldeaa/models/offer_model.dart';

class OrderItemCell extends StatelessWidget {
  final OrderModel order;

  const OrderItemCell({
    Key key,
    this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(order.image))),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        order.Resturant,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Container(child: Text('\$29.22'))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '20 Jan 2020 at 19:20',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black38),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          child: Icon(
                            order.Delivered ? Icons.check : Icons.close,
                            size: 20,
                            color: order.Delivered ? Colors.green : Colors.red,
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: order.Delivered
                                  ? Colors.green.shade100
                                  : Colors.red.shade100),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        order.Delivered
                            ? Text(
                                Applocalizations.of(context)
                                    .translate('Delivered'),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal))
                            : Text(
                                Applocalizations.of(context)
                                    .translate("Canceled"),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal)),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    order.Delivered
                        ? Container(
                            child: RatingBar(
                              itemSize: 20,
                              initialRating: order.rating,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 0.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 10,
                              ),
                            ),
                          )
                        : Container(
                            width: 0,
                            height: 0,
                          )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
