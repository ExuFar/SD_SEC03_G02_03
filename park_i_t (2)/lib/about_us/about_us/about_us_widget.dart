import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'about_us_model.dart';
export 'about_us_model.dart';

class AboutUsWidget extends StatefulWidget {
  const AboutUsWidget({super.key});

  @override
  State<AboutUsWidget> createState() => _AboutUsWidgetState();
}

class _AboutUsWidgetState extends State<AboutUsWidget>
    with TickerProviderStateMixin {
  late AboutUsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutUsModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 130.0.ms,
            duration: 600.0.ms,
            begin: const Offset(87.0, 0.0),
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
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 130.0.ms,
            duration: 800.0.ms,
            begin: const Offset(-100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(44.0, 0.0),
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
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: const Offset(100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: const Offset(100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: const Offset(-100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: const Offset(-100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation': AnimationInfo(
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
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.15.ms,
            duration: 800.0.ms,
            begin: const Offset(0.0, -100.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'stackOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 40.0),
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
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.63, -0.08),
                        child: const Icon(
                          Icons.auto_awesome_outlined,
                          color: Color(0xFF7C1113),
                          size: 24.0,
                        ).animateOnPageLoad(
                            animationsMap['iconOnPageLoadAnimation1']!),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.7, 0.46),
                        child: const Icon(
                          Icons.stacked_line_chart,
                          color: Color(0xFF7C1113),
                          size: 24.0,
                        ).animateOnPageLoad(
                            animationsMap['iconOnPageLoadAnimation2']!),
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(1.2, 0.6),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/mclaren_side_view_-_Copy.png',
                                width: 255.0,
                                height: 144.0,
                                fit: BoxFit.fitWidth,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation']!),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -0.65),
                            child: Container(
                              width: double.infinity,
                              height: 278.0,
                              decoration: const BoxDecoration(),
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'About Us',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 25.0,
                                                        letterSpacing: 2.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation1']!),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            40.0, 0.0, 40.0, 0.0),
                                        child: Text(
                                          'Founded by Ahmad Syazwan and his partner Muhammad Farihin on April 2, 2024, ParkIt is a smart parking app designed to simplify the parking experience. By providing real-time updates on parking availability, ParkIt helps users quickly find nearby parking spots, reducing the time spent searching and minimizing frustration. We are committed to leveraging the latest IoT technology to create an efficient and user-friendly parking solution.',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Nunito',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.italic,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation2']!),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation1']!),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.18),
                            child: Container(
                              width: double.infinity,
                              height: 222.0,
                              decoration: const BoxDecoration(),
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, -1.0),
                                                child: Text(
                                                  'Mission',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 25.0,
                                                        letterSpacing: 2.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation3']!),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            40.0, 0.0, 40.0, 0.0),
                                        child: Text(
                                          'Our mission at ParkIt is to enhance urban mobility by making parking smarter and more convenient. We aim to deliver accurate, timely information that helps users find parking with ease, improving their daily commutes and contributing to a more organized and accessible city environment.',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Nunito',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.italic,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation4']!),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation2']!),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-1.0, -0.96),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20.0,
                                        borderWidth: 11.0,
                                        buttonSize: 35.0,
                                        fillColor: const Color(0xE07C1113),
                                        hoverColor: const Color(0xFFA86A6B),
                                        icon: const Icon(
                                          Icons.chevron_left,
                                          color: Color(0xFFDAD7DD),
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          context.safePop();
                                        },
                                      ).animateOnPageLoad(animationsMap[
                                          'iconButtonOnPageLoadAnimation']!),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -0.92),
                            child: Text(
                              'ParkIT.co',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sora',
                                    color: const Color(0xFF7C1113),
                                    fontSize: 39.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation5']!),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 126.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF7C1113),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8.0,
                            color: Colors.black,
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                            spreadRadius: 2.0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                'Contact Us',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -0.2),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 11.0,
                                        buttonSize: 40.0,
                                        icon: const Icon(
                                          Icons.mail_outline,
                                          color: Colors.white,
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                    Text(
                                      'farihinsaleh@gmail.com',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 11.0,
                                        buttonSize: 40.0,
                                        icon: const Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 43.0, 0.0),
                                      child: Text(
                                        '+60 11-1060 4522',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['stackOnPageLoadAnimation']!),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
