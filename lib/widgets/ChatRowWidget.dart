import 'package:alphachat/config/Assets.dart';
import 'package:alphachat/config/Styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundImage: Image.asset(
                    Assets.user,
                  ).image,
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'John Doe',
                        style: Styles.subHeading,
                      ),
                      Text(
                        'What\'s up?',
                        style: Styles.subText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  DateFormat('kk:mm').format(
                    DateTime.fromMillisecondsSinceEpoch(1565888474278),
                  ),
                  style: Styles.date,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
}
