// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/widgets/index.dart';
import '/flutter_flow/custom_functions.dart';
import 'dart:convert';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:dotted_border/dotted_border.dart';

class DropzonePageState extends StatefulWidget {
  const DropzonePageState({
    Key? key,
    this.width,
    this.height,
    this.borderRadius = 12.0,
    this.borderColor,
    this.backgroundColor = Colors.transparent,
    this.borderWidth = 2.0,
    this.loadingIndicatorColor,
    this.iconColor,
    this.iconSize = 48.0,
    this.textSize,
    this.textColor,
    this.highlightColor,
    required this.onImageUpload,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double borderRadius;
  final Color? borderColor;
  final Color backgroundColor;
  final double borderWidth;
  final Color? loadingIndicatorColor;
  final Color? iconColor;
  final double iconSize;
  final double? textSize;
  final Color? textColor;
  final Color? highlightColor;
  final Future<dynamic> Function(String base64Image) onImageUpload;

  @override
  _DropzonePageStateState createState() => _DropzonePageStateState();
}

class _DropzonePageStateState extends State<DropzonePageState> {
  late DropzoneViewController controller;
  bool isLoading = false;
  bool isHighlighted = false;
  String statusMessage = '';
  String fileName = '';

  @override
  Widget build(BuildContext context) {
    final borderColor =
        widget.borderColor ?? FlutterFlowTheme.of(context).primaryText;
    final loadingColor =
        widget.loadingIndicatorColor ?? FlutterFlowTheme.of(context).primary;
    final iconColor = widget.iconColor ?? borderColor;
    final textColor =
        widget.textColor ?? FlutterFlowTheme.of(context).bodyMedium.color;
    final highlightColor = widget.highlightColor ??
        FlutterFlowTheme.of(context).primary.withOpacity(0.2);

    return InkWell(
      onTap: () async {
        final files = await controller.pickFiles();
        if (files.isNotEmpty) {
          acceptFile(files.first, context);
        }
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: isHighlighted ? highlightColor : widget.backgroundColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(widget.borderRadius),
          dashPattern: [5, 5],
          color: borderColor,
          strokeWidth: widget.borderWidth,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            child: Stack(
              alignment: Alignment.center,
              children: [
                DropzoneView(
                  onCreated: (controller) => this.controller = controller,
                  onHover: () => setState(() => isHighlighted = true),
                  onLeave: () => setState(() => isHighlighted = false),
                  onDrop: (dynamic event) => acceptFile(event, context),
                ),
                if (!isLoading)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cloud_upload,
                        size: widget.iconSize,
                        color: iconColor,
                      ),
                      SizedBox(height: 8),
                      Text(
                        fileName.isNotEmpty
                            ? '$fileName'
                            : 'Solte a imagem aqui ou clique no ícone',
                        style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                              fontSize: widget.textSize,
                              color: textColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                if (isLoading)
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(loadingColor),
                  ),
                if (statusMessage.isNotEmpty)
                  Positioned(
                    bottom: 10,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: statusMessage.startsWith('Error')
                            ? Colors.red.withOpacity(0.8)
                            : Colors.green.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        statusMessage,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future acceptFile(dynamic event, BuildContext context) async {
    setState(() {
      isLoading = true;
      statusMessage = '';
      isHighlighted = false;
    });

    final mime = await controller.getFileMIME(event);
    final bytes = await controller.getFileData(event);

    if (mime.startsWith('image/')) {
      try {
        final base64String = base64Encode(bytes);
        await widget.onImageUpload(base64String);

        setState(() {
          fileName = event.name;
          statusMessage = 'Imagem enviada com sucesso!';
        });
      } catch (e) {
        setState(() {
          statusMessage =
              'Erro ao converter imagem para base64. Tente novamente.';
        });
        print('Erro ao converter a imagem para base64: $e');
      }
    } else {
      setState(() {
        statusMessage =
            'Erro: Arquivo não é uma imagem. Por favor, selecione um arquivo de imagem.';
        fileName = ''; // Limpa o nome do arquivo se não for uma imagem
      });
      print('Arquivo não é uma imagem');
    }

    setState(() {
      isLoading = false;
    });

    // Limpa a mensagem de status após 3 segundos, mas mantém o nome do arquivo
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          statusMessage = ''; // Limpa a mensagem de status
          // O fileName só será limpo se o arquivo não for uma imagem
        });
      }
    });
  }
}
