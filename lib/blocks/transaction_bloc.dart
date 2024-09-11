import 'dart:async';
import 'package:bitbudget/models/transaction.dart';
import 'package:bitbudget/repositories/transaction_repository.dart';

class TransactionBloc {
  final TransactionRepository _repository = TransactionRepository();
  final _transactionController =
      StreamController<List<Transaction>>.broadcast();

  Stream<List<Transaction>> get transactions => _transactionController.stream;

  void addTransaction(Transaction transaction) {
    _repository.addTransaction(transaction);
    _transactionController.sink.add(_repository.getTransactions());
  }

  void dispose() {
    _transactionController.close();
  }
}
