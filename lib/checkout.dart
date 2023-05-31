import 'package:flutter/material.dart';
import 'package:frozen_food/konfirm.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Total Amount: Rp 250.000'), // Replace with actual amount
            ElevatedButton(
              child: Text('Confirm Purchase'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfirmationPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
