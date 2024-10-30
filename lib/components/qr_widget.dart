import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'qr_model.dart';
export 'qr_model.dart';

class QrWidget extends StatefulWidget {
  const QrWidget({
    super.key,
    required this.qrcode,
  });

  final String? qrcode;

  @override
  State<QrWidget> createState() => _QrWidgetState();
}

class _QrWidgetState extends State<QrWidget> {
  late QrModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QrModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 1500),
        callback: (timer) async {
          _model.status = await VerifyCall.call();

          if (VerifyCall.status(
                (_model.status?.jsonBody ?? ''),
              ) ==
              'open') {
            Navigator.pop(context);
          }
        },
        startImmediately: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 350.0,
        height: 350.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BarcodeWidget(
            data: widget.qrcode!,
            barcode: Barcode.qrCode(),
            width: 200.0,
            height: 200.0,
            color: FlutterFlowTheme.of(context).primaryText,
            backgroundColor: Colors.transparent,
            errorBuilder: (context, error) => const SizedBox(
              width: 200.0,
              height: 200.0,
            ),
            drawText: true,
          ),
        ),
      ),
    );
  }
}
