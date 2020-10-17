import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/widgets/RoundedButton.dart';
import 'package:furn_aldeaa/screens/enter_adress/components/locationCell.dart';
import 'package:furn_aldeaa/screens/home/home_screen.dart';

class EnterAddress extends StatefulWidget {
  static const String id = 'enterAddress';
  @override
  _EnterAdressState createState() => _EnterAdressState();
}

class _EnterAdressState extends State<EnterAddress> {
  int deliveryState = 0;
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 200,
                  child: CupertinoSlidingSegmentedControl(
                      groupValue: 0,
                      backgroundColor: Colors.black12,
                      children: const <int, Widget>{
                        0: Text('Delivery'),
                        1: Text('Pickup'),
                      },
                      onValueChanged: (value) {
                        setState(() {
                          deliveryState = value;
                        });
                      }),
                ),
                IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 30,
                    ),
                    onPressed: null),
              ],
            ),
          ),
          Container(
            height: 10,
            decoration: BoxDecoration(color: Colors.grey.shade200),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: const Alignment(1.0, 1.0),
                children: [
                  TextField(
                    controller: _textController,
                    onChanged: (value) {
                      setState(() {
                        print(value);
                      });
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade300, width: 3.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        prefixIcon: Icon(Icons.location_on),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black38, width: 3.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintText: 'Enter a new address'),
                  ),
                  _textController.text.length > 0
                      ? new IconButton(
                          icon: new Icon(
                            Icons.cancel,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            setState(() {
                              _textController.clear();
                            });
                          })
                      : new Container(
                          height: 0.0,
                        )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ListView(
                children: [
                  LocationCell(
                      location: 'Current location',
                      details: 'Unable to access',
                      isChecked: false,
                      icon: Icons.location_searching),
                  LocationCell(
                    location: 'Banyas Tartous',
                    details: 'some text some text',
                    isChecked: true,
                    icon: Icons.location_on,
                  )
                ],
              ),
            ),
          ),
          RoundedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen()));
            },
            title: "Done",
            backgroundColor: brown,
            textColor: Colors.white,
            icon: null,
            iconColor: Colors.white,
            disabeld: false,
          )
        ],
      ),
    );
  }
}
