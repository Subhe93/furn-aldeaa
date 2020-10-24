import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectPaymentMethod extends StatefulWidget {
  @override
  _SelectPaymentMethodState createState() => _SelectPaymentMethodState();
}

class _SelectPaymentMethodState extends State<SelectPaymentMethod> {
  int selected = 0;
  int currentView = 0;
  List<Widget> pages;

  @override
  void initState() {
    pages = [page1(), page2()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return pages[currentView];
  }

  Widget page2() {
    return Container(
      height: 600,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                child: FlatButton(
                    onPressed: () => {
                          setState(() => {currentView = 0})
                        },
                    child: Icon(Icons.arrow_back_ios_rounded)),
              ),
              Text(
                "Add Card",
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
          Divider(
            height: 5,
          ),
          inputField('Name on card', 'Enter Name here'),
          SizedBox(height: 10),
          customInput(FontAwesomeIcons.ccMastercard, Icons.camera_alt_outlined,
              'Card Number', '****** 888'),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: Colors.black.withOpacity(0.2))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Expiry Date',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    ' *',
                                    style: TextStyle(color: Colors.red),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  width: 130,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'MM/YY',
                                        border: InputBorder.none),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.info_outline_rounded,
                            size: 30,
                            color: Colors.black26,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: Colors.black.withOpacity(0.2))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'CVV',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    ' *',
                                    style: TextStyle(color: Colors.red),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  width: 130,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: '123',
                                        border: InputBorder.none),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.info_outline_rounded,
                            size: 30,
                            color: Colors.black26,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget page1() {
    return Container(
      height: 600,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
              ),
              Text(
                "Select Payment Method",
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
          Divider(
            height: 5,
          ),
          SizedBox(
            height: 10,
          ),
          paymetMethodRow(Icons.attach_money, 'Cash on delivery ', 0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Divider(
              height: 5,
              color: Colors.black45,
            ),
          ),
          paymetMethodRow(Icons.credit_card, 'Add Credit Card', 1),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Divider(
              height: 5,
              color: Colors.black45,
            ),
          ),
          paymetMethodRow(FontAwesomeIcons.applePay, 'Setup Apple Pay', 2)
        ],
      ),
    );
  }

  Widget paymetMethodRow(icon, text, id) {
    var cheked = false;

    if (id == selected) {
      cheked = true;
    } else {
      cheked == false;
    }

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 20),
      child: Container(
        child: InkWell(
          onTap: () => setState(() => {
                selected = id,
                if (id == 1) {currentView = 1}
              }),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 55,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(
                          icon,
                          size: 35,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 2, color: Colors.black26)),
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ],
              ),
              cheked
                  ? Icon(Icons.check)
                  : Container(
                      height: 0,
                      width: 0,
                    )
            ],
          ),
        ),
      ),
    );
  }

  Widget customInput(icon2, icon, text, hint) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.05),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.black.withOpacity(0.2))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        text,
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        ' *',
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        icon2,
                        size: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: hint, border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Icon(
                icon,
                size: 30,
                color: Colors.black26,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget inputField(title, hint) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.05),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.black.withOpacity(0.2))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(title),
                  Text(
                    ' *',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              TextField(
                decoration:
                    InputDecoration(hintText: hint, border: InputBorder.none),
              )
            ],
          ),
        ),
      ),
    );
  }
}
