import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/types.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension SbConfig on SharedPreferencesAsync {
  Future<CryptoConfig> getConfig({String? remotekey}) async {
    final secretkey = await getString("secretkey");
    final publickey = await getString("publickey");

    if (remotekey != null) {
      await setString("remotekey", remotekey);
    } else {
      remotekey = await getString("remotekey");
    }

    if (secretkey == null || publickey == null) {
      final config = await CryptoConfig.generate();
      await setString("secretkey", config.secretkey);
      await setString("publickey", config.pubkey);
      return config;
    } else {
      return CryptoConfig(
          secretkey: secretkey, pubkey: publickey, remotekey: remotekey);
    }
  }

  Future<void> deleteConfig() async {
    await remove("remotekey");
    await remove("secretkey");
    await remove("pubkey");
  }

  Future<void> deleteRemote() async {
    await remove("remotekey");
  }
}
