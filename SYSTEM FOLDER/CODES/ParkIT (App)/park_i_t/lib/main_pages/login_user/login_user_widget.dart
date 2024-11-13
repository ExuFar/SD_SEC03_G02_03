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
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -0.7),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'WELCOME BACK!',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Poppins',
                          color: const Color(0xFFF2EFEF),
                          fontSize: 60.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            const Shadow(
                              color: Color(0xFF240909),
                              offset: Offset(2.0, 2.0),
                              blurRadius: 15.0,
                            )
                          ],
                          lineHeight: 1.0,
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
                        fontFamily: 'Sora',
                        color: Colors.white,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 555.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8.0,
                        color: Colors.black,
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                        spreadRadius: 1.0,
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(70.0),
                      topRight: Radius.circular(70.0),
                    ),
                  ),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.always,
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
                                  fontSize: 32.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.2),
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
                                  padding: const EdgeInsets.all(6.0),
                                  child: SizedBox(
                                    width: 300.0,
                                    child: TextFormField(
                                      controller: _model.emailTextController,
                                      focusNode: _model.emailFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.emailTextController',
                                        const Duration(milliseconds: 2000),
                                        () => safeSetState(() {}),
                                      ),
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: currentUserEmail,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 12.0,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.w200,
                                              fontStyle: FontStyle.italic,
                                            ),
                                        alignLabelWithHint: false,
                                        hintText: 'Enter your email',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Nunito',
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.italic,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF7C1113),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                                                  color: Color(0xFF757575),
                                                  size: 24.0,
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
                                      cursorColor: const Color(0xFF7C1113),
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
                                  padding: const EdgeInsets.all(6.0),
                                  child: SizedBox(
                                    width: 300.0,
                                    child: TextFormField(
                                      controller: _model.passwordTextController,
                                      focusNode: _model.passwordFocusNode,
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      obscureText: !_model.passwordVisibility,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 12.0,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.w200,
                                              fontStyle: FontStyle.italic,
                                            ),
                                        alignLabelWithHint: false,
                                        hintText: 'Enter your password',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Nunito',
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.italic,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF7C1113),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            letterSpacing: 0.0,
                                          ),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      cursorColor: const Color(0xFF7C1113),
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
                                if (valueOrDefault(
                                        currentUserDocument?.role, '') ==
                                    'customer') {
                                  context.pushNamedAuth(
                                      'HomePageUser', context.mounted);
                                }
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
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: const ReverifyWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              }
                            },
                            text: 'Sign In',
                            options: FFButtonOptions(
                              width: 110.0,
                              height: 40.0,
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
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                              hoverColor: const Color(0xFF5B0D0F),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.7),
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
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.18, 0.8),
                          child: Text(
                            'Create an account?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
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
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.9, -0.93),
                child: FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 11.0,
                  buttonSize: 35.0,
                  fillColor: const Color(0xE07C1113),
                  hoverColor: const Color(0xFF5B0D0F),
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Color(0xFFDAD7DD),
                    size: 20.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('welcomePage');
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
