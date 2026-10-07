import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cep_widget.dart' show CepWidget;
import 'package:flutter/material.dart';

class CepModel extends FlutterFlowModel<CepWidget> {
  ///  Local state fields for this page.

  bool isDisabled = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Tf_cep widget.
  FocusNode? tfCepFocusNode;
  TextEditingController? tfCepTextController;
  String? Function(BuildContext, String?)? tfCepTextControllerValidator;
  // Stores action output result for [Backend Call - API (buscaCEP)] action in Tf_cep widget.
  ApiCallResponse? apiResultu1u;
  // State field(s) for TF_RUA widget.
  FocusNode? tfRuaFocusNode;
  TextEditingController? tfRuaTextController;
  String? Function(BuildContext, String?)? tfRuaTextControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroTextController;
  String? Function(BuildContext, String?)? numeroTextControllerValidator;
  // State field(s) for TF_bairro widget.
  FocusNode? tFBairroFocusNode;
  TextEditingController? tFBairroTextController;
  String? Function(BuildContext, String?)? tFBairroTextControllerValidator;
  // State field(s) for TF_COMPLEMENTO widget.
  FocusNode? tfComplementoFocusNode;
  TextEditingController? tfComplementoTextController;
  String? Function(BuildContext, String?)? tfComplementoTextControllerValidator;
  // State field(s) for TF_CIDADE widget.
  FocusNode? tfCidadeFocusNode;
  TextEditingController? tfCidadeTextController;
  String? Function(BuildContext, String?)? tfCidadeTextControllerValidator;
  // State field(s) for TF_UF widget.
  FocusNode? tfUfFocusNode;
  TextEditingController? tfUfTextController;
  String? Function(BuildContext, String?)? tfUfTextControllerValidator;
  // Stores action output result for [Backend Call - API (Endereco)] action in salvar widget.
  ApiCallResponse? apiResultkcu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfCepFocusNode?.dispose();
    tfCepTextController?.dispose();

    tfRuaFocusNode?.dispose();
    tfRuaTextController?.dispose();

    numeroFocusNode?.dispose();
    numeroTextController?.dispose();

    tFBairroFocusNode?.dispose();
    tFBairroTextController?.dispose();

    tfComplementoFocusNode?.dispose();
    tfComplementoTextController?.dispose();

    tfCidadeFocusNode?.dispose();
    tfCidadeTextController?.dispose();

    tfUfFocusNode?.dispose();
    tfUfTextController?.dispose();
  }
}
