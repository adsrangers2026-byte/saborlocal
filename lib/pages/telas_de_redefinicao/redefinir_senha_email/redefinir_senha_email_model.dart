import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'redefinir_senha_email_widget.dart' show RedefinirSenhaEmailWidget;
import 'package:flutter/material.dart';

class RedefinirSenhaEmailModel
    extends FlutterFlowModel<RedefinirSenhaEmailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txt_email widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // Stores action output result for [Backend Call - API (Sendgrid API)] action in Button widget.
  ApiCallResponse? result;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();
  }
}
