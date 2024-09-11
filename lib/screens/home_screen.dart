import 'package:flutter/material.dart';
import 'package:bitbudget/screens/transaction_screen.dart';
import 'package:bitbudget/screens/shopping_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Handle logout
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Transactions'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TransactionScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Shopping List'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoppingListScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
