import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';

class editItem extends StatefulWidget {
  static String id = 'edit_item';
  @override
  _editItemState createState() => _editItemState();
}

class _editItemState extends State<editItem> {
  int _variationValue = 0;
  bool checkBox1Value = false;
  int quantity = 0;
  bool emptyCart = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Stack(children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
              ),
              Text(
                "بيتزا الضيعة",
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
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 1,
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
                            .translate("EXTRA TOPPINGS"),
                        style: TextStyle(fontWeight: FontWeight.bold)),
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
                                            onChanged: (bool newValue) {
                                              setState(() {
                                                checkBox1Value = newValue;
                                              });
                                            }),
                                        Text(
                                          Applocalizations.of(context)
                                              .translate("Peperoncino"),
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '+\$5,00',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black26),
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
                                            onChanged: (bool newValue) {
                                              setState(() {
                                                checkBox1Value = newValue;
                                              });
                                            }),
                                        Text(
                                          Applocalizations.of(context)
                                              .translate("Peperoncino"),
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '+\$5,00',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black26),
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
                                            onChanged: (bool newValue) {
                                              setState(() {
                                                checkBox1Value = newValue;
                                              });
                                            }),
                                        Text(
                                          Applocalizations.of(context)
                                              .translate("Mashrooms"),
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '+\$5,00',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black26),
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
                                            onChanged: (bool newValue) {
                                              setState(() {
                                                checkBox1Value = newValue;
                                              });
                                            }),
                                        Text(
                                          Applocalizations.of(context)
                                              .translate("Olives"),
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '+\$5,00',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black26),
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
                        Applocalizations.of(context).translate("EXTRA SAUSE"),
                        style: TextStyle(fontWeight: FontWeight.bold)),
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
                                            onChanged: (bool newValue) {
                                              setState(() {
                                                checkBox1Value = newValue;
                                              });
                                            }),
                                        Text(
                                          Applocalizations.of(context)
                                              .translate("Tomato Sause"),
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '+\$5,00',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black26),
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
                                            onChanged: (bool newValue) {
                                              setState(() {
                                                checkBox1Value = newValue;
                                              });
                                            }),
                                        Text(
                                          Applocalizations.of(context)
                                              .translate("Spicy Ketschup"),
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '+\$5,00',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black26),
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
                                            onChanged: (bool newValue) {
                                              setState(() {
                                                checkBox1Value = newValue;
                                              });
                                            }),
                                        Text(
                                          Applocalizations.of(context)
                                              .translate("Sweet Ketchup"),
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '+\$5,00',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black26),
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
                                .translate("Add Instructions (eg. no onions)")),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Applocalizations.of(context).translate("QUANTITY"),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            InkWell(
                              onTap: () => {
                                setState(() => {
                                      quantity = quantity + 1,
                                      if (quantity > 0) {emptyCart = false}
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
                                  fontSize: 25, color: Colors.black54),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => {
                                setState(() => {
                                      if (quantity >= 1)
                                        {quantity = quantity - 1},
                                      if (quantity == 0) {emptyCart = true}
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
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Text(
                            Applocalizations.of(context)
                                .translate("Remove From Cart"),
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 30.0),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                    color: yellow.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        Applocalizations.of(context)
                                            .translate("Update Cart"),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('\$9.99',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  height: 310,
                  decoration: BoxDecoration(color: Colors.black12),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
