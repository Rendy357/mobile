import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<Map> _cartItems = [
    {"name": "Frozen Pizza", "price": 140.000, "quantity": 2},
    {"name": "Frozen Chicken", "price": 70.000, "quantity": 1},
    // Add more cart items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      body: ListView.builder(
        itemCount: _cartItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_cartItems[index]["name"]),
            subtitle: Text('\$${_cartItems[index]["price"]} x ${_cartItems[index]["quantity"]}'),
            trailing: IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                // Add functionality to remove item from cart
              },
            ),
          );
        },
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          // Add functionality to proceed to checkout
        },
        child: Text('Proceed to Checkout'),
      ),
    );
  }
}
