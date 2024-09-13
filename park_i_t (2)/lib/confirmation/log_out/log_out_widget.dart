import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'log_out_model.dart';
export 'log_out_model.dart';

class LogOutWidget extends StatefulWidget {
  const LogOutWidget({super.key});

  @override
  State<LogOutWidget> createState() => _LogOutWidgetState();
}

class _LogOutWidgetState extends State<LogOutWidget> {
  late LogOutModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogOutModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 8.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 267.0,
                  height: 214.0,
                  constraints: const BoxConstraints(
                    maxWidth: 700.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 12.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          5.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  36.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            'ParkIT.co',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Sora',
                                                  color: const Color(0xFF7C1113),
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 14.0),
                                child: Text(
                                  'Sign Out',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Text(
                                    'Are you sure you want to\nsign out ?',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic,
                                          lineHeight: 1.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Align(
                                      alignment: const AlignmentDirectional(1.0, 0.1),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 8.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                          text: 'Cancel',
                                          options: FFButtonOptions(
                                            width: 90.0,
                                            height: 35.0,
                                            padding: const EdgeInsets.all(10.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFF1F4F8),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: const Color(0xFF57636C),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 1.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            hoverColor: const Color(0xFF8A8E92),
                                            hoverTextColor: const Color(0xFFF1F4F8),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment: const AlignmentDirectional(1.0, 0.1),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 11.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();
                                            await authManager.signOut();
                                            GoRouter.of(context)
                                                .clearRedirectLocation();

                                            context.goNamedAuth(
                                                'Main', context.mounted);
                                          },
                                          text: 'Sign Out',
                                          options: FFButtonOptions(
                                            width: 90.0,
                                            height: 35.0,
                                            padding: const EdgeInsets.all(10.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xE07C1113),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 1.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            hoverColor: const Color(0xFF5B0D0F),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.9, -0.9),
                        child: FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: const Icon(
                            Icons.close_rounded,
                            color: Color(0xE07C1113),
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.safePop();
                          },
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.79, -0.8),
                        child: Icon(
                          Icons.directions_car,
                          color: Color(0xE07C1113),
                          size: 19.0,
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
