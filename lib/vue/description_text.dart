import 'package:flutter/material.dart';

class DescText extends Text {

  final String description;

  DescText({required this.description}): super(
    description,
    style: const TextStyle(color: Colors.black54),
  );

}