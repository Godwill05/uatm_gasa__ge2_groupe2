import 'package:cookingapp/components/text_components.dart';
import 'package:cookingapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  margin: EdgeInsets.only(top: 100),
                  padding: EdgeInsets.only(bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Recipes that", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color(
                          0x62121111)),),
                      Text("inspire you",style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color(0xDFFFBC2C))),
                      Text("to do more !!!!",style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color(0x62121111))),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Gravita in fermentum et sollicitudin ac. Vel"),
                      Text("quam elementum pulvinar etiam non"),
                      Text("qualsuspendisse"),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 50),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              height: 5,
                              width: 5.0,
                              margin: EdgeInsets.only(right: 5, bottom: 50),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              height: 5,
                              width: 5.0,
                              margin: EdgeInsets.only(right: 5, bottom: 50),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              height: 5,
                              width: 5.0,
                              margin: EdgeInsets.only(right: 5, bottom: 50),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 60),
                        padding: EdgeInsets.only(right: 150),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                            }, child: Text("Start Cooking", style: TextStyle(color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
                            )
                          ],
                        ),
                      )
                      ],
                  ),
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
