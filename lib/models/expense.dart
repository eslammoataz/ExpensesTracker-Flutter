import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

enum Category {
  food,
  transportation,
  housing,
  health,
  entertainment,
  education,
  other,
}

const categoryIcons = {
  Category.food: Icons.fastfood,
  Category.transportation: Icons.directions_car,
  Category.housing: Icons.home,
  Category.health: Icons.local_hospital,
  Category.entertainment: Icons.celebration,
  Category.education: Icons.school,
  Category.other: Icons.drive_file_rename_outline_sharp,
};

class Expense {
  Expense({
    required this.title,
    required this.description,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final String description;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
