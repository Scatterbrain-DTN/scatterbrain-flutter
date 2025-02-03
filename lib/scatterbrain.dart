library scatterbrain;

import 'package:scatterbrain_flutter/rust/frb_generated.dart';

export 'rust/third_party/scatterbrain/api/api.dart';
export 'rust/third_party/scatterbrain/api/error.dart';
export 'rust/third_party/scatterbrain/api/mdns.dart';
export 'rust/third_party/scatterbrain/api/response.dart';
export 'rust/third_party/scatterbrain/api/types.dart';

Future<void> init() async {
  await RustLib.init();
}
