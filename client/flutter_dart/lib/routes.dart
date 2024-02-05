import 'package:go_router/go_router.dart';
import "package:shoppinho/screens/home.dart";

final routes = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    )
]);