import 'package:flutter/material.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/Constants.dart';

class CostumRadioItem extends StatelessWidget {
  final RadioModel _item;
  CostumRadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: new Container(
        height: 30,
        width: 80,
        child: Center(
          child: Text(
            _item.text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                width: _item.isSelected ? 10 : 3,
                color: _item.isSelected ? yellow : Colors.grey)),
      ),
    );
  }
}
