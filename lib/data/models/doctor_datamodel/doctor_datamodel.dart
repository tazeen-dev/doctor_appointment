import 'package:flutter/material.dart';
class Doctor {
  final String name;
  final String specialty;
  final double rating;
  final String image;
  final bool isAvailable;

  const Doctor({
    required this.name,
    required this.specialty,
    required this.rating,
    required this.image,
    required this.isAvailable,
  });
}