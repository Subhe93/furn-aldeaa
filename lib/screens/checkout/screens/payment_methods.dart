import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectPaymentMethod extends StatefulWidget {
  @override
  _SelectPaymentMethodState createState() => _SelectPaymentMethodState();
}

class _SelectPaymentMethodState extends State<SelectPaymentMethod> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
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
          onTap: () => setState(() => {selected = id}),
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
}
