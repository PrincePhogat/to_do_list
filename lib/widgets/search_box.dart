import 'package:flutter/material.dart';

Widget searchBox() {
  return Container(
    padding: const EdgeInsets.symmetric(),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20.0,
          maxWidth: 25.0,
        ),
        border: InputBorder.none,
        hintText: 'Search',
      ),
    ),
  );
}
