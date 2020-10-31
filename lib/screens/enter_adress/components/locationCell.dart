import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/widgets/RoundedButton.dart';

class LocationCell extends StatelessWidget {
  String location;
  String details;
  IconData icon;
  bool isChecked;

  LocationCell({this.location, this.details, this.icon, this.isChecked});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        icon,
                        size: 30,
                        color: Colors.black38,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.white, width: 1),
                        shape: BoxShape.circle,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        location,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        details,
                      ),
                    ],
                  ),
                ],
              ),
              isChecked
                  ? Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Icon(
                        Icons.check,
                        color: Colors.black38,
                      ),
                    )
                  : new Container(
                      height: 0.0,
                    )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Divider(
              height: 5,
              color: Colors.black26,
            ),
          )
        ],
      ),
    );
  }
}
