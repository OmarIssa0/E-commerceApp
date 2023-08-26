import 'package:go_router/go_router.dart';
import 'package:smart_shope/features/rootView/peresntation/view/root_view.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const RootViews(),
      ),
    ],
  );
}
