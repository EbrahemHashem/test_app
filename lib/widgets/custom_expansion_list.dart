import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_app/models/cart_model.dart';
import 'package:test_app/servies/carts_service.dart';
import 'package:test_app/widgets/button.dart';

class CustomExpansionList extends StatelessWidget {
  const CustomExpansionList({
    super.key,
    required this.cartModel,
  });
  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    CartsService(Dio()).getCarts();

    return ExpansionTile(
      title: Text(
        'Cart ${cartModel.id.toString()}',
      ),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: NetworkImage(cartModel.image!),
                  ),
                  Text(
                    cartModel.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Button(),
          ],
        ),
      ],
    );
  }
}
