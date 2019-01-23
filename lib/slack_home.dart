import 'package:flutter/material.dart';
import 'package:slack_redesign_challenge/slack_body.dart';

class SlackHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0.0,
    leading: SizedBox(
        height: 35.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/slack_logo.jpg"),
        )
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.call),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.videocam),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.search),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.more_vert),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: topBar,
        body: new SlackBody(),
        bottomNavigationBar: new BottomAppBar(
          child: new Container(
              color: Colors.white,
              height: 92.0,
              alignment: Alignment.topCenter,
              child: new Column(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                    child: new Row(
                      children: <Widget>[
                        new Flexible(
                          child: new TextField(
                            decoration: new InputDecoration.collapsed(
                                hintText: 'Your Message'
                            ),
                          ),
                        ),
                        new Icon(Icons.zoom_out_map, color: Colors.grey, size: 18)
                      ],
                    ),
                  ),
                  new Row(
                    children: <Widget>[
                      Container(width: 10),
                      Icon(Icons.alternate_email, color: Colors.grey, size: 18),
                      Container(width: 10),
                      Icon(Icons.attach_file, color: Colors.grey, size: 18),
                      Container(width: 10),
                      Icon(Icons.photo_camera, color: Colors.grey, size: 18),
                      Spacer(),
                      FlatButton(
                        onPressed: () => {},
                        color: Colors.green,
                        textColor: Colors.white,
                        child: Row( // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Text("Send"),
                            Container(width: 10),
                            Icon(Icons.send, color: Colors.white, size: 18)
                          ],
                        ),
                      ),
                      Container(width: 10)
                    ],
                  ),
                ],
              )
          ),
        ));
  }
}
