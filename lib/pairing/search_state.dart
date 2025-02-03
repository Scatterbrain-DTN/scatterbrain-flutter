import 'package:flutter/widgets.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/mdns.dart';

class SearchState extends ChangeNotifier {
  final ServiceScannerLike _scanner;
  bool paired;

  List<HostRecord> devices = const [];

  SearchState({required ServiceScannerLike scanner, this.paired = false})
      : _scanner = scanner;

  Future<void> startScan() async {
    await _scanner.discoverDevices(cb: (devices) {
      this.devices = devices.toList();
      notifyListeners();
    });
  }

  void pair() {
    paired = true;
  }

  Future<void> stopScan() async {
    await _scanner.stopScan();
  }
}
