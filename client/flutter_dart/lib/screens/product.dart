import 'package:flutter/material.dart';
import "package:shoppinho/widgets/button.dart";
import "package:shoppinho/widgets/image.dart";
import "package:shoppinho/widgets/text.dart";
import "package:shoppinho/widgets/title.dart";

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoppinho")
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
      );
  }
}