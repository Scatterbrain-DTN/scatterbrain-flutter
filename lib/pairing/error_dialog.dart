import 'package:flutter/material.dart';

class ErrorDialog extends AlertDialog {
  const ErrorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Failed to connect'),
      actions: [
        ElevatedButton(
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
            child: const Text('Ok'))
      ],
    );
  }
}
