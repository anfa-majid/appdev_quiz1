import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/bloc.dart';
import '../../blocs/event.dart';
import '../../blocs/state.dart';
import '../../service/service.dart';
import '../widgets/home_header.dart';
import '../widgets/transaction_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          TransactionBloc(firestoreService: FirestoreService())..add(LoadTransactions()),
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: BlocBuilder<TransactionBloc, TransactionState>(
            builder: (context, state) {
              double totalAmount = 0;

              if (state is TransactionLoaded) {
                totalAmount = state.transactions.fold(
                  0,
                  (sum, tx) => sum + tx.amount,
                );
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeHeader(totalAmount: totalAmount), 
                  const SizedBox(height: 12),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Transactions",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 16),
                            Expanded(child: TransactionList()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
