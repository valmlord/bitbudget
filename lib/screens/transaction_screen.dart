import 'package:flutter/material.dart';
import 'package:bitbudget/blocs/transaction_bloc.dart';
import 'package:bitbudget/widgets/transaction_list.dart';

class TransactionScreen extends StatelessWidget {
  final TransactionBloc _bloc = TransactionBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transactions')),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<List<Transaction>>(
              stream: _bloc.transactions,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return TransactionList(transactions: snapshot.data!);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          // Add transaction input fields here
        ],
      ),
    );
  }
}
