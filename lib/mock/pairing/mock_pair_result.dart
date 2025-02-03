import 'dart:convert';

import 'package:scatterbrain_flutter/mock/scatterbrain/mock_session.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/api.dart';

class MockPairResult implements PairResult {
  MockPairResult({required this.mockSession});

  final String key = const Base64Encoder.urlSafe().convert(List.filled(16, 0));

  final MockSession mockSession;

  @override
  String get remotekey => key;

  @override
  SbSession get session => mockSession;
}
