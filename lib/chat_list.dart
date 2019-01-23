import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF6F6F6),
      child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {

            switch (index) {
              case 0:
                return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Friday, 11:35 AM", textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.grey)
                    )
                );
              case 1:
                return CustomCard(
                  message: "What are you working on today?What is the progress?",
                  from: "Rizwan",
                  to: "@Salmaan",
                  favorites: 0,
                  isFavorite: false,
                  likes: 0,
                  isReplied: true,
                  time: "12:30 PM",
                  avatar: "https://avatars1.githubusercontent.com/u/4357275?s=400&v=4",
                );
              case 2:
                return CustomCard(
                  message: "Task No. 1281 is in progress and will be completed by tomorrow, you may check it then :)",
                  from: "Salmaan",
                  to: "@Rizwan",
                  favorites: 0,
                  isFavorite: false,
                  likes: 1,
                  isReplied: false,
                  time: "12:33 PM",
                  avatar: "https://avatars3.githubusercontent.com/u/4975909?s=460&v=4",
                );
              case 3:
                return CustomCard(
                  message: "Both iOS and Android applications are deployed, we should have a test day.",
                  from: "Ahsan",
                  to: "@all",
                  favorites: 4,
                  isFavorite: true,
                  likes: 6,
                  isReplied: true,
                  time: "02:06 PM",
                  avatar: "https://avatars1.githubusercontent.com/u/17049477?s=400&v=4",
                );
              case 4:
                return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Saturday, 12:56 AM", textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.grey)
                    )
                );
              case 5:
                return CustomCard(
                  message: "Task No. 1281 is completed, I moved to the next one",
                  from: "Salmaan",
                  to: "@Rizwan",
                  favorites: 0,
                  isFavorite: false,
                  likes: 3,
                  isReplied: false,
                  time: "01:12 PM",
                  avatar: "https://avatars3.githubusercontent.com/u/4975909?s=460&v=4",
                );
              case 6:
                return CustomCard(
                  message: "Today is the test day, you may reply here your response, we are open to suggestions :)",
                  from: "Ahsan",
                  to: "@all",
                  favorites: 7,
                  isFavorite: true,
                  likes: 8,
                  isReplied: true,
                  time: "02:00 PM",
                  avatar: "https://avatars1.githubusercontent.com/u/17049477?s=400&v=4",
                );
              default:
                return null;
            }
          }
      )
    );
  }
}


// ignore: must_be_immutable
class CustomCard extends StatelessWidget {

  CustomCard({
    this.message,
    this.from,
    this.to,
    this.time,
    this.avatar,
    this.likes,
    this.favorites,
    this.isFavorite,
    this.isReplied
  });

  var message = "";
  var from = "";
  var to = "";
  var time = "";
  var avatar = "";
  var likes = 0;
  var favorites = 0;
  var isFavorite = false;
  var isReplied = false;

  Widget getLeftSection() => Container(
    padding: new EdgeInsets.all(7.0),
    child: new Container(
      width: 60.0,
      height: 60.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
            fit: BoxFit.fill,
            image: new NetworkImage(avatar)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
    ),
  );

  Widget getMiddleSection() => Expanded(
    child: new Container(
      padding: new EdgeInsets.all(7.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Text(from,
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
              new Text(to,
                style: new TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          new Text(time, style: new TextStyle(color: Colors.grey)),
          new Text(message),
          new Row(
            children: <Widget>[
              Visibility(
                visible: favorites > 0,
                child: Container(
                    width: 40.0,
                    height: 25.0,
                    child: OutlineButton(
                      onPressed: () => {},
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.favorite, color: Colors.redAccent, size: 16.0),
                          Container(width: 2.0),
                          Text(favorites.toString())
                        ],
                      ),
                    )
                ),
              ),

              Container(width: 5.0),
              Visibility(
                visible: likes > 0,
                child: Container(
                    width: 40.0,
                    height: 25.0,
                    child: OutlineButton(
                      onPressed: () => {},
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.thumb_up, color: Colors.blueAccent, size: 16.0),
                          Container(width: 2.0),
                          Text("8")
                        ],
                      ),
                    )
                )
              ),
            ],
          )
        ],
      ),
    ),
  );

  Widget getRightSection() => Container(
    padding: EdgeInsets.all(7.0),
    child: new Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(isFavorite ? Icons.favorite : Icons.favorite_border, color: isFavorite ? Colors.redAccent : Colors.grey),
        Container(
          height: 10.0,
        ),
        Icon(Icons.reply, color: isReplied ? Colors.blueAccent : Colors.grey),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return  new Card(
      margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          getLeftSection(),
          getMiddleSection(),
          getRightSection()
        ],
      ),
    );
  }
}