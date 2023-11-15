import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWyCi8ymJIw7gwlFmmrLBIRFrqb-HwZvGgQQ&usqp=CAU'),
                      radius: 30,
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Godrej',
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            Icon(Icons.person),
                            Text('5.441 Pengikut'),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                          ),
                          child: Text('Mengikuti'),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              CarouselSlider(
                items: [
                  Image.network(
                    'https://th.bing.com/th/id/OIP.K0c8B-NBI9Ufqedwgn77ewHaD4?w=306&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),

                ],
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Belanja berdasarkan kategori',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

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
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Semua Produk',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {},
            child: Text('Promosi'),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text('Nama Produk'),
                    Icon(Icons.arrow_drop_up_sharp),
                  ],
                ),
              ),
            ],
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ProductItem(
                      imageUrl: 'https://th.bing.com/th/id/OIP.7gWRcTtEboTUh2SANAxe3AHaHa?w=204&h=204&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      name: "Minyak Kayu Putih Cap Lang 60 Ml",
                      price: "Rp 20.000",
                    ),
                  ),
                  Expanded(
                    child: ProductItem(
                      imageUrl: 'https://th.bing.com/th/id/OIP.pPDG7MVf85kRiz0seYBLsAHaHa?w=210&h=210&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      name: 'Stella Car Perfume Energyc Purple',
                      price: 'Rp. 41.500',
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ProductItem(
                      imageUrl: 'https://th.bing.com/th/id/OIP.2juZxxl6--p0pcoon0qdxAHaHa?w=210&h=210&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      name: 'Stella Car Perfume Shine Red',
                      price: 'Rp. 41.500',
                    ),
                  ),
                  Expanded(
                    child: ProductItem(
                      imageUrl: 'https://th.bing.com/th/id/OIP.vieD07wofR3Cdp6SGlhAYAAAAA?w=144&h=210&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      name: 'Stella Car Perfume Musk Yellow',
                      price: 'Rp. 41.500',
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ProductItem(
                      imageUrl: 'https://th.bing.com/th/id/OIP.1a47s2GljovuLlRvKNDRxwHaJ4?w=149&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      name: "Kopi Kapal Api 10 Pcs",
                      price: "Rp 15.000",
                    ),
                  ),
                  Expanded(
                    child: ProductItem(
                      imageUrl: 'https://th.bing.com/th/id/OIP.GpJ0tZiLpBhF86VSmd-uGQHaHa?pid=ImgDet&rs=1',
                      name: 'Chitato 68g Sapi Bakar',
                      price: 'Rp. 23.500',
                    ),
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
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageUrl,
            width: 120,
            height: 160,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 4),
          Text(
            name,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Text(
            price,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 158, 28, 16),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('+ Keranjang'),
          ),
        ],
      ),
    );
  }
}
