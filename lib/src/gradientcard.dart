/*
Unicorn UX by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT license.
*/

import 'package:flutter/material.dart';

/// This stateless widget contains
/// the custom card with a color gradient.
/// The background color will fade from
/// color one to color two.
class GradientCard extends StatelessWidget{
  final double boxWidth;
  final double boxHeight;
  final double standardPadding;
  final Color fadeIn;
  final Color fadeOut;
  final double standardRounding;
  final Widget child;
  GradientCard({
    @required this.boxWidth,
    @required this.boxHeight,
    @required this.standardPadding,
    @required this.fadeIn,
    @required this.fadeOut,
    @required this.standardRounding,
    @required this.child
  });
  @override
  Widget build(BuildContext context){
    return new Padding(
      padding: EdgeInsets.all(
        standardPadding
      ),
      child:Container(
        width: boxWidth,
        height: boxHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              fadeIn,
              fadeOut
            ]
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              standardRounding
            )
          ),
        ),
        child: new Padding(
          padding: EdgeInsets.all(
            standardPadding
          ),
          child:child
        )
      )
    );
  }
}
