import '/backend/api_requests/api_calls.dart';
import '/components/drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    textFieldbbFocusNode?.dispose();
    textFieldbbTextController?.dispose();
  }
}
