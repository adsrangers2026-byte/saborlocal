import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  Local state fields for this page.

  bool cpfvalido = true;

  bool cpfFoiValidado = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  late MaskTextInputFormatter cpfMask;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  late MaskTextInputFormatter telefoneMask;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for confsenha widget.
  FocusNode? confsenhaFocusNode;
  TextEditingController? confsenhaTextController;
  late bool confsenhaVisibility;
  String? Function(BuildContext, String?)? confsenhaTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (cadastro)] action in cadsstrar widget.
  ApiCallResponse? apiResult5sm;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
    confsenhaVisibility = false;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confsenhaFocusNode?.dispose();
    confsenhaTextController?.dispose();
  }
}
