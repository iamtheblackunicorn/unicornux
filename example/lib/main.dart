/*
Unicorn UX by Alexander Abraham, "The Black Unicorn".
Licensed under the MIT license.
*/

import 'package:flutter/material.dart';
import 'package:unicornux/unicornux.dart';

void main(){
  runApp(
    new MaterialApp(
      home: TestApp()
    )
  );
}

double stdSpacer = 100;

/// This test app features all the widgets
/// that Unicorn UX has!
class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: new SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [

              /// This widget is the vertical spacing
              /// widget from [../lib/src/spacer.dart].
              new VerticalSpacer(
                verticalSpacing: stdSpacer
              )

              /// This widget is the error widget from
              /// [../lib/src/error.dart].
              new UnicornTears(
                errorMessage: 'An error\noccured!',
                signColor: Color(0xFF000000),
                signSize: 150,
                messageSize: 20,
                fontFamily: 'Roboto'
              ),

              /// This widget is the vertical spacing
              /// widget from [../lib/src/spacer.dart].
              new VerticalSpacer(
                verticalSpacing: stdSpacer
              )

              /// This widget is the button widget from
              /// [../lib/src/button.dart].
              new UnicornButton(
                labelText: 'Hello!',
                defaultFont: 'Roboto',
                foreGroundColor: Color(0xFFFFFFFF),
                backGroundColor: Color(0xFF000000),
                standardRounding: 25,
                standardPadding: 20,
                standardFontSize: 30,
                onPressed: () {
                  print('Hello World!');
                }
              ),

              /// This widget is the vertical spacing
              /// widget from [../lib/src/spacer.dart].
              new VerticalSpacer(
                verticalSpacing: stdSpacer
              )

              /// This widget is the gradient card widget from
              /// [../lib/src/gradientcard.dart].
              new GradientCard(
                boxHeight: 200,
                boxWidth: 300,
                standardPadding: 20,
                fadeIn: Color(0xFFDF0045),
                fadeOut: Color(0xFF000000),
                standardRounding: 25,
                child: new Center(
                  child:new Text(
                    'Hello World!',
                    style: new TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 30
                    )
                  )
                )
              ),

              /// This widget is the vertical spacing
              /// widget from [../lib/src/spacer.dart].
              new VerticalSpacer(
                verticalSpacing: stdSpacer
              )

              /// This widget is the card widget from
              /// [../lib/src/card.dart].
              new UnicornCard(
                backGroundColor: Color(0xFF000000),
                standardPadding: 20,
                standardRounding: 25,
                child: new Text(
                  'Hello World!',
                  style: new TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20
                  )
                )
              ),

              /// This widget is the vertical spacing
              /// widget from [../lib/src/spacer.dart].
              new VerticalSpacer(
                verticalSpacing: stdSpacer
              )

              /// This widget is the info widget from
              /// [../lib/src/info.dart].
              new InfoScreen(
                infoData: {
                  'Name':'Example',
                  'Version':'1.0',
                  'License':'MIT'
                },
                standardPadding: 20,
                standardRounding: 25,
                boxHeight: 150,
                boxWidth: 300,
                textPadding: 20,
                fontSize: 25,
                fontFamily: 'Roboto',
                mainColor: Color(0xFF000000),
                accentColor: Color(0xFFFFFFFF),
                shouldWrap: true
              ),

              /// This widget is the vertical spacing
              /// widget from [../lib/src/spacer.dart].
              new VerticalSpacer(
                verticalSpacing: stdSpacer
              )

              /// This widget is the loading widget from
              /// [../lib/src/loading.dart].
              new UnicornTails(
                loadingMessage: 'Your content\nis loading!',
                signColor:Color(0xFF000000),
                signSize: 150,
                messageSize: 20,
                fontFamily: 'Roboto',
                loadingRepeat: 200,
                spacer: 0
              ),

              /// This widget is the vertical spacing
              /// widget from [../lib/src/spacer.dart].
              new VerticalSpacer(
                verticalSpacing: stdSpacer
              )

            ]
          )
        )
      )
    );
  }
}
