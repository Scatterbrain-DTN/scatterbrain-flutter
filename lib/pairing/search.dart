import 'dart:async';

import 'package:scatterbrain_flutter/pairing/search_state.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/api.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/mdns.dart';
import 'package:scatterbrain_flutter/scatterbrain/prefs.dart';
import 'package:scatterbrain_flutter/pairing/routercard.dart';
import 'package:scatterbrain_flutter/scatterbrain/repository.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef SearchContent = Widget? Function(BuildContext);
Widget? _def(BuildContext ctx) {
  return null;
}

class _SearchListState extends State<SearchList> {
  String error = "";
  SearchContent inner = _def;

  Future<void> onScan() async {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    widget.scanner.addListener(onScan);
  }

  @override
  void dispose() {
    super.dispose();
    widget.scanner.removeListener(onScan);
  }

  Future<PairStatus> pair(
      HostRecord record, FutureOr<void> Function(SbSession?) onConnect) async {
    final state = await widget.prefs.getConfig();
    final session = await record.tryPair(
        state: state, appName: widget.appName, onConnect: onConnect);
    return session;
  }

  void onDisconnect() {
    setState(() {
      inner = _def;
      error = "Disconnected";
    });
  }

  Widget _getScaner(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(title: const Text("Scanning for scatterbrain devices")),
        body: Column(children: [
          Text('Devices found: ${widget.scanner.devices.length}\n$error'),
          Column(
              children: widget.scanner.devices.map((v) {
            return RouterCard(
              record: v,
              onConnect: (r) async {
                try {
                  final config = await widget.prefs.getConfig();
                  final pairing = await pair(v, (b) async {
                    await widget.scanner.stopScan();
                    if (b != null) {
                      final repository = ScatterbrainRepository(
                          record: v,
                          appName: widget.appName,
                          currentSession: b,
                          config: config);
                      widget.scanner.pair();

                      setState(() {
                        inner =
                            (ctx) => widget.onPair(repository, b, onDisconnect);
                      });
                    } else {
                      setState(() {
                        inner = (ctx) => widget.onConnect(null, (_) {});
                      });
                    }
                  });
                  final p = switch (pairing) {
                    PairStatus_NotPaired(:final field0) =>
                      widget.onConnect(field0, (s) {
                        if (s != null) {
                          widget.onPair(
                              ScatterbrainRepository(
                                  record: v,
                                  appName: widget.appName,
                                  config: config,
                                  currentSession: s),
                              s,
                              onDisconnect);
                        }
                      }),
                    PairStatus_Paired(:final field0) => widget.onPair(
                        ScatterbrainRepository(
                            record: v,
                            appName: widget.appName,
                            config: config,
                            currentSession: field0),
                        field0,
                        onDisconnect)
                  };
                  if (p != null) {
                    widget.scanner.pair();
                  }
                  setState(() {
                    inner = (ctx) => p;
                  });
                } on Exception {
                  setState(() {
                    inner = (ctx) => widget.onConnect(null, (_) {});
                  });
                }
              },
            );
          }).toList()),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return inner(context) ?? _getScaner(context);
  }
}

typedef OnDisconnect = FutureOr<void> Function();

typedef OnPair = Widget Function(
    ScatterbrainRepository, SbSession, OnDisconnect);

class SearchList extends StatefulWidget {
  final Widget? Function(PairingSession?, FutureOr<void> Function(SbSession?))
      onConnect;
  final OnPair onPair;
  final String appName;
  final SharedPreferencesAsync prefs;
  final SearchState scanner;
  SearchList(
      {required this.appName,
      required this.onConnect,
      required this.prefs,
      required this.scanner,
      required this.onPair})
      : super(key: GlobalKey());
  @override
  State<StatefulWidget> createState() {
    return _SearchListState();
  }
}
