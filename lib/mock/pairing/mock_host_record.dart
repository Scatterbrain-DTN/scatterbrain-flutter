import 'dart:async';

import 'package:scatterbrain_flutter/mock/pairing/mock_pairing_session.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/api.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/mdns.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/mirror.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/types.dart';

class MockHostRecord implements HostRecord {
  final MockPairingSession session;
  final List<IpAddr> addrs;
  final String name;
  final int port;

  MockHostRecord(
      {required this.session,
      required this.port,
      required this.addrs,
      required this.name});

  @override
  Future<SbSession> pair(
      {required CryptoConfig state,
      required String appName,
      required FutureOr<bool> Function(List<String> p1) cb}) async {
    await cb(session.coin);
    return session.result!.mockSession;
  }

  @override
  Future<PairStatus> tryPair(
      {required CryptoConfig state,
      required String appName,
      required FutureOr<void> Function(SbSession? p1) onConnect}) async {
    if (session.result == null) {
      return PairStatus.notPaired(session);
    } else {
      return PairStatus.paired(session.result!.session);
    }
  }

  @override
  Future<SbSession?> connect({required CryptoConfig state}) async {
    return session.result?.session;
  }

  @override
  List<IpAddr> getAddrs() {
    return addrs;
  }

  @override
  void dispose() {}

  @override
  String getName() {
    return name;
  }

  @override
  int getPort() {
    return port;
  }

  @override
  bool get isDisposed => false;
}
