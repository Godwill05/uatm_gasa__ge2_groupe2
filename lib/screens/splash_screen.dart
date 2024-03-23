
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
            Container(
              child: Row(
                children: [
                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/img1.png'),
                              fit: BoxFit.cover,
                              width: 350,
                              height: 350,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(75),
                        ),
                        height: 350,
                        width: 350,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/img1.png'),
                              fit: BoxFit.cover,
                              width: 350,
                              height: 350,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(75),
                        ),
                        height: 350,
                        width: 350,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/img1.png'),
                              fit: BoxFit.cover,
                              width: 350,
                              height: 350,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(75),
                        ),
                        height: 350,
                        width: 350,
                      ),
                    ],
                  ),
                ],
              ),
            )
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
