import 'package:flutter/material.dart';

class ElevatedButtonDesign extends StatelessWidget {

  final Widget classTitle;
  final String title;

  const ElevatedButtonDesign({required this.classTitle, required this.title,Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => classTitle,
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }
}
