import 'package:flutter/material.dart';

class Top extends StatefulWidget {
  const Top({
    super.key,
  });

  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item()
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/test.jpeg'),
              ),
              Icon(Icons.cancel),
            ],
          ),
          Text(
            'price:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
