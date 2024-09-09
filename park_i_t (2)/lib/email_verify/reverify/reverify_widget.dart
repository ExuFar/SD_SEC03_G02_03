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
      alignment: const AlignmentDirectional(0, 0),
      child: Container(
        width: 309,
        height: 166,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Colors.black,
              offset: Offset(
                0,
                2,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
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
                                  padding: EdgeInsets.all(4),
                                  child: Icon(
                                    Icons.no_accounts_rounded,
                                    color: Color(0xE07C1113),
                                    size: 24,
                                  ),
                                ),
                              ),
                              Text(
                                'Account not verify',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Rubik',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(1, -1),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 20,
                                    borderWidth: 1,
                                    buttonSize: 24,
                                    icon: const Icon(
                                      Icons.close_rounded,
                                      color: Color(0xE07C1113),
                                      size: 24,
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
                            ].divide(const SizedBox(width: 8)),
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(0, -0.5),
                            child: Text(
                              'Please watch email  to verify.',
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
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(1, 0.1),
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
                              text: 're-verify email',
                              options: FFButtonOptions(
                                width: 116,
                                height: 44,
                                padding: const EdgeInsets.all(10),
                                iconPadding:
                                    const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                ),
              ),
            ].divide(const SizedBox(width: 8)),
          ),
        ),
      ),
    );
  }
}