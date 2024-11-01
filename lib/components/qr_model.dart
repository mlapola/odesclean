import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'qr_widget.dart' show QrWidget;
import 'package:flutter/material.dart';

class QrModel extends FlutterFlowModel<QrWidget> {
  ///  State fields for stateful widgets in this component.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (Verify)] action in QR widget.
  ApiCallResponse? status;
  // Stores action output result for [Backend Call - API (deslogar)] action in Text widget.
  ApiCallResponse? apiResult6k55;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
