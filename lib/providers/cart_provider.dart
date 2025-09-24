// lib/providers/cart_provider.dart

import 'package:flutter/material.dart';
import '../models/product_model.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  double get totalPrice {
    return _items.fold(0.0, (sum, current) => sum + current.price);
  }

  // metodo para añadir un producto al carrito
  void add(Product product) {
    _items.add(product);
    notifyListeners();
  }

  // metodo para eliminar un producto del carrito
  void remove(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  // metodo para ver si se vacia el carrito
  void clear() {
    _items.clear();
    notifyListeners();
  }
}