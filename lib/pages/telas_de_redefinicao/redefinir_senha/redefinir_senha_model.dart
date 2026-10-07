import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'redefinir_senha_widget.dart' show RedefinirSenhaWidget;
import 'package:flutter/material.dart';

class RedefinirSenhaModel extends FlutterFlowModel<RedefinirSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for textsenha widget.
  FocusNode? textsenhaFocusNode;
  TextEditingController? textsenhaTextController;
  String? Function(BuildContext, String?)? textsenhaTextControllerValidator;
  // State field(s) for textsenhaconf widget.
  FocusNode? textsenhaconfFocusNode;
  TextEditingController? textsenhaconfTextController;
  String? Function(BuildContext, String?)? textsenhaconfTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textsenhaFocusNode?.dispose();
    textsenhaTextController?.dispose();

    textsenhaconfFocusNode?.dispose();
    textsenhaconfTextController?.dispose();
  }
}
