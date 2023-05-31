import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<Map<String, dynamic>> _products = [
    {
      "productName": "Frozen Pizza",
      "productImage": "assets/images/pizza.png", // Make sure to replace these with your actual asset images
      "productPrice": 100.000,
    },
    {
      "productName": "Frozen Chicken",
      "productImage": "assets/images/chicken.png", // Make sure to replace these with your actual asset images
      "productPrice": 50.000,
    },
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: _products.length,
        itemBuilder: (ctx, i) => Card(
          child: Column(
            children: <Widget>[
              Image.asset(_products[i]['productImage']), // This will load image from assets
              Text(_products[i]['productName']),
              Text('\$${_products[i]['productPrice'].toString()}'),
              ElevatedButton(
                child: Text('Add to Cart'),
                onPressed: () {},
              ),
            ],
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items in row
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
