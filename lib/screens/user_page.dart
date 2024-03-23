import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screen_size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Hello Luis", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: Color(0xDFFFBC2C)),),
                            Text("What you want to cook today?")
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/cress.jpeg'),
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      SearchBar(

                      ),
                    ],
                  ),
                ),
                Container(
                  height: screen_size.height/6,
                  width: screen_size.width -30,
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xE5E6DCAB),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Top recipes", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
                            Text("you have 12 recipes that"),
                            Text("you haven't tried yet"),
                            ElevatedButton(onPressed: (){}, child: Text("See more", style: TextStyle(color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black),)
                            )],
                        ),
                        margin: EdgeInsets.only(right: 10, left: 10),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("assets/dish-3.png"),
                              fit: BoxFit.cover,
                              height: 140,
                              width: 180,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Category", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                      Text("See all"),
                    ],
                  ),
                  padding: EdgeInsets.only(right: 30, left: 100),
                  margin: EdgeInsets.only(top: 20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
