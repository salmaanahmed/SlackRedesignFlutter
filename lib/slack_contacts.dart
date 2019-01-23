import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  final topText = Row(
    children: <Widget>[
      Text(
        "Management",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
      Container(
        width: 5.0,
      ),
      Icon(Icons.keyboard_arrow_down)
    ],
  );

  final contacts = Expanded(
    child: new Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => new Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            new Container(
              width: 60.0,
              height: 60.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(getImagePath(index))),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            Positioned(
                right: 12.0,
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 8.0,
                  child: new CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 4.0,
                  ),
                ))
          ],
        ),
      ),
    ),
  );

  static String getImagePath(int index) {
    switch(index) {
      case 0:
        return "https://avatars1.githubusercontent.com/u/2466701?s=400&v=4";
      case 1:
        return "https://avatars1.githubusercontent.com/u/4357275?s=400&v=4";
      case 2:
        return "https://avatars1.githubusercontent.com/u/17049477?s=400&v=4";
      case 3:
        return "https://avatars3.githubusercontent.com/u/4975909?s=460&v=4";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(

      decoration: new BoxDecoration(
          color: Colors.white,
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 5.0,
              spreadRadius: 10.0
            ),
          ]),

      padding: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          contacts,
        ],
      ),
    );
  }
}
