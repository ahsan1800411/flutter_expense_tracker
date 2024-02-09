import 'package:expense_tracker/expense_item.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  final void Function(Expense) removeExpense;
  const ExpensesList(
      {super.key, required this.expenses, required this.removeExpense});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        final expense = expenses[index];

        return Dismissible(
          key: ValueKey(expense),
          background: Container(
            color: Theme.of(context).primaryColor,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            margin: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 15,
            ),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
              size: 40,
            ),
          ),
          onDismissed: (direction) {
            removeExpense(expense);
          },
          child: ExpenseItem(expense: expense),
        );
      },
      itemCount: expenses.length,
    );
  }
}
