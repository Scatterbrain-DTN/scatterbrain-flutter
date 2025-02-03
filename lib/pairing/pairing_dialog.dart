import 'dart:async';

import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/api.dart';
import 'package:scatterbrain_flutter/scatterbrain/prefs.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PairingDialog extends AlertDialog {
  final FutureOr<void> Function(SbSession?) onPair;
  final PairingSession session;
  final String coinText;
  final SharedPreferencesAsync prefs;

  const PairingDialog(
      {super.key,
      required this.session,
      required this.coinText,
      required this.onPair,
      required this.prefs});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Pairing request"),
      content: Text(coinText),
      actions: [
        ElevatedButton(
            onPressed: () async {
              final s = await session.tryPairConfirm(accept: true);
              await prefs.getConfig(remotekey: s.remotekey);
              await onPair(s.session);

              if (context.mounted) {
                Navigator.of(context, rootNavigator: true).pop();
              }
            },
            child: const Text("Confirm")),
        ElevatedButton(
            onPressed: () async {
              final s = await session.tryPairConfirm(accept: false);
              await prefs.deleteRemote();
              await onPair(s.session);
              if (context.mounted) {
                Navigator.of(context, rootNavigator: true).pop();
              }
            },
            child: const Text("Deny"))
      ],
    );
  }
}
