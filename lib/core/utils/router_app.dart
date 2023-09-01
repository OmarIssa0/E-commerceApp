import 'package:go_router/go_router.dart';
import 'package:smart_shope/features/auth/peresntation/login/login_view.dart';
import 'package:smart_shope/features/auth/peresntation/register/register_view.dart';
import 'package:smart_shope/features/auth/peresntation/welcome_app/welcome_app_view.dart';

class AppRouter {
  static String kLoginView = '/loginView';
  static String kRegisterView = '/RegisterView';
  // static String kWelcomeView = '/WelcomeView';
  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const RootViews(),
      // ),
      GoRoute(
        // path: kLoginView,
        path: '/',
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
    ],
  );
}
