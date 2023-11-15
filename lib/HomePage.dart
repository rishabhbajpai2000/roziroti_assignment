import 'package:flutter/material.dart';
import 'package:roziroti_assignment/reusbableWidgets.dart';

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
              const CircleAvatar(
                radius: 20, // Image radius
                backgroundImage: AssetImage("assets/image.jpeg"),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
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
              const Icon(
                Icons.notifications_none_outlined,
                size: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.heart_broken_outlined,
                size: 30,
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
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
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Special Offers",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Expanded(child: Container()),
                const Text(
                  "See All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 200,

              child: Image.asset("assets/carausal.png"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                CatagoryTag(icon: Icons.local_laundry_service, text: "Laundry",),
                CatagoryTag(icon: Icons.local_laundry_service, text: "Shoes",),
                CatagoryTag(icon: Icons.shopping_bag, text: "Bags",),
                CatagoryTag(icon: Icons.computer_rounded, text: "Electronis",),
              ],
            ),

            const Row(
              children: [
                CatagoryTag(icon: Icons.watch, text: "Watch",),
                CatagoryTag(icon: Icons.diamond_outlined, text: "Jewelry",),
                CatagoryTag(icon: Icons.kitchen, text: "kitchen",),
                CatagoryTag(icon: Icons.toys_outlined, text: "Toys",),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text(
                  "Most Popular",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Expanded(child: Container()),
                const Text(
                  "See All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
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
