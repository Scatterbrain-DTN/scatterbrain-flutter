import 'package:flutter/material.dart';

class ErrorDialog extends AlertDialog {
  final String errorText;
  const ErrorDialog({super.key, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Failed to connect: $errorText'),
      actions: [
        ElevatedButton(
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
            child: const Text('Ok'))
      ],
    );
  }
}
