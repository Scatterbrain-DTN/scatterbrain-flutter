import 'dart:async';

import 'package:scatterbrain_flutter/pairing/search_state.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/api.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/mdns.dart';
import 'package:scatterbrain_flutter/scatterbrain/prefs.dart';
import 'package:scatterbrain_flutter/pairing/routercard.dart';
import 'package:scatterbrain_flutter/scatterbrain/repository.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _SearchListState extends State<SearchList> {
  String error = "";
  Widget? inner;

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
    print("onDisconnect");
    setState(() {
      inner = null;
      error = "Disconnected";
    });
  }

  Widget _getScaner() {
    final r = Scaffold(
        appBar: AppBar(
          title: const Text("Scanning for scatterbrain devices"),
          actions: [
            ElevatedButton(
                onPressed: () async => await widget.prefs.clear(),
                child: const Text('Delete'))
          ],
        ),
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
                            widget.onPair(repository, b, onDisconnect, null);
                      });
                    } else {
                      setState(() {
                        inner = widget.onConnect(
                            null, (_) {}, Exception("failed to connect"));
                      });
                    }
                  });
                  print("got pairing status $pairing");
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
                              onDisconnect,
                              null);
                        }
                      }, null),
                    PairStatus_Paired(:final field0) => widget.onPair(
                        ScatterbrainRepository(
                            record: v,
                            appName: widget.appName,
                            config: config,
                            currentSession: field0),
                        field0,
                        onDisconnect,
                        null)
                  };
                  if (p != null) {
                    widget.scanner.pair();
                  } else {
                    print("unpaired! for some reason");
                  }
                  setState(() {
                    inner = p;
                  });
                } on Exception catch (e) {
                  setState(() {
                    inner = widget.onConnect(null, (_) {}, e);
                  });
                }
              },
            );
          }).toList()),
        ]));

    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   if (inner == null) {
    //     await widget.scanner.startScan();
    //   } else {
    //     await widget.scanner.stopScan();
    //   }
    // });

    return r;
  }

  @override
  Widget build(BuildContext context) {
    return inner ?? _getScaner();
  }
}

typedef OnDisconnect = FutureOr<void> Function();

typedef OnPair = Widget Function(
    ScatterbrainRepository, SbSession, OnDisconnect, Exception?);

typedef OnConnect = Widget? Function(
    PairingSession?, FutureOr<void> Function(SbSession?), Exception?);

class SearchList extends StatefulWidget {
  final OnConnect onConnect;
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
