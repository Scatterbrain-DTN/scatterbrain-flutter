import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/api.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/mdns.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/types.dart';

class ScatterbrainRepository {
  final HostRecord record;
  final String appName;
  final SbSession currentSession;
  final CryptoConfig config;

  ScatterbrainRepository(
      {required this.record,
      required this.appName,
      required this.config,
      required this.currentSession});
}
