import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'verify_email_model.dart';
export 'verify_email_model.dart';

class VerifyEmailWidget extends StatefulWidget {
  const VerifyEmailWidget({super.key});

  @override
  State<VerifyEmailWidget> createState() => _VerifyEmailWidgetState();
}

class _VerifyEmailWidgetState extends State<VerifyEmailWidget> {
  late VerifyEmailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerifyEmailModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 8,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
          ),
          child: Align(
            alignment: const AlignmentDirectional(0, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Container(
                      width: 291,
                      height: 239,
                      constraints: const BoxConstraints(
                        maxWidth: 700,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 12,
                            color: Color(0x33000000),
                            offset: Offset(
                              0,
                              5,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1, 0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(36, 4, 0, 0),
                                              child: Text(
                                                'ParkIT.co',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              const Color(0xFF7C1113),
                                                          fontSize: 12,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0, -0.1),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8, 10, 0, 0),
                                              child: Text(
                                                'Verify your email',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 24,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 8, 0),
                                      child: AutoSizeText(
                                        'Click the button below to verify your email and start enjoying ParkIT!',
                                        textAlign: TextAlign.start,
                                        minFontSize: 80,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Nunito',
                                              letterSpacing: 0.0,
                                              fontStyle: FontStyle.italic,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Align(
                                    alignment: const AlignmentDirectional(1, 0.1),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await authManager
                                            .sendEmailVerification();
                                      },
                                      text: 'Verify email',
                                      options: FFButtonOptions(
                                        width: 103,
                                        height: 44,
                                        padding: const EdgeInsets.all(10),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 0),
                                        color: const Color(0xE07C1113),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 13,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 1,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        hoverColor: const Color(0xFFA86A6B),
                                        hoverTextColor: const Color(0xFFECE9E7),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.9, -0.9),
                            child: FlutterFlowIconButton(
                              borderRadius: 20,
                              borderWidth: 1,
                              buttonSize: 40,
                              icon: const Icon(
                                Icons.close_rounded,
                                color: Color(0xE07C1113),
                                size: 24,
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
                              size: 19,
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
        ),
      ),
    );
  }
}
