
import 'package:flutter/material.dart';

// oval tag which is used in the bottom of home page
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

// circular icon along with text in the bottom, that is used in middle of home page
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
// widget used to edit the profile section in profile page.
class profileSettingEditTag extends StatelessWidget {
  final text;
  final icon;

  const profileSettingEditTag(
      {super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            this.icon,
            // Icons.person_outline_rounded,
            size: 20,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
    );
  }
}
