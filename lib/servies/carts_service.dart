import 'package:dio/dio.dart';
import 'package:test_app/models/cart_model.dart';

class CartsService {
  final Dio dio;

  CartsService(this.dio);
  getCarts() async {
    Response response = await dio.get('https://dummyjson.com/carts');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> carts = jsonData['carts'];
    List<CartModel> cartsList = [];

    for (var cart in carts) {
      CartModel cartModel = CartModel(
          id: cart['id'],
          image: cart["products"][0]['thumbnail'],
          title: cart["products"][0]['title'],
          price: cart["products"][0]['price']);

      cartsList.add(cartModel);
    }
    return cartsList;
  }
}
