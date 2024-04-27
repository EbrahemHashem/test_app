import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});
  @override
  State<Button> createState() => _ButtonState();
}

bool isPressed = false;

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isPressed ? Colors.red : const Color.fromARGB(96, 124, 142, 0),
          borderRadius: BorderRadius.circular(12)),
      height: 50,
      width: 120,
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isPressed = !isPressed;
            });
          },
          child: Text(
            isPressed ? 'remove' : 'add',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
