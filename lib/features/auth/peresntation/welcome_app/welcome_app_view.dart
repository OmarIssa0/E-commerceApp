import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_shope/features/auth/peresntation/welcome_app/widget/welcome_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: WelcomeViewBody(),
      ),
    );
  }
}
