import 'package:go_router/go_router.dart';
import "package:shoppinho/screens/home.dart";
import "package:shoppinho/screens/product.dart";

final routes = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: "/product",
      builder: (context, state) => const ProductScreen()
    )
  ]
);