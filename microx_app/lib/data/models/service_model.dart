import 'package:flutter/material.dart';

class ServiceModel {
  const ServiceModel({
    required this.number,
    required this.title,
    required this.description,
    required this.icon,
    required this.url,
  });

  final String number;
  final String title;
  final String description;
  final IconData icon;
  final String url;
}
