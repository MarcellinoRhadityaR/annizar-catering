import 'package:catering6/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymentScreen extends StatelessWidget {
  final int totalPrice;
  final String paymentMethod;

  PaymentScreen({required this.paymentMethod, required this.totalPrice});

  static String routeName = "/payment";

  @override
  Widget build(BuildContext context) {
    final Uri whatsApp = Uri.parse('https://wa.link/nand0n');

    return Scaffold(
      appBar: AppBar(
        title: Text("$paymentMethod Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Price: \Rp. $totalPrice",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            const Text(
              "Nomor Tujuan: 0812-3593-4490",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              "Nomor Rekening BRI: 6535-0120-7397-215",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              "Nomor Rekening MANDIRI: 1430-8760-5217-1",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            RichText(
              text: const TextSpan(
                text: "Apabila sudah melakukan pembayaran, silahkan konfirmasi pembayaran dengan klik tombol ",
                style: TextStyle(fontSize: 20, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: "'Confirm to Seller'",
                    style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
                  ),
                  TextSpan(
                    text: ". \nKemudian kirimkan bukti pembayaran.",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: (() async {
                  launchUrl(whatsApp);
                }),
                child: const Text("Confirm to Seller"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
