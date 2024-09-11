import 'package:bitbudget/models/transaction.dart';

class TransactionRepository {
  final List<Transaction> _transactions = [];

  List<Transaction> getTransactions() {
    return _transactions;
  }

  void addTransaction(Transaction transaction) {
    _transactions.add(transaction);
  }
}
