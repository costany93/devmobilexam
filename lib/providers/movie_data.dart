import 'package:flutter/material.dart';

import 'package:devmobilexam/providers/movie.dart';

final MEALS_DATA = [
  Movie(
    id: '1',
    title: 'La chasse au fleau',
    cover: 'assets/images/1.jpeg',
    ismovie: false,
    latest: true,
  ),
  Movie(
    id: '1',
    title: 'L\'eau',
    cover: 'assets/images/2.jpeg',
    ismovie: true,
    latest: true,
  ),
  Movie(
    id: '3',
    title: 'La facade cacher',
    cover: 'assets/images/3.jpeg',
    ismovie: true,
    latest: false,
  ),
  Movie(
    id: '4',
    title: 'Le tresor',
    cover: 'assets/images/4.jpeg',
    ismovie: false,
    latest: false,
  ),
  Movie(
    id: '5',
    title: 'La chasse de vertu',
    cover: 'assets/images/5.jpeg',
    ismovie: false,
    latest: false,
  ),
];
