// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DisparadorStruct extends BaseStruct {
  DisparadorStruct({
    int? id,
    String? order,
    String? name,
    String? date,
    bool? send,
    String? message,
  })  : _id = id,
        _order = order,
        _name = name,
        _date = date,
        _send = send,
        _message = message;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "order" field.
  String? _order;
  String get order => _order ?? '';
  set order(String? val) => _order = val;

  bool hasOrder() => _order != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "Send" field.
  bool? _send;
  bool get send => _send ?? false;
  set send(bool? val) => _send = val;

  bool hasSend() => _send != null;

  // "Message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static DisparadorStruct fromMap(Map<String, dynamic> data) =>
      DisparadorStruct(
        id: castToType<int>(data['id']),
        order: data['order'] as String?,
        name: data['Name'] as String?,
        date: data['Date'] as String?,
        send: data['Send'] as bool?,
        message: data['Message'] as String?,
      );

  static DisparadorStruct? maybeFromMap(dynamic data) => data is Map
      ? DisparadorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'order': _order,
        'Name': _name,
        'Date': _date,
        'Send': _send,
        'Message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'order': serializeParam(
          _order,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Date': serializeParam(
          _date,
          ParamType.String,
        ),
        'Send': serializeParam(
          _send,
          ParamType.bool,
        ),
        'Message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static DisparadorStruct fromSerializableMap(Map<String, dynamic> data) =>
      DisparadorStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['Date'],
          ParamType.String,
          false,
        ),
        send: deserializeParam(
          data['Send'],
          ParamType.bool,
          false,
        ),
        message: deserializeParam(
          data['Message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DisparadorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DisparadorStruct &&
        id == other.id &&
        order == other.order &&
        name == other.name &&
        date == other.date &&
        send == other.send &&
        message == other.message;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, order, name, date, send, message]);
}

DisparadorStruct createDisparadorStruct({
  int? id,
  String? order,
  String? name,
  String? date,
  bool? send,
  String? message,
}) =>
    DisparadorStruct(
      id: id,
      order: order,
      name: name,
      date: date,
      send: send,
      message: message,
    );
