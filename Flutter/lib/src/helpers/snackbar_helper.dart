import 'package:flutter/material.dart';

showSnackBar(
        {required BuildContext context,
        required String message,
        int duration = 3,
        Color color = Colors.green}) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(fontSize: 14, color: color),
        ),
        backgroundColor: Colors.black.withOpacity(0.9),
        duration: Duration(seconds: duration),
      ),
    );
