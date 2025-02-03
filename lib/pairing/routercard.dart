import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/mdns.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/mirror.dart';
import 'package:flutter/material.dart';

// Need a const function to let optional parameters for cosnt constructor work
Future<void> _def(HostRecord host) async {}

class RouterCard extends StatelessWidget {
  final HostRecord record;
  final Future<dynamic> Function(HostRecord) onConnect;
  const RouterCard({super.key, required this.record, this.onConnect = _def});

  @override
  Widget build(BuildContext context) {
    final ipText = record.getAddrs().map((addr) => switch (addr) {
          IpAddr_V4(:final field0) => 'IpV4: ${field0.toString()}',
          IpAddr_V6(:final field0) => 'IpV6: ${field0.toString()}',
        });

    return Card(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(record.getName()),
                  Text(ipText.join('\n')),
                  Text("port ${record.getPort()}")
                ],
              )),
              ElevatedButton(
                  onPressed: () async {
                    await onConnect(record);
                  },
                  child: const Text('Connect'))
            ])));
  }
}
