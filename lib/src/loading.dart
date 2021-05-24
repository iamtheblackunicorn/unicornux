/*
Unicorn UX by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT license.
*/

import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';


/// This stateless widget contains a custom
/// loading animation! Adjust size, color, font
/// and other things!
class UnicornTails extends StatelessWidget {
  final String loadingMessage;
  final Color signColor;
  final double messageSize;
  final double signSize;
  final String fontFamily;
  final int loadingRepeat;
  final double spacer;
  UnicornTails({
    @required this.loadingMessage,
    @required this.signColor,
    @required this.messageSize,
    @required this.signSize,
    @required this.fontFamily,
    @required this.loadingRepeat,
    @required this.spacer
  });
  @override
  Widget build(BuildContext context){
    return new Column(
      children: <Widget> [
        new LoadingBumpingLine.circle(
          size: signSize,
          backgroundColor: signColor,
          duration: Duration(
            milliseconds: loadingRepeat
          )
        ),
        new SizedBox(
          height: spacer
        ),
        new Text(
          '$loadingMessage',
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
