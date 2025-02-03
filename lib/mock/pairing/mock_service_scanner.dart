import 'dart:async';

import 'package:scatterbrain_flutter/mock/pairing/mock_host_record.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/mdns.dart';

class MockServiceScanner implements ServiceScanner {
  final List<MockHostRecord> records;

  MockServiceScanner({required this.records});

  @override
  Future<void> discoverDevices(
      {required FutureOr<void> Function(List<HostRecord> p1) cb}) async {
    await cb(records);
  }

  @override
  Future<void> stopScan() async {
    records.clear();
  }

  @override
  void dispose() {}

  @override
  bool get isDisposed => false;
}
