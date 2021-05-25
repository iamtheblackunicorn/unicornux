/*
Unicorn UX by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT license.
*/

import 'package:flutter/material.dart';

/// This widget provides whitespace vertically.
class VerticalSpacer extends StatelessWidget {
  final double verticalSpacing;
  VerticalSpacer({
    @required this.verticalSpacing
  });
  Widget build(BuildContext context){
    return SizedBox(
      height: verticalSpacing
    )
  }
}

/// This widget provides whitespace horizontally.
class HorizontalSpacer extends StatelessWidget {
  final double horizontalSpacing;
  VerticalSpacer({
    @required this.horizontalSpacing
  });
  Widget build(BuildContext context){
    return SizedBox(
      width: horizontalSpacing
    )
  }
}
