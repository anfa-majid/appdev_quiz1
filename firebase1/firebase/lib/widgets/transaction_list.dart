import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/bloc.dart';
import '../../blocs/state.dart';
import '../../widgets/tile.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is TransactionLoaded) {
          if (state.transactions.isEmpty) {
            return const Center(child: Text("No transactions found."));
          }
          return ListView.builder(
            itemCount: state.transactions.length,
            itemBuilder: (context, index) {
              return Tile(tx: state.transactions[index]);
            },
          );
        } else if (state is TransactionError) {
          return Center(child: Text(state.message));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
