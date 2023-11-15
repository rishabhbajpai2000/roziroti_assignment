
import 'package:flutter/material.dart';

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
