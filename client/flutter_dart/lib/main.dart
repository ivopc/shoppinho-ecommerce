import 'package:flutter/material.dart';
import "package:shoppinho/widgets/button.dart";
import "package:shoppinho/widgets/image.dart";
import "package:shoppinho/widgets/text.dart";
import "package:shoppinho/widgets/title.dart";
import "package:shoppinho/widgets/favorite.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "Flutter Dart";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
        title: const Text(appTitle)
      ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImageSection(
                  image: "images/lake.png"
                ),
                TitleSection(
                  name: "Ivopc",
                  location: "São Paulo, SP",
                ),
                ButtonSection(),
                TextSection(
                  description: 
                    "Text in the pubspec.yaml respects whitespace and text case. Write the changes to the file as given in the previous example."
                    "This change might require you to restart the running program to display the image."
                )
              ]
            ),
          )
        )
      )
    );
  }
}
