/*
Unicorn UX by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT license.
*/

import 'package:flutter/material.dart';

/// This stateless widget contains
/// the custom button with custom padding,
/// custom rounding, custom [onPress] actions
/// and much more.
class UnicornButton extends StatelessWidget{
  final String labelText;
  final String defaultFont;
  final Color foreGroundColor;
  final Color backGroundColor;
  final double standardRounding;
  final double standardPadding;
  final double standardFontSize;
  final GestureTapCallback onPressed;
  UnicornButton({
    @required this.labelText,
    @required this.defaultFont,
    @required this.foreGroundColor,
    @required this.backGroundColor,
    @required this.standardRounding,
    @required this.standardPadding,
    @required this.standardFontSize,
    @required this.onPressed
  });
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(
        standardPadding
      ),
      child: new RaisedButton(
        color: backGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            standardRounding
          )
        ),
        child: new Padding(
          padding: EdgeInsets.all(
            standardPadding
          ),
          child: new Text(
            labelText,
            style: new TextStyle(
              color: foreGroundColor,
              fontSize: standardFontSize,
              fontFamily: defaultFont
            )
          ),
        ),
        onPressed: onPressed
      )
    );
  }
}
