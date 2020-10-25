import 'package:flutter/material.dart';
import 'package:furn_aldeaa/screens/checkout/screens/Select_payment_methods.dart';

class PaymentMethods extends StatefulWidget {
  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SelectPaymentMethod(),
          ],
        ),
      ),
    );
  }
}
