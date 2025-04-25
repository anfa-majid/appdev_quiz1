import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionModel {
  final String title;
  final double amount;
  final DateTime timestamp;

  TransactionModel({
    required this.title,
    required this.amount,
    required this.timestamp,
  });

  factory TransactionModel.fromFirestore(Map<String, dynamic> data) {
    return TransactionModel(
      title: data['title'] ?? '',
      amount: (data['amount'] as num).toDouble(),
      timestamp: (data['timestamp'] as Timestamp).toDate(),
    );
  }
}

