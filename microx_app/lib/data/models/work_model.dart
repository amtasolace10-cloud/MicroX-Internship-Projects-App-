import 'package:flutter/material.dart';

class WorkStat {
  const WorkStat(this.label, this.value);
  final String label;
  final String value;
}

class WorkModel {
  const WorkModel({
    required this.type,
    required this.title,
    required this.description,
    required this.brandLabel,
    required this.previewHeadline,
    required this.gradient,
    required this.url,
    this.stats = const [],
  });

  final String type; // e.g. Web application
  final String title;
  final String description;
  final String brandLabel; // small text on the preview picture
  final String previewHeadline; // big text on the preview picture
  final List<Color> gradient;
  final String url;
  final List<WorkStat> stats;
}
