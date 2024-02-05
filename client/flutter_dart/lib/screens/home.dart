import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;
  final List<String> _imageUrls = [
    "https://placekitten.com/200/200",
    "https://placekitten.com/201/201",
    "https://placekitten.com/202/202",
    "https://placekitten.com/203/203",
    "https://placekitten.com/204/204"
  ];

  final List<String> _clothingNames = [
    "Camiseta",
    "Calça Jeans",
    "Vestido",
    "Moletom",
    "Sapato"
  ];

  final List<double> _clothingPrices = [
    29.99,
    49.99,
    39.99,
    59.99,
    79.99
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoppinho")
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label: "Acessórios", 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.branding_watermark),
            label: "Marcas", 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Roupas", 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shower_sharp),
            label: "Tênis", 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            label: "Lançamentos", 
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        }
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8
            ),
            items: _imageUrls.map((url) =>
              Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover
                  )
                ),
              )
            ).toList(),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: _clothingNames.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0 
              ),
              itemBuilder: (context, index) => Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push("/product");
                      },
                      child: 
                        Image.network(
                        _imageUrls[index % _imageUrls.length],
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                    )
,
                    const SizedBox(height: 8.0),
                    Text(
                      _clothingNames[index % _clothingNames.length],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('\$${_clothingPrices[index % _clothingPrices.length]}')
                  ]
                )
              )
            ),
          )
      ])
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}