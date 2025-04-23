import 'package:expense_tracker/expenses_list.dart';
import 'package:flutter/material.dart';
import 'model/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

final List<Expense> _registeredExpenses = [
  Expense(
    title: 'Flutter Course',
    amount : 19.99,
    date: DateTime.now(),
    category:   Category.work
  ),
  Expense(
      title: 'Cinema',
      amount : 50,
      date: DateTime.now(),
      category:   Category.leisure
  ),
];

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('This is text1'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
