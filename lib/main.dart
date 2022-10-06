import 'package:flutefy/pages/home/home_page.dart';
import 'package:flutefy/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutefy',
      theme: ThemeData(
        primarySwatch: primarySwatch,
      ),
      home: const HomePage(),
    ),
  );
}
