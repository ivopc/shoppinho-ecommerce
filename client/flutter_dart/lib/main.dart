import 'package:flutter/material.dart';
import "package:shoppinho/routes.dart";

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Shoppinho",
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
    );
  }
}