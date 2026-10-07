import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'redefinir_senha_email_model.dart';
export 'redefinir_senha_email_model.dart';

class RedefinirSenhaEmailWidget extends StatefulWidget {
  const RedefinirSenhaEmailWidget({super.key});

  static String routeName = 'redefinirSenhaEmail';
  static String routePath = '/redefinirSenhaEmail';

  @override
  State<RedefinirSenhaEmailWidget> createState() =>
      _RedefinirSenhaEmailWidgetState();
}

class _RedefinirSenhaEmailWidgetState extends State<RedefinirSenhaEmailWidget> {
  late RedefinirSenhaEmailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RedefinirSenhaEmailModel());

    _model.txtEmailTextController ??= TextEditingController();
    _model.txtEmailFocusNode ??= FocusNode();
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
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 44.0, 24.0, 44.0),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.2, -0.99),
                child: Text(
                  'Recuperar senha',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
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
              FlutterFlowIconButton(
                borderColor: Color(0x2E000000),
                borderRadius: 12.0,
                borderWidth: 0.5,
                buttonSize: 48.0,
                fillColor: Colors.white,
                icon: Icon(
                  Icons.chevron_left,
                  color: Color(0xFF4A3025),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed(LoginWidget.routeName);
                },
              ),
              Align(
                alignment: AlignmentDirectional(-0.63, -0.48),
                child: Container(
                  width: double.infinity,
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.05, -0.79),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
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
                        alignment: AlignmentDirectional(-0.03, -0.28),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 24.0),
                          child: Text(
                            'Informe o e-mail para o qual deseja enviar \no código de redefinição de senha',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            'E-mail',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.txtEmailTextController,
                            focusNode: _model.txtEmailFocusNode,
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
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD8D0C4),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC75B2B),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: Color(0xFFFFFDF8),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            enableInteractiveSelection: true,
                            validator: _model.txtEmailTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          _model.result = await SendgridAPICall.call(
                            email: _model.txtEmailTextController.text,
                          );

                          context.pushNamed(
                            RedefinirSenhaOTPWidget.routeName,
                            queryParameters: {
                              'email': serializeParam(
                                _model.txtEmailTextController.text,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );

                          safeSetState(() {});
                        },
                        text: 'Enviar codigo',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 52.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFC75B2B),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
