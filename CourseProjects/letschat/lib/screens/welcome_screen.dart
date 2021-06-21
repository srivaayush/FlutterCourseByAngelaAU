import 'package:flutter/material.dart';
import 'package:letschat/components/rounded_button.dart';
import 'package:letschat/screens/login_screen.dart';
import 'package:letschat/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// ignore: use_key_in_widget_constructors
class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller!);

    controller!.forward();

    //bouncing back and forth animation
    //___________________________;_____________
    // animation = CurvedAnimation(parent: controller!, curve: Curves.decelerate);
    // animation!.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller!.reverse(from: 1.0);
    //   } else if(status == AnimationStatus.dismissed) {
    //     controller!.forward();
    //   }
    // });
    //_______________________________________
    controller!.addListener(() {
      setState(() {});
      // ignore: avoid_print
      // print('Value is ${animation!.value}');
    });
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation!.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    // height: controller!.value * 100,
                    height: 60,
                  ),
                ),
                SizedBox(),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Let\'s Chat'),
                    ],
                  ),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 48.0,
            ),

            //Push
            RoundedWidget(color: Colors.lightBlueAccent,
            title: 'Log IN',onPressed: (){
              Navigator.pushNamed(context, LoginScreen.id);
            }),

            RoundedWidget(color: Colors.blueAccent,
            title: 'Sign UP',onPressed: (){
              Navigator.pushNamed(context, RegistrationScreen.id);
            }),
            

          ],
        ),
      ),
    );
  }
}

