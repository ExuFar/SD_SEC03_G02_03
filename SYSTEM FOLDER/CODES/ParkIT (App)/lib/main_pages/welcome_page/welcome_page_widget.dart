import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'welcome_page_model.dart';
export 'welcome_page_model.dart';

class WelcomePageWidget extends StatefulWidget {
  const WelcomePageWidget({super.key});

  @override
  State<WelcomePageWidget> createState() => _WelcomePageWidgetState();
}

class _WelcomePageWidgetState extends State<WelcomePageWidget>
    with TickerProviderStateMixin {
  late WelcomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomePageModel());

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
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 800.0.ms,
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
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.15.ms,
            duration: 800.0.ms,
            begin: const Offset(100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 800.0.ms,
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
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 800.0.ms,
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
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
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
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).bloodRed,
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/parkingbckground3.jpg',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation']!),
                        Opacity(
                          opacity: 0.7,
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xFF2D2D2D), Colors.black],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.0, -1.0),
                                  end: AlignmentDirectional(0, 1.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -0.75),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 0.0, 0.0, 0.0),
                            child: const Icon(
                              Icons.rectangle_outlined,
                              color: Color(0xFF7C1113),
                              size: 200.0,
                            ).animateOnPageLoad(
                                animationsMap['iconOnPageLoadAnimation']!),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: Align(
                                alignment: const AlignmentDirectional(0.6, 1.8),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'ParkIT.co',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .displayLarge
                                        .override(
                                      fontFamily: 'Rubik',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        const Shadow(
                                          color: Color(0xFF14181B),
                                          offset: Offset(2.0, 2.0),
                                          blurRadius: 8.0,
                                        )
                                      ],
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation1']!),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 5.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 20.0, 0.0),
                                  child: Text(
                                    'Find the nearest parking and start your day!',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation2']!),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 1.8),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 20.0, 20.0, 25.0),
                                  child: Text(
                                    'ParkIT will assist you to find an available slot nearby. Don\'t stress-stress mah. Hidup bossku.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          letterSpacing: 0.05,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation3']!),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.05),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      'SignIn',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.bottomToTop,
                                        ),
                                      },
                                    );
                                  },
                                  text: 'Let\'s get started',
                                  options: FFButtonOptions(
                                    height: 52.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFF7C1113),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Lato',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                    hoverColor: const Color(0xFFF2F2F2),
                                    hoverTextColor: const Color(0xFF5B0D0F),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'buttonOnPageLoadAnimation']!),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
