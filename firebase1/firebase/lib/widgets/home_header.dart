import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final double totalAmount;

  const HomeHeader({super.key, required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dayName = _getWeekday(now.weekday); 
    final formattedDate = "${now.day} ${_month(now.month)}"; 

    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Back Arrow
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Icon(Icons.more_horiz), 
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dayName.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    formattedDate,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Text(
                "\$${totalAmount.toStringAsFixed(0)}",
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getWeekday(int weekday) {
    return ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'][weekday - 1];
  }

  String _month(int month) {
    return ['', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'][month];
  }
}
