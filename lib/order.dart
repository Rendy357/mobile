import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  final List<Map> _orders = [
    {"orderID": "Order001", "productName": "Frozen Pizza", "status": "Delivered"},
    {"orderID": "Order002", "productName": "Frozen Chicken", "status": "In Transit"},
    // Add more orders here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: ListView.builder(
        itemCount: _orders.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(_orders[index]["productName"]),
            subtitle: Text(_orders[index]["orderID"]),
            trailing: Text(_orders[index]["status"]),
            onTap: () {
              // Add functionality to navigate to order details
            },
          );
        },
      ),
    );
  }
}
