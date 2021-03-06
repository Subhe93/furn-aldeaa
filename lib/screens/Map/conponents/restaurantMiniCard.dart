import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';

class RestaurantMiniCard extends StatelessWidget {
  const RestaurantMiniCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/طوشكا.jpg'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Applocalizations.of(context).translate('The Pizza Factory'),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: yellow,
                      ),
                      Text('4.5',
                          style:
                              TextStyle(fontSize: 18, color: Colors.black54)),
                      Text('(1k+)',
                          style:
                              TextStyle(fontSize: 18, color: Colors.black54)),
                      Icon(
                        Icons.circle,
                        color: Colors.black,
                        size: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5),
                        child: Text('\$\$',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black38)),
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.black,
                        size: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5),
                        child: Text('Pizaa',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54)),
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.black,
                        size: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text('Pasta',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        decoration:
                            BoxDecoration(color: yellow.withOpacity(0.3)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              '1 + 1 ' +
                                  Applocalizations.of(context)
                                      .translate("FREE"),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey, width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Text(
                                '30 - 20',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("min")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
