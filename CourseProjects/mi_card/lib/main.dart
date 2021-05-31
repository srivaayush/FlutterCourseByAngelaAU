import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyHome(),
    ),
  );
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/Almipy.png'),
            ),
            Text("Almipy!",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            Card(
              // padding: EdgeInsets.all(10),
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: ListTile(
                  leading:      Icon(
                      Icons.phone,
                      // size: 10,
                      color: Colors.red,
                      ),
                      title: Text("8299332342",
                      style: TextStyle(
                        color: Colors.black,
                        // fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,

                      ),),
                )
                
              ),
            ),
            Card(
              // padding: EdgeInsets.all(10),
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: ListTile(
                  leading: Icon(
                      Icons.email,
                      // size: 100,
                      color: Colors.red,
                      ),
                      title:  Text("almipytechnologies@gmail.com",
                      style: TextStyle(
                        color: Colors.black,
                        // fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,

                      ),),
                ),
              ),
            ),
          ],
        )),
      );
  }
}

// child: Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.email,
//                       // size: 100,
//                       color: Colors.red,
//                       ),
//                       SizedBox(width: 10.0,),
//                       Text("almipytechnologies@gmail.com",
//                       style: TextStyle(
//                         color: Colors.black,
//                         // fontFamily: 'Source Sans Pro',
//                         fontSize: 20.0,

//                       ),
//                       ),

//                   ],
//                 ),