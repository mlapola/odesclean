import '/components/drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clientes_widget.dart' show ClientesWidget;
import 'package:flutter/material.dart';

class ClientesModel extends FlutterFlowModel<ClientesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
  }
}
