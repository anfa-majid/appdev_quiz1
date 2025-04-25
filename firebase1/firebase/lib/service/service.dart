import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/model.dart';

class FirestoreService {
  Future<List<TransactionModel>> getTransactions() async {
    final snapshot = await FirebaseFirestore.instance
        .collection('transactions')
        .orderBy('timestamp', descending: true) 
        .get();

    return snapshot.docs
        .map((doc) => TransactionModel.fromFirestore(doc.data()))
        .toList();
  }
}
