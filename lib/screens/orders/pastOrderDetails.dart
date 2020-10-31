import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';

class OrderDetails extends StatefulWidget {
  static String id = 'order_details';
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "The Pizza Factory",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 60,
                    child: FlatButton(
                        onPressed: () => {Navigator.pop(context)},
                        child: Icon(Icons.cancel)),
                  )
                ],
              ),
            ),
            Divider(
              height: 5,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                height: 135,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('images/بيتزا مارغريتا.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                            Applocalizations.of(context)
                                    .translate("Estimated Arrival") +
                                ":",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal)),
                        Text('19:15 - 19:30',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(Applocalizations.of(context).translate("Order"),
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal)),
                        Text('#1333',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 23,
                                height: 23,
                                child: Icon(
                                  Icons.check,
                                  size: 17,
                                  color: Colors.green,
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green.shade100),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  Applocalizations.of(context)
                                      .translate("Delivered"),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal))
                            ],
                          ),
                          Container(
                            child: RatingBar(
                              itemSize: 20,
                              initialRating: 5,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Divider(
                height: 5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Icon(
                            Icons.close,
                            size: 25,
                          ),
                          Column(
                            children: [
                              Text('HotDog Pizza',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20)),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                      Applocalizations.of(context)
                                          .translate("Pepperoni"),
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      )),
                                  Text('+(\$50)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Text('\$' + '200',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Divider(
                height: 5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Applocalizations.of(context).translate('Subtotal'),
                          style:
                              TextStyle(fontSize: 17, color: Colors.black54)),
                      Text('\$29.22',
                          style: TextStyle(fontSize: 17, color: Colors.black54))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Applocalizations.of(context).translate('Subtotal'),
                          style:
                              TextStyle(fontSize: 15, color: Colors.black54)),
                      Text('\$29.22',
                          style: TextStyle(fontSize: 15, color: Colors.black54))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Applocalizations.of(context).translate('Subtotal'),
                          style:
                              TextStyle(fontSize: 15, color: Colors.black54)),
                      Text('\$29.22',
                          style: TextStyle(fontSize: 15, color: Colors.black54))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Applocalizations.of(context).translate('Total'),
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold)),
                      Text('\$29.22',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
            Divider(
              height: 5,
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text(Applocalizations.of(context).translate("Get Help"),
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal))),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: yellow, borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    Applocalizations.of(context).translate("Reorder"),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
