import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'redefinir_senha_sucess_model.dart';
export 'redefinir_senha_sucess_model.dart';

class RedefinirSenhaSucessWidget extends StatefulWidget {
  const RedefinirSenhaSucessWidget({super.key});

  static String routeName = 'redefinirSenhaSucess';
  static String routePath = '/redefinirSenhaSucess';

  @override
  State<RedefinirSenhaSucessWidget> createState() =>
      _RedefinirSenhaSucessWidgetState();
}

class _RedefinirSenhaSucessWidgetState
    extends State<RedefinirSenhaSucessWidget> {
  late RedefinirSenhaSucessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RedefinirSenhaSucessModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed(
        LoginWidget.routeName,
        extra: <String, dynamic>{
          '__transition_info__': TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    });
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
          padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.9),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.45,
                          height: MediaQuery.sizeOf(context).width * 0.45,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/s5d71r.png',
                            fit: BoxFit.fitWidth,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.17),
                        child: Text(
                          'Sua nova senha foi cadastrada. Agora você já pode entrar na sua conta.',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF8C8378),
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Senha atualizada',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 30.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.3),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          height: MediaQuery.sizeOf(context).width * 0.3,
                          decoration: BoxDecoration(
                            color: Color(0xFF88A18A),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF88A18A),
                              width: 0.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/black-checkmark-png-4.png',
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
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
