
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                    radius: 20, // Image radius
                    backgroundImage: AssetImage("assets/image.jpeg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning 👋"),
                        Text("Andrew Ainsley", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                    Icon(Icons.notifications_none_outlined, size: 30,),
                    SizedBox(width: 10,),
                    Icon(Icons.heart_broken_outlined, size: 30,),
                  ]
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10,),
                        Text("Search")
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
    ));
  }
}
