import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'successful_payment_model.dart';
export 'successful_payment_model.dart';

class SuccessfulPaymentWidget extends StatefulWidget {
  const SuccessfulPaymentWidget({
    super.key,
    required this.timeIn,
    required this.timeOut,
    this.totalFees,
  });

  final DateTime? timeIn;
  final DateTime? timeOut;
  final String? totalFees;

  @override
  State<SuccessfulPaymentWidget> createState() =>
      _SuccessfulPaymentWidgetState();
}

class _SuccessfulPaymentWidgetState extends State<SuccessfulPaymentWidget> {
  late SuccessfulPaymentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessfulPaymentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.add_task_rounded,
                                  color: FlutterFlowTheme.of(context).bloodRed,
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Text(
                              'Taxes successfully paid',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Rubik',
                                    color: FlutterFlowTheme.of(context).black,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).bloodRed,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              55.0, 0.0, 0.0, 10.0),
                          child: Text(
                            'Here is your tax invoice. Thank you!',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.of(context).black,
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Time In',
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.timeIn?.toString(),
                              'TimeIn',
                            ),
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Lato',
                                  color: FlutterFlowTheme.of(context).bloodRed,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Time Out',
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.timeOut?.toString(),
                              'timeOut',
                            ),
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Lato',
                                  color: FlutterFlowTheme.of(context).bloodRed,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 15.0, 24.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Total',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 36.0,
                                icon: Icon(
                                  Icons.info_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 18.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                          Text(
                            'RM ${widget.totalFees}',
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Rubik',
                                  color: FlutterFlowTheme.of(context).bloodRed,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
