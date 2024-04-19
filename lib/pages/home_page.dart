import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_card.dart';
import 'package:test_app/widgets/custom_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Add Products here ...'),
          SizedBox(
            height: 20,
          ),
          CustomSearch(),
          Expanded(
            child: CustomCard(),
          ),
        ],
      ),
    ));
  }
}
