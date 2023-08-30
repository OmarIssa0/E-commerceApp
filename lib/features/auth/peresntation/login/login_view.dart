import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_shope/features/auth/peresntation/login/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
