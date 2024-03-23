
import 'package:cookingapp/screens/login_screen.dart';
import 'package:cookingapp/screens/user_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text("What do you like \n to cook ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),)
                  ,
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage(),));
        },
        child: Text("Next", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
