import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';

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
                  Applocalizations.of(context).translate("Delivery Address"),
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
                  children: <int, Widget>{
                    0: Text(Applocalizations.of(context).translate('Home')),
                    1: Text(Applocalizations.of(context).translate("Wrok")),
                    2: Text(Applocalizations.of(context).translate("Other"))
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
                Applocalizations.of(context)
                    .translate('Enter Delivery Address'),
                Applocalizations.of(context).translate("Delivery Address"),
                false,
                false),
            InputBox(
                'eg.A5',
                Applocalizations.of(context).translate("Enter Building Name"),
                false,
                false),
            InputBox(
                'eg.6th floor ,n199',
                Applocalizations.of(context).translate("Apartment/Suite"),
                false,
                true),
            InputBox(
                Applocalizations.of(context)
                    .translate("eg.Doorbell broken, please yell of knock hard"),
                Applocalizations.of(context).translate("Note to ridder"),
                true,
                true)
          ],
        ),
      ),
    );
  }

  Widget InputBox(hint, label, longText, optional) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: longText ? 120 : 90,
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
                  optional
                      ? Text(
                          Applocalizations.of(context)
                              .translate("  (optional)"),
                        )
                      : Text(' *'),
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
