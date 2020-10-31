import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';

class UpcomingOrder extends StatelessWidget {
  const UpcomingOrder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
            height: 20,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      Applocalizations.of(context)
                          .translate('The Pizza Factory'),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                          Applocalizations.of(context)
                                  .translate("Estimated Arrival") +
                              "   ",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal)),
                      Text('19:15 - 19:30',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('Order',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal)),
                      Text('#1333',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal))
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              height: 60,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child: Icon(
                      FontAwesomeIcons.truck,
                      size: 28,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: yellow),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                      Applocalizations.of(context)
                          .translate("Your Food is on its way"),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Divider(
              height: 30,
            ),
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
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('بيتزا الضيعة',
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
                                        .translate('Pepperoni'),
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
              height: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Applocalizations.of(context).translate("Subtotal"),
                        style: TextStyle(fontSize: 17, color: Colors.black54)),
                    Text('\$29.22',
                        style: TextStyle(fontSize: 17, color: Colors.black54))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Applocalizations.of(context).translate("Subtotal"),
                        style: TextStyle(fontSize: 17, color: Colors.black54)),
                    Text('\$29.22',
                        style: TextStyle(fontSize: 17, color: Colors.black54))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Applocalizations.of(context).translate('Subtotal'),
                        style: TextStyle(fontSize: 17, color: Colors.black54)),
                    Text('\$29.22',
                        style: TextStyle(fontSize: 17, color: Colors.black54))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Applocalizations.of(context).translate("Total"),
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold)),
                    Text('\$29.22',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 30,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(Applocalizations.of(context).translate("Get Help"),
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.normal))),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: yellow, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  Applocalizations.of(context).translate("ُTrack Order"),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
