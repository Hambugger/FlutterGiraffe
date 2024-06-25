// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  const CustomFormField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
            decoration: InputDecoration(
              label: Text(
                label,
              ),
              labelStyle: TextStyle(
                color: Colors.black38,
              ),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          );
  }
}
