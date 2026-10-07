import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'redefinir_senha_o_t_p_widget.dart' show RedefinirSenhaOTPWidget;
import 'package:flutter/material.dart';

class RedefinirSenhaOTPModel extends FlutterFlowModel<RedefinirSenhaOTPWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txt_codigo widget.
  FocusNode? txtCodigoFocusNode;
  TextEditingController? txtCodigoTextController;
  String? Function(BuildContext, String?)? txtCodigoTextControllerValidator;
  // Stores action output result for [Backend Call - API (verifyCode)] action in txt_codigo widget.
  ApiCallResponse? result;
  // Stores action output result for [Backend Call - API (Sendgrid API)] action in enfproblem widget.
  ApiCallResponse? reenvio;
  // Stores action output result for [Backend Call - API (verifyCode)] action in Button widget.
  ApiCallResponse? resultOTP;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCodigoFocusNode?.dispose();
    txtCodigoTextController?.dispose();
  }
}
