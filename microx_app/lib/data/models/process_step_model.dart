import 'package:flutter/material.dart';

class ProcessStepModel {
  const ProcessStepModel({
    required this.number,
    required this.title,
    required this.description,
    this.icon,
  });

  final String number;
  final String title;
  final String description;
  final IconData? icon;
}
