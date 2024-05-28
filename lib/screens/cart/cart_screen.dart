import 'package:catering6/provider/cartProvider.dart';
import 'package:catering6/screens/cart/components/check_out_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({super.key});

  String formatRupiah(String nominal) {
    return 'Rp. ${nominal.replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          final item = cart.items[index];
          return ListTile(
            // leading: Image.asset(item.product.image),
            title: Text(item.product.title),
            subtitle: Text('Jumlah: ${item.numOfItem}'),
            // trailing: Text('\$${item.product.price * item.numOfItem}'),
            trailing: Text(
                formatRupiah(item.product.price.toString() * item.numOfItem)),
          );
        },
      ),
      bottomNavigationBar: const CheckoutCard(),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../models/Cart.dart';
// import 'components/cart_card.dart';
// import 'components/check_out_card.dart';

// class CartScreen extends StatefulWidget {
//   static String routeName = "/cart";

//   const CartScreen({super.key});

//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Column(
//           children: [
//             const Text(
//               "Your Cart",
//               style: TextStyle(color: Colors.black),
//             ),
//             Text(
//               "${demoCarts.length} items",
//               style: Theme.of(context).textTheme.bodySmall,
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: ListView.builder(
//           itemCount: demoCarts.length,
//           itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Dismissible(
//               key: Key(demoCarts[index].product.id.toString()),
//               direction: DismissDirection.endToStart,
//               onDismissed: (direction) {
//                 setState(() {
//                   demoCarts.removeAt(index);
//                 });
//               },
//               background: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFFFE6E6),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Row(
//                   children: [
//                     const Spacer(),
//                     SvgPicture.asset("assets/icons/Trash.svg"),
//                   ],
//                 ),
//               ),
//               child: CartCard(cart: demoCarts[index]),
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: const CheckoutCard(),
//     );
//   }
// }
