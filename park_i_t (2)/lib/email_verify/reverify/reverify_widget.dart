import '/auth/firebase_auth/auth_util.dart';
import '/email_verify/succesfully_verify/succesfully_verify_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'reverify_model.dart';
export 'reverify_model.dart';

class ReverifyWidget extends StatefulWidget {
  const ReverifyWidget({super.key});

  @override
  State<ReverifyWidget> createState() => _ReverifyWidgetState();
}

class _ReverifyWidgetState extends State<ReverifyWidget> {
  late ReverifyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReverifyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 284.0,
        height: 221.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Colors.black,
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Flexible(
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.no_accounts_rounded,
                                    color: Color(0xE07C1113),
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Text(
                                'Account not verifed',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Rubik',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(1.0, -1.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 24.0,
                                    hoverIconColor: const Color(0xFF5B0D0F),
                                    icon: const Icon(
                                      Icons.close_rounded,
                                      color: Color(0xE07C1113),
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      await authManager.refreshUser();
                                      context.safePop();
                                      if (currentUserEmailVerified == true) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: const SuccesfullyVerifyWidget(),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      } else {
                                        return;
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 8.0)),
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Text(
                                'Your account hasn\'t been verified yet. Please verify your email to access ParkIT.',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
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
                            alignment: const AlignmentDirectional(1.0, 0.1),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await authManager.refreshUser();
                                await authManager.sendEmailVerification();
                                if (currentUserEmailVerified == true) {
                                  context.safePop();
                                } else {
                                  return;
                                }

                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const SuccesfullyVerifyWidget(),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              text: 'Resend email',
                              options: FFButtonOptions(
                                width: 116.0,
                                height: 44.0,
                                padding: const EdgeInsets.all(10.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xE07C1113),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 1.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                                hoverColor: const Color(0xFF5B0D0F),
                                hoverTextColor: const Color(0xFFECE9E7),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ].divide(const SizedBox(width: 8.0)),
          ),
        ),
      ),
    );
  }
}
