import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DeliverAddress extends StatefulWidget {
  static String id = 'delivery_address';
  @override
  _DeliverAddressState createState() => _DeliverAddressState();
}

class _DeliverAddressState extends State<DeliverAddress> {
  int segment = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                  "Delivery Address",
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
            Container(
              height: 50,
              width: 300,
              child: CupertinoSlidingSegmentedControl(
                  groupValue: segment,
                  backgroundColor: Colors.black12,
                  children: const <int, Widget>{
                    0: Text('Home'),
                    1: Text('Work'),
                    2: Text('Other')
                  },
                  onValueChanged: (value) {
                    setState(() {
                      segment = value;
                    });
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            InputBox(
                'Enter Delivery Address', 'Delivery Address', false, false),
            InputBox('eg.A5', 'Enter Building Name', false, false),
            InputBox('eg.6th floor ,n199', 'Apartment/Suite', false, true),
            InputBox('eg.Doorbell broken, please yell of knock hard',
                'Note to ridder', true, true)
          ],
        ),
      ),
    );
  }

  Widget InputBox(hint, label, longText, optional) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: longText ? 120 : 80,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.03),
          border: Border.all(width: 2, color: Colors.black26),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4),
              child: Row(
                children: [
                  Text(
                    label,
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  optional ? Text(' (optional)') : Text(' *'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: TextFormField(
                maxLines: longText ? 2 : 1,
                onTap: () {
                  setState(() {});
                },
                textInputAction: TextInputAction.done,
                onChanged: (value) {
                  setState(() {});
                },
                decoration:
                    InputDecoration(hintText: hint, border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
