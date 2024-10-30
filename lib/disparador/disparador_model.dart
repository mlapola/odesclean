import '/backend/api_requests/api_calls.dart';
import '/components/drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'disparador_widget.dart' show DisparadorWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class DisparadorModel extends FlutterFlowModel<DisparadorWidget> {
  ///  Local state fields for this page.

  int type = 1;

  String? uploadedImageBase64;

  ///  State fields for stateful widgets in this page.

  // Model for Drawer component.
  late DrawerModel drawerModel;
  AudioRecorder? audioRecorder;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldbb widget.
  FocusNode? textFieldbbFocusNode;
  TextEditingController? textFieldbbTextController;
  String? Function(BuildContext, String?)? textFieldbbTextControllerValidator;
  // Stores action output result for [Backend Call - API (Disparar)] action in Button widget.
  ApiCallResponse? apiResultdh9;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (DeletarAgendamento)] action in Container widget.
  ApiCallResponse? apiResultykb;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - API (configedit)] action in Button widget.
  ApiCallResponse? apiResultrd8;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    textFieldbbFocusNode?.dispose();
    textFieldbbTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
