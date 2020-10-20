import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';

class Cart extends StatefulWidget {
  static String id = "cart";
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                ),
                Text(
                  "Your Cart - The Pizza Factory",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 60,
                  child: FlatButton(
                      onPressed: () => {Navigator.pop(context)},
                      child: Icon(
                        Icons.close,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          Container(
            height: 10,
            decoration: BoxDecoration(color: Colors.black12),
          ),
          Container(
            height: 60,
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
                      Text('Quattro Formaggi Pizza',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20))
                    ],
                  ),
                  Text('\$29.99',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20))
                ],
              ),
            ),
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Popular with Order'),
                ),
                Container(
                  height: 140,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [PopularDish(), PopularDish()],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget PopularDish() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/سلطة الباستا.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Choclate Pancackes',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Desert',
                    style: TextStyle(fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('\$2.99'),
                      SizedBox(
                        width: 70,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: yellow,
                          ),
                          Text('Add')
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
