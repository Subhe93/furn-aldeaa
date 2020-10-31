import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';
import 'package:furn_aldeaa/widgets/CustomRadioButton.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/models/offer_model.dart';

class Filter extends StatefulWidget {
  static String id = "filter";
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int _groupValue = 0;
  int _secondGroup = 0;
  List<RadioModel> sampleData = new List<RadioModel>();

  void initState() {
    super.initState();
    sampleData.add(new RadioModel(true, '\$'));
    sampleData.add(new RadioModel(false, '\$\$'));
    sampleData.add(new RadioModel(false, '\$\$\$'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    Applocalizations.of(context).translate("Filter"),
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
            Divider(
              height: 5,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(Applocalizations.of(context).translate("Sort"),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 170,
              child: Column(
                children: <Widget>[
                  _myRadioButton(
                    title: Applocalizations.of(context).translate("Top Rated"),
                    value: 0,
                    groupValue: _groupValue,
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                  ),
                  _myRadioButton(
                    title:
                        Applocalizations.of(context).translate("Most Popular"),
                    value: 1,
                    groupValue: _groupValue,
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                  ),
                  _myRadioButton(
                    title: Applocalizations.of(context)
                        .translate("Min.order amount"),
                    value: 2,
                    groupValue: _groupValue,
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(Applocalizations.of(context).translate("MENU PRICES"),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sampleData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new InkWell(
                      //highlightColor: Colors.red,
                      splashColor: Colors.blueAccent,
                      onTap: () {
                        setState(() {
                          sampleData
                              .forEach((element) => element.isSelected = false);
                          sampleData[index].isSelected = true;
                        });
                      },
                      child: new CostumRadioItem(sampleData[index]),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                  Applocalizations.of(context).translate("DELIVERY FEE"),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 300,
              child: Column(
                children: <Widget>[
                  _myRadioButton(
                    title: Applocalizations.of(context).translate("Show All"),
                    value: 0,
                    groupValue: _secondGroup,
                    onChanged: (newValue) =>
                        setState(() => _secondGroup = newValue),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                  ),
                  _myRadioButton(
                    title: Applocalizations.of(context).translate("Free"),
                    value: 1,
                    groupValue: _secondGroup,
                    onChanged: (newValue) =>
                        setState(() => _secondGroup = newValue),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                  ),
                  _myRadioButton(
                    title: Applocalizations.of(context).translate("Less than") +
                        "\$ 10",
                    value: 2,
                    groupValue: _secondGroup,
                    onChanged: (newValue) =>
                        setState(() => _secondGroup = newValue),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                  ),
                  _myRadioButton(
                    title: Applocalizations.of(context).translate("Less than") +
                        "\$ 10",
                    value: 3,
                    groupValue: _secondGroup,
                    onChanged: (newValue) =>
                        setState(() => _secondGroup = newValue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _myRadioButton(
      {String title, int value, Function onChanged, groupValue}) {
    return Container(
      height: 40,
      child: RadioListTile(
        value: value,
        activeColor: yellow,
        groupValue: groupValue,
        onChanged: onChanged,
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
