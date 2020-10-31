import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';

class DeliveryTime extends StatefulWidget {
  @override
  _DeliveryTimeState createState() => _DeliveryTimeState();
}

class _DeliveryTimeState extends State<DeliveryTime> {
  bool asap = false;
  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
              ),
              Text(
                Applocalizations.of(context).translate("Delivery Time"),
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
          Row(
            children: <Widget>[
              Checkbox(
                  activeColor: yellow,
                  value: asap,
                  onChanged: (value) {
                    setState(() {
                      asap = value;
                    });
                  }),
              Text(
                Applocalizations.of(context).translate("ASAP"),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              Applocalizations.of(context).translate("Choose Delivery Time:"),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          !asap
              ? Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        height: 90,
                        width: 300,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.dateAndTime,
                          initialDateTime: time,
                          onDateTimeChanged: (dateTime) {
                            setState(() {
                              time = dateTime;
                            });
                          },
                        )),
                  ],
                )
              : Container(
                  height: 90,
                  width: 0,
                ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: yellow.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Applocalizations.of(context)
                            .translate("Set Delivery Time"),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
