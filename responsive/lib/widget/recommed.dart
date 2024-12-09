import 'package:flutter/material.dart';

class RecommendedWidget extends StatelessWidget {
  final double price;
  final String imageUrl;
  final String title;
  final String description;
  final int rating;

  const RecommendedWidget({
    super.key,
    required this.price,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 0, // Remove shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Border radius
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  imageUrl,
                  height: 180,
                  width: screenWidth * 0.6, // Responsive width
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Price and Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$$price ',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('/ Night'),
                        const Icon(Icons.flash_on,
                            size: 16, color: Colors.orange),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star, size: 16, color: Colors.red),
                        Text('$rating'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Title and Description
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    const double carouselHeight = 340; // Fixed height for the carousel

    return Container(
      height: carouselHeight, // Fixed height for the carousel
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05), // Responsive horizontal padding
      child: PageView(
        controller: PageController(
            viewportFraction: 0.9), // Set viewportFraction to allow overlap
        scrollDirection: Axis.horizontal,
        children: const [
          RecommendedWidget(
            price: 120,
            imageUrl: 'https://picsum.photos/seed/homme/200/300',
            title: 'Carinthia Lake see Breakfast...',
            description: 'Private room / 4 beds',
            rating: 4,
          ),
          RecommendedWidget(
            price: 350,
            imageUrl: 'https://picsum.photos/seed/lake/200/300',
            title: 'Luxury Villa with Ocean View',
            description: 'Entire villa / 5 beds',
            rating: 5,
          ),
          RecommendedWidget(
            price: 220,
            imageUrl: 'https://picsum.photos/seed/mountain/200/300',
            title: 'Cozy Mountain Cabin',
            description: 'Private cabin / 3 beds',
            rating: 4,
          ),
        ],
      ),
    );
  }
}
