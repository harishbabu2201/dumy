import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color(0xFFF8F7FC),
      height: 100,
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04), // Responsive horizontal padding
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 61,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAE6E6),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(Icons.search, color: Colors.black54),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          hintText: 'Where did you go?',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            height: 61,
            width: 61,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                      color: Colors.white.withOpacity(0.5), width: 2.0),
                ),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              child: const Icon(Icons.tune, color: Colors.black, size: 25),
            ),
          ),
        ],
      ),
    );
  }
}
