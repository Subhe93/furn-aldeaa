import 'package:flutter/material.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';

import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/Constants.dart';

class Item extends StatefulWidget {
  static String id = 'item';
  final Dish dish;

  Item({this.dish});
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int _variationValue = 0;
  bool checkBox1Value = false;
  int quantity = 0;
  bool emptyCart = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: Colors.white),
      child: Scaffold(
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                    expandedHeight: 250,
                    automaticallyImplyLeading: false,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/بيتزا الدجاج.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, top: 40),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: InkWell(
                                onTap: () => {Navigator.pop(context)},
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white),
                                    height: 30,
                                    width: 30,
                                    child: Icon(Icons.close)),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(25.0)),
                                color: Colors.white,
                              ),
                              height: 30,
                            ),
                          )
                        ],
                      ),
                    )),
                Container(
                  child: SliverList(
                      delegate: SliverChildListDelegate([
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'بيتزا الدجاج',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              Applocalizations.of(context).translate(
                                  "Moazarella,Rocket leavs, Moazarella,Rocket leavs,Moazarella,Rocket leavs, Moazarella,Rocket leavs,Moazarella,Rocket leavs, Moazarella,Rocket leavs"),
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 10,
                            decoration: BoxDecoration(color: Colors.black12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Theme(
                            data: ThemeData(accentColor: Colors.black),
                            child: ExpansionTile(
                              title: Text(
                                  Applocalizations.of(context)
                                      .translate("VARIATION"),
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              children: [
                                Divider(
                                  height: 10,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, bottom: 8.0, right: 8.0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        _myRadioButton(
                                          isBold: false,
                                          title: Applocalizations.of(context)
                                              .translate("Small - 24 cm"),
                                          value: 0,
                                          groupValue: _variationValue,
                                          onChanged: (newValue) => setState(
                                              () => _variationValue = newValue),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30.0),
                                          child: Divider(
                                            height: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        _myRadioButton(
                                          isBold: false,
                                          title: Applocalizations.of(context)
                                              .translate("Medium - 32 cm"),
                                          value: 1,
                                          groupValue: _variationValue,
                                          onChanged: (newValue) => setState(
                                              () => _variationValue = newValue),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30.0),
                                          child: Divider(
                                            height: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        _myRadioButton(
                                          isBold: false,
                                          title: Applocalizations.of(context)
                                              .translate("Larg -  42 cm"),
                                          value: 2,
                                          groupValue: _variationValue,
                                          onChanged: (newValue) => setState(
                                              () => _variationValue = newValue),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                            decoration: BoxDecoration(color: Colors.black12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Theme(
                            data: ThemeData(accentColor: Colors.black),
                            child: ExpansionTile(
                              title: Text(
                                  Applocalizations.of(context)
                                      .translate("Extra Toppings"),
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              children: [
                                Divider(
                                  height: 10,
                                  color: Colors.black,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  new Checkbox(
                                                      value: checkBox1Value,
                                                      activeColor: yellow,
                                                      onChanged:
                                                          (bool newValue) {
                                                        setState(() {
                                                          checkBox1Value =
                                                              newValue;
                                                        });
                                                      }),
                                                  Text(
                                                    Applocalizations.of(context)
                                                        .translate(
                                                            'Peperoncino'),
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                '+\$5,00',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black26),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 5,
                                            color: Colors.black,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  new Checkbox(
                                                      value: checkBox1Value,
                                                      activeColor: yellow,
                                                      onChanged:
                                                          (bool newValue) {
                                                        setState(() {
                                                          checkBox1Value =
                                                              newValue;
                                                        });
                                                      }),
                                                  Text(
                                                    Applocalizations.of(context)
                                                        .translate(
                                                            'Peperoncino'),
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                '+\$5,00',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black26),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 5,
                                            color: Colors.black,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  new Checkbox(
                                                      value: checkBox1Value,
                                                      activeColor: yellow,
                                                      onChanged:
                                                          (bool newValue) {
                                                        setState(() {
                                                          checkBox1Value =
                                                              newValue;
                                                        });
                                                      }),
                                                  Text(
                                                    Applocalizations.of(context)
                                                        .translate("Mashrooms"),
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                '+\$5,00',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black26),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 5,
                                            color: Colors.black,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  new Checkbox(
                                                      value: checkBox1Value,
                                                      activeColor: yellow,
                                                      onChanged:
                                                          (bool newValue) {
                                                        setState(() {
                                                          checkBox1Value =
                                                              newValue;
                                                        });
                                                      }),
                                                  Text(
                                                    Applocalizations.of(context)
                                                        .translate("Olives"),
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                '+\$5,00',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black26),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                            decoration: BoxDecoration(color: Colors.black12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Theme(
                            data: ThemeData(accentColor: Colors.black),
                            child: ExpansionTile(
                              title: Text(
                                  Applocalizations.of(context)
                                      .translate("Extra Sause"),
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              children: [
                                Divider(
                                  height: 10,
                                  color: Colors.black,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  new Checkbox(
                                                      value: checkBox1Value,
                                                      activeColor: yellow,
                                                      onChanged:
                                                          (bool newValue) {
                                                        setState(() {
                                                          checkBox1Value =
                                                              newValue;
                                                        });
                                                      }),
                                                  Text(
                                                    Applocalizations.of(context)
                                                        .translate(
                                                            "Tomato Sause"),
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                '+\$5,00',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black26),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 5,
                                            color: Colors.black,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  new Checkbox(
                                                      value: checkBox1Value,
                                                      activeColor: yellow,
                                                      onChanged:
                                                          (bool newValue) {
                                                        setState(() {
                                                          checkBox1Value =
                                                              newValue;
                                                        });
                                                      }),
                                                  Text(
                                                    Applocalizations.of(context)
                                                        .translate(
                                                            "Spicy Katchup"),
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                '+\$5,00',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black26),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 5,
                                            color: Colors.black,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  new Checkbox(
                                                      value: checkBox1Value,
                                                      activeColor: yellow,
                                                      onChanged:
                                                          (bool newValue) {
                                                        setState(() {
                                                          checkBox1Value =
                                                              newValue;
                                                        });
                                                      }),
                                                  Text(
                                                    Applocalizations.of(context)
                                                        .translate(
                                                            "Sweet Katchup"),
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                '+\$5,00',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black26),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                            decoration: BoxDecoration(color: Colors.black12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: 50,
                              child: Center(
                                child: TextField(
                                  style: TextStyle(fontSize: 18),
                                  onChanged: (value) {
                                    setState(() {
                                      print(value);
                                    });
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 5.0),
                                      hintText: Applocalizations.of(context)
                                          .translate(
                                              "Add Instructions (eg. no onions)")),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                            decoration: BoxDecoration(color: Colors.black12),
                          ),
                          Container(
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      Applocalizations.of(context)
                                          .translate("Quantity"),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () => {
                                          setState(() => {
                                                quantity = quantity + 1,
                                                if (quantity > 0)
                                                  {emptyCart = false}
                                              })
                                        },
                                        child: Icon(
                                          Icons.add_circle_outline_sharp,
                                          color: Colors.black87,
                                          size: 32,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        quantity.toString(),
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.black54),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () => {
                                          setState(() => {
                                                if (quantity >= 1)
                                                  {quantity = quantity - 1},
                                                if (quantity == 0)
                                                  {emptyCart = true}
                                              })
                                        },
                                        child: Icon(
                                          Icons.remove_circle_outline_sharp,
                                          color: Colors.black87,
                                          size: 32,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            decoration: BoxDecoration(color: Colors.black12),
                          ),
                        ],
                      ),
                    )
                  ])),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: emptyCart
                            ? yellow.withOpacity(0.3)
                            : yellow.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Applocalizations.of(context)
                                .translate("Add To Cart"),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('\$9.99',
                              style: TextStyle(
                                fontSize: 20,
                              ))
                        ],
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget _myRadioButton(
      {String title, int value, Function onChanged, groupValue, bool isBold}) {
    return Container(
      height: 40,
      child: RadioListTile(
        value: value,
        activeColor: yellow,
        groupValue: groupValue,
        onChanged: onChanged,
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      ),
    );
  }
}
