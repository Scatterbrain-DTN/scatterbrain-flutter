import 'dart:async';
import 'dart:collection';

import 'package:scatterbrain_flutter/rust/api/db/connection.dart';
import 'package:scatterbrain_flutter/rust/api/db/entities.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/api.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/response.dart';
import 'package:scatterbrain_flutter/rust/third_party/scatterbrain/api/types.dart';
import 'package:uuid/uuid_value.dart';

class MockSession implements SbSession {
  final Stream<List<SbEvent>> events;
  bool closed = false;
  HashMap<String, List<Message>> messages = HashMap();
  List<Identity> identities = const [];

  MockSession({this.events = const Stream.empty()});

  @override
  Future<void> disconnect() async {}

  @override
  void dispose() {}

  @override
  Future<List<SbEvent>> getEvents({required bool block, int? count}) async {
    return events.single;
  }

  @override
  Future<List<Identity>> getIdentity({UuidValue? id}) async {
    return identities;
  }

  @override
  Future<List<Message>> getMessages(
      {required String application, int? limit}) async {
    return messages.values.expand((i) => i).toList();
  }

  @override
  Future<List<Message>> getMessagesRecieveDate(
      {required String application,
      int? limit,
      DateTime? startDate,
      DateTime? endDate}) async {
    return messages[application] ?? [];
  }

  @override
  Future<List<Message>> getMessagesSendDate(
      {required String application,
      int? limit,
      DateTime? startDate,
      DateTime? endDate}) async {
    return messages[application] ?? [];
  }

  @override
  Future<ImportIdentityState> initiateIdentityImport({UuidValue? id}) async {
    return ImportIdentityState.complete(id!);
  }

  @override
  Future<bool> isClosed() async {
    return closed;
  }

  @override
  bool get isDisposed => false;

  @override
  Future<void> onConnect() async {}

  @override
  Future<void> sendMessages(
      {required List<Message> messages, UuidValue? signIdentity}) async {}

  @override
  Future<void> setOnConnect(
      {required FutureOr<void> Function(SbSession? p1) onConnect}) async {}

  @override
  Future<void> sendNewsgroup({required NewsGroup newsgroup}) async {}

  @override
  Future<void> sendPost({required Posts post, required SubrosaDb db}) async {}
}
