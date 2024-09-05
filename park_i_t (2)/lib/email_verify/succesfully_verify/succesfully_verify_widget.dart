import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'succesfully_verify_model.dart';
export 'succesfully_verify_model.dart';

class SuccesfullyVerifyWidget extends StatefulWidget {
  const SuccesfullyVerifyWidget({super.key});

  @override
  State<SuccesfullyVerifyWidget> createState() =>
      _SuccesfullyVerifyWidgetState();
}

class _SuccesfullyVerifyWidgetState extends State<SuccesfullyVerifyWidget> {
  late SuccesfullyVerifyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccesfullyVerifyModel());
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
        width: 338,
        height: 101,
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
                                    Icons.add_task_rounded,
                                    color: Color(0xE07C1113),
                                    size: 24,
                                  ),
                                ),
                              ),
                              Text(
                                'Email successfully verified',
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
                                  alignment: const AlignmentDirectional(-0.3, -2.4),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 20,
                                    borderWidth: 1,
                                    buttonSize: 22,
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
                              ),
                            ].divide(const SizedBox(width: 8)),
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(0, -0.5),
                            child: Text(
                              'Hi! Welcome to ParkIT Parking System!',
                              textAlign: TextAlign.justify,
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
