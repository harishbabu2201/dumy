import 'package:flutter/material.dart';

class MostViewed extends StatelessWidget {
  final String imageUrl;
  final double price;
  final double rating;
  final String title;
  final String description;

  const MostViewed({
    super.key,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                      imageUrl,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    top: 16,
                    right: 16,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01, horizontal: screenWidth * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$$price ',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/ Night',
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        Icon(
                          Icons.flash_on,
                          size: screenWidth * 0.04,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: screenWidth * 0.04,
                          color: Colors.red,
                        ),
                        Text(
                          '$rating',
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: screenHeight * 0.005),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: screenWidth * 0.04,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MostViewedPage extends StatelessWidget {
  const MostViewedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> mostViewedData = [
      {
        'imageUrl': 'https://picsum.photos/seed/building/200/300',
        'price': 120,
        'rating': 4.5,
        'title': 'Carinthia Lake see Breakfast',
        'description': 'Private room / 4 beds',
      },
      {
        'imageUrl': 'https://picsum.photos/seed/home/200/300',
        'price': 150,
        'rating': 4.8,
        'title': 'Mountain View Cabin',
        'description': 'Entire cabin / 2 beds',
      },
      {
        'imageUrl': 'https://picsum.photos/seed/apartment/200/300',
        'price': 200,
        'rating': 4.7,
        'title': 'City Apartment',
        'description': 'Entire apartment / 3 beds',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: mostViewedData.length,
      itemBuilder: (context, index) {
        final item = mostViewedData[index];
        return Column(
          children: [
            MostViewed(
              imageUrl: item['imageUrl'],
              price: item['price'],
              rating: item['rating'],
              title: item['title'],
              description: item['description'],
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
