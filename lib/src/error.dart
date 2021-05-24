/*
Unicorn UX by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT license.
*/

import 'package:flutter/material.dart';

/// This stateless widget contains
/// an error widget. You can use this
/// if you are awaiting some event or
/// using futures.
class UnicornTears extends StatelessWidget {
  final String errorMessage;
  final Color signColor;
  final double messageSize;
  final double signSize;
  final String fontFamily;
  UnicornTears({
    @required this.errorMessage,
    @required this.signColor,
    @required this.messageSize,
    @required this.signSize,
    @required this.fontFamily
  });
  @override
  Widget build(BuildContext context){
    return new Column(
      children: <Widget> [
        new Icon(
          Icons.warning,
          color: signColor,
          size: signSize,
        ),
        new Text(
          '$errorMessage',
          style: TextStyle(
            color: signColor,
            fontSize: messageSize,
            fontFamily: fontFamily
          ),
        )
      ]
    );
  }
}
