import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/Cart.dart'; // Import Cart model
import '../../cart/components/cart_provider.dart'; // Import CartProvider
import 'payment_screen.dart'; // Import PaymentScreen

class CheckoutCard extends StatefulWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  _CheckoutCardState createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
  bool _isCODSelected = false;

  @override
  Widget build(BuildContext context) {
    // Access CartProvider
    final cartProvider = Provider.of<CartProvider>(context);

    // Get list of items in the cart
    final List<Cart> cartItems = cartProvider.items;

    // Calculate total price
    int totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += cartItems[i].product.price * cartItems[i].numOfItem;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: "Total:\n",
                      children: [
                        TextSpan(
                          text: "\Rp. $totalPrice", // Display total price
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Show dialog/modal to payment method
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Payment Method"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  title: const Text("Cash on Delivery (COD)"),
                                  onTap: () {
                                    setState(() {
                                      _isCODSelected = true;
                                    });
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  title: const Text("Online Payment"),
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(
                                      context,
                                      PaymentScreen.routeName,
                                      arguments: {
                                        'totalPrice': totalPrice,
                                        'paymentMethod': 'Online'
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: const Text("Check Out"),
                  ),
                ),
              ],
            ),
            if (_isCODSelected)
              const Column(
                children: [
                  SizedBox(height: 16),
                  Text(
                    "Payment via COD",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
