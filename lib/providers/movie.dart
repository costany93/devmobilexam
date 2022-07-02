import 'package:flutter/material.dart';

class Movie {
  final String id;
  final String title;
  final String cover;
  final bool latest;
  final bool ismovie;

  Movie({
    required this.id,
    required this.title,
    required this.cover,
    required this.ismovie,
    required this.latest,
  });
}
