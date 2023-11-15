import 'package:flutter/material.dart';
import 'package:roziroti_assignment/HomePage.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.circle_outlined,
                size: 30,
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Expanded(child: Container()),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.more_horiz))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const CircleAvatar(
                  radius: 70, // Image radius
                  backgroundImage: AssetImage("assets/image.jpeg"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Andrew Ainsley",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "+1 111 467 378 399",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.person_outline_rounded,
                  size: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_forward_ios, size: 20,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Address ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_forward_ios, size: 20,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.notifications_none_outlined,
                  size: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Notification ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_forward_ios, size: 20,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.wallet_outlined,
                  size: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Payment",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_forward_ios, size: 20,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.security_outlined,
                  size: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Security",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_forward_ios, size: 20,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.language_outlined,
                  size: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Language",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_forward_ios, size: 20,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.remove_red_eye_outlined,
                  size: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Dark Mode",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_forward_ios, size: 20,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.lock_outlined,
                  size: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_forward_ios, size: 20,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.help_outline_outlined,
                  size: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Help Center",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_forward_ios, size: 20,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.share_outlined,
                  size: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Invite Friends",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(Icons.arrow_forward_ios, size: 20,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.logout_outlined,
                  size: 20,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Logout",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                ),
                Expanded(child: Container()),

              ],
            ),
          )
        ],
      ),
    )));
  }
}
