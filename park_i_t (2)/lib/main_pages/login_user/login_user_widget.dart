import '/auth/firebase_auth/auth_util.dart';
import '/email_verify/reverify/reverify_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'login_user_model.dart';
export 'login_user_model.dart';

class LoginUserWidget extends StatefulWidget {
  const LoginUserWidget({super.key});

  @override
  State<LoginUserWidget> createState() => _LoginUserWidgetState();
}

class _LoginUserWidgetState extends State<LoginUserWidget>
    with TickerProviderStateMixin {
  late LoginUserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginUserModel());

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
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
      'imageOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
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
            begin: const Offset(-100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.15.ms,
            duration: 800.0.ms,
            begin: const Offset(-100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: const Offset(0.0, 100.0),
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
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
              const Stack(
                children: [],
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFDAD7D6), Color(0xFF7C1113)],
                      stops: [0, 1],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  alignment: const AlignmentDirectional(0, 0),
                ),
              ),
              Opacity(
                opacity: 0.9,
                child: Align(
                  alignment: const AlignmentDirectional(1, -1.25),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      'assets/images/MCLAREN_FRONT_VIEW.png',
                      width: 385,
                      height: 373,
                      fit: BoxFit.cover,
                      alignment: const Alignment(-1, 0),
                    ),
                  )
                      .animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation']!)
                      .animateOnActionTrigger(
                        animationsMap['imageOnActionTriggerAnimation']!,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -0.7),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'WELCOME BACK!',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Poppins',
                          color: const Color(0xFFF2EFEF),
                          fontSize: 60,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            const Shadow(
                              color: Color(0xFF240909),
                              offset: Offset(2.0, 2.0),
                              blurRadius: 15.0,
                            )
                          ],
                          lineHeight: 1,
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation1']!),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.86, -0.79),
                child: Text(
                  'ParkIT.co',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        color: const Color(0xFF7C1113),
                        fontSize: 18,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 1),
                child: Container(
                  width: double.infinity,
                  height: 555,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black,
                        offset: Offset(
                          0,
                          2,
                        ),
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.6, -0.8),
                        child: Text(
                          'Login',
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Poppins',
                                fontSize: 32,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, -0.2),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-0.71, -0.48),
                              child: Text(
                                'Email',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.01, -0.39),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    controller: _model.emailTextController,
                                    focusNode: _model.emailFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.emailTextController',
                                      const Duration(milliseconds: 2000),
                                      () => safeSetState(() {}),
                                    ),
                                    autofocus: false,
                                    autofillHints: const [AutofillHints.email],
                                    textCapitalization: TextCapitalization.none,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: currentUserEmail,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            fontSize: 12,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w200,
                                            fontStyle: FontStyle.italic,
                                          ),
                                      alignLabelWithHint: false,
                                      hintText: 'Enter your email',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Nunito',
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.italic,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.email_outlined,
                                      ),
                                      suffixIcon: _model.emailTextController!
                                              .text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.emailTextController
                                                    ?.clear();
                                                safeSetState(() {});
                                              },
                                              child: const Icon(
                                                Icons.clear,
                                                size: 24,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          letterSpacing: 0.0,
                                        ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: _model
                                        .emailTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.69, -0.08),
                              child: Text(
                                'Password',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.01, 0.09),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    controller: _model.passwordTextController,
                                    focusNode: _model.passwordFocusNode,
                                    autofocus: false,
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: !_model.passwordVisibility,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            fontSize: 12,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w200,
                                            fontStyle: FontStyle.italic,
                                          ),
                                      alignLabelWithHint: false,
                                      hintText: 'Enter your password',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Nunito',
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.italic,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.lock_outline_rounded,
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () => safeSetState(
                                          () => _model.passwordVisibility =
                                              !_model.passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          letterSpacing: 0.0,
                                        ),
                                    keyboardType: TextInputType.visiblePassword,
                                    validator: _model
                                        .passwordTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.03, 0.43),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await authManager.refreshUser();
                            GoRouter.of(context).prepareAuthEvent();

                            final user = await authManager.signInWithEmail(
                              context,
                              _model.emailTextController.text,
                              _model.passwordTextController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            if (currentUserEmailVerified == true) {
                              context.pushNamedAuth(
                                  'HomePageUser', context.mounted);
                            } else {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () =>
                                        FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const ReverifyWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          },
                          text: 'Sign In',
                          options: FFButtonOptions(
                            width: 110,
                            height: 40,
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            iconPadding:
                                const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: const Color(0xFF7C1113),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(24),
                            hoverColor: const Color(0xFFA86A6B),
                            hoverTextColor: const Color(0xFFECE9E7),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, 0.7),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('forgotPassword');
                          },
                          child: Text(
                            'Forgot password?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.18, 0.8),
                        child: Text(
                          'Create an account?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.37, 0.8),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'SignUpUser',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.bottomToTop,
                                ),
                              },
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.9, -0.93),
                child: FlutterFlowIconButton(
                  borderRadius: 20,
                  borderWidth: 11,
                  buttonSize: 35,
                  fillColor: const Color(0xE07C1113),
                  hoverColor: const Color(0xFFA86A6B),
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Color(0xFFDAD7DD),
                    size: 20,
                  ),
                  onPressed: () async {
                    context.pushNamed(
                      'Main',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.rightToLeft,
                        ),
                      },
                    );
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
