import 'package:flutter/material.dart';
import 'package:smart_shope/features/home/peresntatio/view/widgets/home_body_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: HomeBodyView(),
      ),
    );
  }
}
