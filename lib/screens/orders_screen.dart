import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rock_it/providers/orders.dart' show Orders;
import 'package:rock_it/widgets/app_drawer.dart';
import '../widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static String routeName = 'order-screen';
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: ordersData.orders.length,
        itemBuilder: (context, index) =>
            OrderItem(order: ordersData.orders[index]),
      ),
    );
  }
}
