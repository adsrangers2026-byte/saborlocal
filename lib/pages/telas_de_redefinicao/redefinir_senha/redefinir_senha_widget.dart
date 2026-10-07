import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'redefinir_senha_model.dart';
export 'redefinir_senha_model.dart';

class RedefinirSenhaWidget extends StatefulWidget {
  const RedefinirSenhaWidget({
    super.key,
    required this.email,
  });

  final String? email;

  static String routeName = 'redefinirSenha';
  static String routePath = '/redefinirSenha';

  @override
  State<RedefinirSenhaWidget> createState() => _RedefinirSenhaWidgetState();
}

class _RedefinirSenhaWidgetState extends State<RedefinirSenhaWidget> {
  late RedefinirSenhaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RedefinirSenhaModel());

    _model.textsenhaTextController ??= TextEditingController();
    _model.textsenhaFocusNode ??= FocusNode();

    _model.textsenhaconfTextController ??= TextEditingController();
    _model.textsenhaconfFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF7F4EE),
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.4),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.textsenhaTextController.text ==
                              _model.textsenhaconfTextController.text) {
                            await RedefinirSenhaCall.call(
                              email: widget.email,
                              senhaAtt: _model.textsenhaconfTextController.text,
                            );

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Senha redefinida com sucesso',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).success,
                              ),
                            );

                            context.pushNamed(
                                RedefinirSenhaSucessWidget.routeName);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'As senhas não correspondem',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                          }
                        },
                        text: 'Salvar nova senha',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFC75B2B),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.2, -0.98),
                      child: Text(
                        'Recuperar senha',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              font: GoogleFonts.cormorantGaramond(
                                fontWeight: FontWeight.w300,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.03, -0.05),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.textsenhaTextController,
                          focusNode: _model.textsenhaFocusNode,
                          autofocus: false,
                          enabled: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                            hintText: 'Mínimo 8 caracteres',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          textAlign: TextAlign.start,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          enableInteractiveSelection: true,
                          validator: _model.textsenhaTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.03, 0.18),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.textsenhaconfTextController,
                          focusNode: _model.textsenhaconfFocusNode,
                          autofocus: false,
                          enabled: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                            hintText: 'Repita a nova senha',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          textAlign: TextAlign.start,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          enableInteractiveSelection: true,
                          validator: _model.textsenhaconfTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.75),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/s5d71r.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.4),
                      child: Text(
                        'Crie uma nova senha',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 26.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.3),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 0.0, 40.0, 0.0),
                        child: Text(
                          'Escolha uma senha segura com pelo menos 8 caracteres.',
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, 0.08),
                      child: Text(
                        'Confirmar nova senha',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleSmallIsCustom,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, -0.15),
                      child: Text(
                        'Nova senha',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleSmallIsCustom,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.9, -0.93),
              child: FlutterFlowIconButton(
                borderColor: Colors.white,
                borderRadius: 12.0,
                borderWidth: 0.5,
                buttonSize: 48.0,
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Color(0xFF4A3025),
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
