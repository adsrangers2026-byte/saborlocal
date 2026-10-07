import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'splash_model.dart';
export 'splash_model.dart';

/// Splash Screen Display
class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  static String routeName = 'splash';
  static String routePath = '/splash';

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  late SplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.goNamed(
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
        backgroundColor: Color(0xFFF7F3E9),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Align(
                    alignment: AlignmentDirectional(3.03, -1.47),
                    child: Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9B382),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.7,
                  child: Align(
                    alignment: AlignmentDirectional(-2.64, 1.32),
                    child: Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9B382),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 60.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment:
                            (FFMainAxisAlignment.spaceEvenly).flutterValue,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/images/image_(1).png',
                                  width: 280.0,
                                  height: 280.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 10.0,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF687F6B),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Text(
                                'Conectando...',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFF8C8378),
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
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
}
