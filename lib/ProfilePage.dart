import 'package:flutter/material.dart';
import 'package:roziroti_assignment/HomePage.dart';
import 'package:roziroti_assignment/reusbableWidgets.dart';

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
          const profileSettingEditTag(
            text: "Edit Profile",
            icon: Icons.person_outline_rounded,
          ),
          const profileSettingEditTag(
            text: "Address",
            icon: Icons.location_on_outlined,
          ),
          const profileSettingEditTag(
            text: "Notification",
            icon: Icons.notifications_none_outlined,
          ),
          const profileSettingEditTag(
            text: "Payment",
            icon: Icons.wallet_outlined,
          ),
          const profileSettingEditTag(
            text: "Security",
            icon: Icons.security_outlined,
          ),
          const profileSettingEditTag(
            text: "Language",
            icon: Icons.language_outlined,
          ),
          const profileSettingEditTag(
            text: "Dark Mode",
            icon: Icons.remove_red_eye_outlined,
          ),
          const profileSettingEditTag(
            text: "Privacy Policy",
            icon: Icons.lock_outline,
          ),
          const profileSettingEditTag(
            text: "Help Center",
            icon: Icons.help_outline,
          ),
          const profileSettingEditTag(
              text: "Invite Friends", icon: Icons.share_outlined),
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
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
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
