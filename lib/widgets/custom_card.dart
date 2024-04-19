import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_app/models/cart_model.dart';
import 'package:test_app/servies/carts_service.dart';
import 'package:test_app/widgets/custom_expansion_list.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  List<CartModel> carts = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getCarts();
  }

  Future<void> getCarts() async {
    carts = await CartsService(Dio()).getCarts();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: carts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(224, 224, 224, 255)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomExpansionList(
                      cartModel: carts[index],
                      
                    ),
                  ),
                ),
              );
            },
          );
  }
}
