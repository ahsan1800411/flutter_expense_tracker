import 'package:flutter/material.dart';

enum ExpenseCategory { travel, food, work, leisure }

const categoryIcons = {
  ExpenseCategory.travel: Icons.flight,
  ExpenseCategory.food: Icons.fastfood,
  ExpenseCategory.work: Icons.work,
  ExpenseCategory.leisure: Icons.movie,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = DateTime.now().toString();

  String id;
  String title;
  double amount;
  DateTime date;
  ExpenseCategory category;
}

class ExpenseBucket {
  ExpenseBucket({
    required this.category,
    required this.expenses,
  });

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  ExpenseCategory category;
  List<Expense> expenses;

  double get totalExpenses =>
      expenses.fold(0, (acc, expense) => acc + expense.amount);
}
