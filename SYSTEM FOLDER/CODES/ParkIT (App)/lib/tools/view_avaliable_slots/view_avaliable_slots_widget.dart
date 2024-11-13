import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'view_avaliable_slots_model.dart';
export 'view_avaliable_slots_model.dart';

class ViewAvaliableSlotsWidget extends StatefulWidget {
  const ViewAvaliableSlotsWidget({super.key});

  @override
  State<ViewAvaliableSlotsWidget> createState() =>
      _ViewAvaliableSlotsWidgetState();
}

class _ViewAvaliableSlotsWidgetState extends State<ViewAvaliableSlotsWidget>
    with TickerProviderStateMixin {
  late ViewAvaliableSlotsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewAvaliableSlotsModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 900.0.ms,
            begin: const Offset(5.0, 5.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(33.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.3,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: const Offset(0.0, 100.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.3,
            end: 1.0,
          ),
        ],
      ),
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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Opacity(
                opacity: 0.2,
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bloodRed,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/background.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation']!),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bloodRed,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 25.0, 25.0, 25.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.keyboard_arrow_left_rounded,
                                  color: FlutterFlowTheme.of(context).white,
                                  size: 28.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 28.0, 0.0),
                                    child: Text(
                                      'Available \nparking slot',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            fontFamily: 'Rubik',
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                            fontSize: 25.0,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['rowOnPageLoadAnimation']!),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: ParkingSlotAvailableCall.call(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitRing(
                                      color:
                                          FlutterFlowTheme.of(context).bloodRed,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              final containerParkingSlotAvailableResponse =
                                  snapshot.data!;

                              return Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.81,
                                  height: 180.0,
                                  decoration: BoxDecoration(
                                    color: ParkingSlotAvailableCall.slot1(
                                              containerParkingSlotAvailableResponse
                                                  .jsonBody,
                                            ) ==
                                            'Available'
                                        ? const Color(0xFF26C320)
                                        : const Color(0xFFEE1616),
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future:
                                                ParkingSlotAvailableCall.call(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: SpinKitRing(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bloodRed,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final textParkingSlotAvailableResponse =
                                                  snapshot.data!;

                                              return Text(
                                                valueOrDefault<String>(
                                                  ParkingSlotAvailableCall
                                                      .slot1(
                                                    textParkingSlotAvailableResponse
                                                        .jsonBody,
                                                  ),
                                                  'Maintenance',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white,
                                                          fontSize: 30.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            'Slot : 1',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: ParkingSlotAvailableCall.call(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitRing(
                                      color:
                                          FlutterFlowTheme.of(context).bloodRed,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              final containerParkingSlotAvailableResponse =
                                  snapshot.data!;

                              return Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.81,
                                  height: 180.0,
                                  decoration: BoxDecoration(
                                    color: ParkingSlotAvailableCall.slot2(
                                              containerParkingSlotAvailableResponse
                                                  .jsonBody,
                                            ) ==
                                            'Available'
                                        ? const Color(0xFF22D12E)
                                        : const Color(0xFFF31D1D),
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future:
                                                ParkingSlotAvailableCall.call(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: SpinKitRing(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bloodRed,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final textParkingSlotAvailableResponse =
                                                  snapshot.data!;

                                              return Text(
                                                valueOrDefault<String>(
                                                  ParkingSlotAvailableCall
                                                      .slot2(
                                                    textParkingSlotAvailableResponse
                                                        .jsonBody,
                                                  ),
                                                  'Maintenance',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white,
                                                          fontSize: 30.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            'Slot : 2',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: ParkingSlotAvailableCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitRing(
                                    color:
                                        FlutterFlowTheme.of(context).bloodRed,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            final containerParkingSlotAvailableResponse =
                                snapshot.data!;

                            return Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.81,
                                height: 180.0,
                                decoration: BoxDecoration(
                                  color: ParkingSlotAvailableCall.slot3(
                                            containerParkingSlotAvailableResponse
                                                .jsonBody,
                                          ) ==
                                          'Available'
                                      ? const Color(0xFF25E01E)
                                      : const Color(0xFFB12020),
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Text(
                                          'Slot : 3',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Lato',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future:
                                              ParkingSlotAvailableCall.call(),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child: SpinKitRing(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .bloodRed,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            final textParkingSlotAvailableResponse =
                                                snapshot.data!;

                                            return Text(
                                              valueOrDefault<String>(
                                                ParkingSlotAvailableCall.slot3(
                                                  textParkingSlotAvailableResponse
                                                      .jsonBody,
                                                ),
                                                'Maintenance',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Lato',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .white,
                                                    fontSize: 30.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ].addToEnd(const SizedBox(height: 50.0)),
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation']!),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
