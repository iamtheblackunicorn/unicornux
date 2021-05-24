/*
Unicorn UX by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT license.
*/

import 'package:flutter/material.dart';

/// This stateless widget contains
/// the custom card with in-built padding
/// rounding, and, of course, a child widget.
class UnicornCard extends StatelessWidget{
  final Color backGroundColor;
  final double standardPadding;
  final double standardRounding;
  final Widget child;
  UnicornCard({
    @required this.backGroundColor,
    @required this.standardPadding,
    @required this.standardRounding,
    @required this.child
  });
  @override
  Widget build(BuildContext context){
    return new Padding(
      padding: EdgeInsets.all(standardPadding),
      child: new Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            standardRounding
          )
        ),
        color: backGroundColor,
        child: new Padding(
          padding: EdgeInsets.all(standardPadding),
          child: child
        )
      )
    );
  }
}
