import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furn_aldeaa/Constants.dart';

class search extends StatefulWidget {
  static String id = "search";

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  final _textController = TextEditingController();
  bool TextFieldIsEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
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
                  "Search for restaurants or dishs",
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
          SearchBox(textController: _textController),
          SizedBox(
            height: 20,
          ),
          _textController.text.isEmpty
              ? RecentSearchTap()
              : new Container(
                  height: 0.0,
                ),
        ],
      ),
    );
  }
}

class RecentSearchTap extends StatelessWidget {
  const RecentSearchTap({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'RECENT SEARCHS',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 200,
            child: Expanded(
              child: ListView(
                children: [
                  RecentSearchItem(
                    text: "Burgers",
                  ),
                  RecentSearchItem(
                    text: "Burgers",
                  ),
                  RecentSearchItem(
                    text: "pizza",
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RecentSearchItem extends StatelessWidget {
  String text;

  RecentSearchItem({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 5),
            child: Icon(
              FontAwesomeIcons.clock,
              color: Colors.grey,
              size: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 5),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}

class SearchBox extends StatefulWidget {
  const SearchBox({
    Key key,
    @required TextEditingController textController,
  })  : _textController = textController,
        super(key: key);

  final TextEditingController _textController;

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Stack(
          alignment: const Alignment(1.0, 1.0),
          children: [
            TextField(
              controller: widget._textController,
              onChanged: (value) {
                setState(() {
                  print(value);
                });
              },
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade300, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: 'Search'),
            ),
            widget._textController.text.length > 0
                ? new IconButton(
                    icon: new Icon(
                      Icons.cancel,
                      color: Colors.black54,
                    ),
                    onPressed: () {
                      setState(() {
                        widget._textController.clear();
                      });
                    })
                : new Container(
                    height: 0.0,
                  )
          ],
        ),
      ),
    );
  }
}
