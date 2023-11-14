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
            Row(children: [
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
                    Text(
                      "Andrew Ainsley",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Icon(
                Icons.notifications_none_outlined,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.heart_broken_outlined,
                size: 30,
              ),
            ]),
            SizedBox(
              height: 20,
            ),
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
                    SizedBox(
                      width: 10,
                    ),
                    Text("Search")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Special Offers",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Expanded(child: Container()),
                Text(
                  "See All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 200,

              child: Image.asset("assets/carausal.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                CatagoryTag(icon: Icons.local_laundry_service, text: "Laundry",),
                CatagoryTag(icon: Icons.local_laundry_service, text: "Shoes",),
                CatagoryTag(icon: Icons.shopping_bag, text: "Bags",),
                CatagoryTag(icon: Icons.computer_rounded, text: "Electronis",),
              ],
            ),

            Row(
              children: [
                CatagoryTag(icon: Icons.watch, text: "Watch",),
                CatagoryTag(icon: Icons.diamond_outlined, text: "Jewelry",),
                CatagoryTag(icon: Icons.kitchen, text: "kitchen",),
                CatagoryTag(icon: Icons.toys_outlined, text: "Toys",),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Expanded(child: Container()),
                Text(
                  "See All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                MostPopularTags(text: "All",),
                MostPopularTags(text: "Clothes",),
                MostPopularTags(text: "Shoes",),
                MostPopularTags(text: "Bags",),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class MostPopularTags extends StatelessWidget {
  final text;
  const MostPopularTags({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Text(this.text),
        ),
      ),
    );
  }
}

class CatagoryTag extends StatelessWidget {
  final icon;
  final text;

  const CatagoryTag({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 30,
            child: Icon(this.icon, color: Colors.black, size: 30,),
          ),

          SizedBox(
            height: 10,
          ),
          Text(this.text, style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
