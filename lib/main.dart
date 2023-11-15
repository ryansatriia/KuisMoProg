import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.red,
            title: Text('Godrej'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    // Use your profile picture link here
                    backgroundImage: NetworkImage(''),
                    radius: 30,
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person),
                      Text('Followers: 100'),
                    ],
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Mengikuti'),
                  ),
                  SizedBox(height: 8),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  ),
                ],
              ),
              // Carousel widget for promotions
              // Add your carousel widget here

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Belanja berdasarkan kategori',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              // Row of 4 buttons with images for categories
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryButton(imageUrl: 'https://th.bing.com/th/id/OIP.kSm3Y5zdMrmms1HK3sIwNQAAAA?w=190&h=191&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                  CategoryButton(imageUrl: 'https://th.bing.com/th/id/OIP.Ln4ZP1_guBfvdLrZIGi8SAHaHa?w=183&h=183&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                  CategoryButton(imageUrl: 'https://th.bing.com/th/id/OIP.oJZr_pvLZCFaNL9pyYuJ0wHaHf?w=146&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                  CategoryButton(imageUrl: 'https://th.bing.com/th?id=OIP.NXTeH43C6DaOWt9cO5uiqwHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Semua Produk',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text('Promosi'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Nama Produk'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Terlaris'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Product grid
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductItem(
                    imageUrl: 'https://th.bing.com/th?id=OIP.GGIm4d6eIAwnKuCYpjfbFQAAAA&w=213&h=282&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                    name: "Stella Parfum'ist",
                    price: "Rp 30.000",
                  ),
                  ProductItem(
                    imageUrl: 'https://th.bing.com/th/id/OIP.pPDG7MVf85kRiz0seYBLsAHaHa?w=210&h=210&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                    name: 'Stella Car Perfume Energyc Purple',
                    price: 'Rp. 41.500',
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductItem(
                    imageUrl: 'https://th.bing.com/th/id/OIP.2juZxxl6--p0pcoon0qdxAHaHa?w=210&h=210&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                    name: 'Stella Car Perfume Shine Red',
                    price: 'Rp. 41.500',
                  ),
                  ProductItem(
                    imageUrl: 'https://th.bing.com/th/id/OIP.vieD07wofR3Cdp6SGlhAYAAAAA?w=144&h=210&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                    name: 'Stella Car Perfume Musk Yellow',
                    price: 'Rp. 41.500',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String imageUrl;

  CategoryButton({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Image.network(
        imageUrl,
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;

  ProductItem({
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: 120,
            height: 160,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 4),
          Text(name),
          SizedBox(height: 4),
          Text(price),
          ElevatedButton(
            onPressed: () {},
            child: Text('+ Keranjang'),
          ),
        ],
      ),
    );
  }
}
