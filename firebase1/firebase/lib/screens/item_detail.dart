import 'package:flutter/material.dart';
import '../widgets/colorCircle.dart'; 

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Text(
                      'Recommended for\nyour devices',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1E),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 16),
                        Center(
                          child: Image.asset(
                            'assets/headphones.jpg',
                            height: 180,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 32),
                        const Text(
                          'Free Engraving',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'AirPods Max — Silver',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'A\$899.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 24),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              ColorCircle(color: Colors.black),
                              ColorCircle(color: Colors.grey),
                              ColorCircle(color: Colors.redAccent),
                              ColorCircle(color: Colors.greenAccent),
                              SizedBox(width: 8),
                              Text(
                                '+1 more',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
