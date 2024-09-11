import 'package:flutter/material.dart';
import 'package:bitbudget/blocs/shopping_list_bloc.dart';
import 'package:bitbudget/widgets/shopping_list.dart';

class ShoppingListScreen extends StatelessWidget {
  final ShoppingListBloc _bloc = ShoppingListBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shopping List')),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<List<ShoppingItem>>(
              stream: _bloc.shoppingItems,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ShoppingList(items: snapshot.data!);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          // Add shopping item input fields here
        ],
      ),
    );
  }
}
