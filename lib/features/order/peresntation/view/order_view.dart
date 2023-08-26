import 'package:flutter/material.dart';
import 'package:smart_shope/features/order/peresntation/view/widgets/order_body_view.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderViewBody(),
    );
  }
}
