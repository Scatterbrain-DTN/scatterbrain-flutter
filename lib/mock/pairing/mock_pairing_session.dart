import 'package:scatterbrain_flutter/mock/pairing/mock_pair_result.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/api.dart';
import 'package:uuid/uuid_value.dart';

class MockPairingSession implements PairingSession {
  MockPairingSession({required this.coin, required this.session, this.result});

  final MockPairResult? result;

  @override
  List<String> coin;

  @override
  UuidValue session;

  @override
  void dispose() {}

  @override
  bool get isDisposed => false;

  @override
  Future<PairResult> tryPairConfirm({required bool accept}) async {
    if (accept) {
      return result!;
    } else {
      throw "pairing failed";
    }
  }
}
