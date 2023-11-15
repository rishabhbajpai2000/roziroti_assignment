import 'package:flutter/material.dart';
import 'package:roziroti_assignment/ProfilePage.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            const Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ],
            ),
           const SizedBox(height: 70,),
            const Text(
              "Create your Account",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 70,),
            const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.email),
                  hintText: "Email"),
            ),
            const TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  border: InputBorder.none,
                  hintText: "Password"),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  value: false,
                  onChanged: (value) {}),
              const Text(
                "Remember me",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ]),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AccountPage()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("Or continue with ", style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Icon(Icons.facebook, size: 50,),
                Icon(Icons.g_mobiledata_sharp, size: 50,),
                Icon(Icons.apple, size: 50,),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}
