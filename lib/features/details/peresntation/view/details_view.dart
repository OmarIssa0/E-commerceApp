import 'package:flutter/material.dart';
import 'package:smart_shope/features/details/peresntation/view/widgets/button_nav_bar.dart';
import 'package:smart_shope/features/details/peresntation/view/widgets/details_body_view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: DetailsBodyView(),
      bottomNavigationBar: SafeArea(
        bottom: false,
        child: ButtonNavBarDetailsView(),
      ),
    );
  }
}
