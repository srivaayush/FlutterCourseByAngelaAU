import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:letschat/screens/login_screen.dart';
import 'package:letschat/screens/registration_screen.dart';
import 'package:letschat/screens/welcome_screen.dart';

import 'screens/chat_screen.dart';

// void main() => runApp(FlashChat());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

// ignore: use_key_in_widget_constructors
class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData.dark().copyWith(
        //   // ignore: prefer_const_constructors
        //   textTheme: TextTheme(
        //     bodyText2: const TextStyle(color: Colors.black54),
        //   ),
        // ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          ChatScreen.id: (context) => ChatScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen()
        });
  }
}
