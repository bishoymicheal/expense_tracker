import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      categoty: Category.work,
    ),
    Expense(
      title: ' Cinema',
      amount: 19.99,
      date: DateTime.now(),
      categoty: Category.leisure,
    ),
    Expense(
      title: ' Italy',
      amount: 19.99,
      date: DateTime.now(),
      categoty: Category.travel,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Chart'),
          SizedBox(
            height: 15,
          ),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
