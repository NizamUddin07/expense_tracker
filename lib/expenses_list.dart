import 'package:expense_tracker/expenses.dart';
import 'package:flutter/material.dart';

import 'model/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses,});

  final List<Expense>  expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:expenses.length,
        itemBuilder: (context, index) => Text(expenses[index].title),
    );
  }
}
