import 'package:flutter/material.dart';
import 'package:webtoon_app/details_page.dart';
import 'package:webtoon_app/product_details.dart';
import 'package:webtoon_app/product_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      appBar: AppBar(
        title: Text(
          'Webtoons',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[400],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductDetails(
                            product: product,
                          ),
                        ),
                      );
                    });
                  },
                  child: ProductPage(
                    title: product['title'] as String,
                    image: product['image'] as String,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
