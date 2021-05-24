/*
Unicorn UX by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT license.
*/

import 'package:flutter/material.dart';

/// This stateless widget takes a deterministic
/// apporach towards displaying info about your app.
class InfoScreen extends StatelessWidget{
  final Map<String, String> infoData;
  final double standardPadding;
  final double standardRounding;
  final double boxHeight;
  final double boxWidth;
  final double textPadding;
  final double fontSize;
  final String fontFamily;
  final Color mainColor;
  final Color accentColor;
  final bool shouldWrap;
  InfoScreen({
    @required this.infoData,
    @required this.standardPadding,
    @required this.standardRounding,
    @required this.boxHeight,
    @required this.boxWidth,
    @required this.textPadding,
    @required this.fontSize,
    @required this.fontFamily,
    @required this.mainColor,
    @required this.accentColor,
    @required this.shouldWrap
  });
  @override
  Widget build(BuildContext context){
    return new SingleChildScrollView(
      child: new Center(
        child: new Column(
          children: <Widget> [
            new ListView.builder(
              shrinkWrap: shouldWrap,
              itemCount: infoData.length,
              itemBuilder: (context, index){
                String key = infoData.keys.elementAt(index);
                String value = infoData[key];
                return new Padding(
                  padding: EdgeInsets.all(
                    standardPadding
                  ),
                  child:new Container(
                    height: boxHeight,
                    width: boxWidth,
                    child: new Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          standardRounding
                        )
                      ),
                      color: mainColor,
                      child: new Padding(
                        padding: EdgeInsets.all(
                          textPadding
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget> [
                            new Padding(
                              padding: EdgeInsets.all(
                                standardPadding
                              ),
                              child:new Text(
                                '$key',
                                style: new TextStyle(
                                  color: accentColor,
                                  fontSize: fontSize,
                                  fontFamily: fontFamily
                                )
                              )
                            ),
                            new Padding(
                              padding: EdgeInsets.all(
                                standardPadding
                              ),
                              child:new Text(
                                '$value',
                                style: new TextStyle(
                                  color: accentColor,
                                  fontSize: fontSize,
                                  fontFamily: fontFamily
                                )
                              )
                            ),
                          ]
                        )
                      )
                    )
                  )
                );
              }
            )
          ]
        )
      )
    );
  }
}
