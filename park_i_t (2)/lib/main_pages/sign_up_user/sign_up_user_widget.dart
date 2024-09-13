import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/email_verify/reverify/reverify_widget.dart';
import '/email_verify/succesfully_verify/succesfully_verify_widget.dart';
import '/email_verify/verify_email/verify_email_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'sign_up_user_model.dart';
export 'sign_up_user_model.dart';

class SignUpUserWidget extends StatefulWidget {
  const SignUpUserWidget({super.key});

  @override
  State<SignUpUserWidget> createState() => _SignUpUserWidgetState();
}

class _SignUpUserWidgetState extends State<SignUpUserWidget>
    with TickerProviderStateMixin {
  late SignUpUserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpUserModel());

    _model.usernameTextController ??= TextEditingController();
    _model.usernameFocusNode ??= FocusNode();

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.reEnterPasswordTextController ??= TextEditingController();
    _model.reEnterPasswordFocusNode ??= FocusNode();

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
            delay: 0.15.ms,
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
            delay: 0.0.ms,
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
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFDAD7D6), Color(0xFF7C1113)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
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
              Opacity(
                opacity: 0.9,
                child: Align(
                  alignment: const AlignmentDirectional(1.0, -1.25),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/MCLAREN_FRONT_VIEW.png',
                      width: 385.0,
                      height: 373.0,
                      fit: BoxFit.cover,
                      alignment: const Alignment(-1.0, 0.0),
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
                alignment: const AlignmentDirectional(-0.86, -0.79),
                child: Text(
                  'ParkIT.co',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Sora',
                        color: const Color(0xFF7C1113),
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -0.7),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'CREATE ACCOUNT',
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
                      animationsMap['textOnPageLoadAnimation2']!),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 568.0,
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
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.6, -0.85),
                        child: Text(
                          'Sign Up',
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
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -0.15),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.71, -1.58),
                                    child: Text(
                                      'Username',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.01, -0.39),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => SizedBox(
                                          width: 300.0,
                                          child: TextFormField(
                                            controller:
                                                _model.usernameTextController,
                                            focusNode: _model.usernameFocusNode,
                                            autofocus: false,
                                            autofillHints: const [AutofillHints.name],
                                            textInputAction:
                                                TextInputAction.next,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: currentUserDisplayName,
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    fontSize: 12.0,
                                                    letterSpacing: 1.0,
                                                    fontWeight: FontWeight.w200,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                              alignLabelWithHint: false,
                                              hintText: 'Enter your username',
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    fontSize: 12.0,
                                                    letterSpacing: 1.0,
                                                    fontWeight: FontWeight.w300,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFF7C1113),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              prefixIcon: const Icon(
                                                Icons.person_sharp,
                                                color: Color(0x85000000),
                                                size: 24.0,
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.0,
                                                ),
                                            keyboardType: TextInputType.name,
                                            cursorColor: const Color(0xFF7C1113),
                                            validator: _model
                                                .usernameTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.71, -1.58),
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
                                    alignment:
                                        const AlignmentDirectional(-0.01, -0.39),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: SizedBox(
                                        width: 300.0,
                                        child: TextFormField(
                                          controller:
                                              _model.emailTextController,
                                          focusNode: _model.emailFocusNode,
                                          autofocus: false,
                                          autofillHints: const [AutofillHints.email],
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
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
                                            hintStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 12.0,
                                                  letterSpacing: 1.0,
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.email_outlined,
                                              color: Color(0x85000000),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                letterSpacing: 0.0,
                                              ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          cursorColor: const Color(0xFF7C1113),
                                          validator: _model
                                              .emailTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.71, -0.15),
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
                                    alignment: const AlignmentDirectional(-0.01, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: SizedBox(
                                        width: 300.0,
                                        child: TextFormField(
                                          controller:
                                              _model.passwordTextController,
                                          focusNode: _model.passwordFocusNode,
                                          autofocus: false,
                                          textInputAction: TextInputAction.done,
                                          obscureText:
                                              !_model.passwordVisibility,
                                          decoration: InputDecoration(
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
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
                                            hintStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  letterSpacing: 1.0,
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                () => _model
                                                        .passwordVisibility =
                                                    !_model.passwordVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.passwordVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
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
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                                RegExp('[a-zA-Z0-9]'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.68, 0.24),
                                    child: Text(
                                      'Confirm Password',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.01, 0.45),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: SizedBox(
                                        width: 300.0,
                                        child: TextFormField(
                                          controller: _model
                                              .reEnterPasswordTextController,
                                          focusNode:
                                              _model.reEnterPasswordFocusNode,
                                          autofocus: false,
                                          textInputAction: TextInputAction.done,
                                          obscureText:
                                              !_model.reEnterPasswordVisibility,
                                          decoration: InputDecoration(
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
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
                                            hintStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  letterSpacing: 1.0,
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                () => _model
                                                        .reEnterPasswordVisibility =
                                                    !_model
                                                        .reEnterPasswordVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.reEnterPasswordVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
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
                                              .reEnterPasswordTextControllerValidator
                                              .asValidator(context),
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                                RegExp('[a-zA-Z0-9]'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.03, 0.66),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await authManager.refreshUser();
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            GoRouter.of(context).prepareAuthEvent();
                            if (_model.passwordTextController.text !=
                                _model.reEnterPasswordTextController.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Passwords don\'t match!',
                                  ),
                                ),
                              );
                              return;
                            }

                            final user =
                                await authManager.createAccountWithEmail(
                              context,
                              _model.emailTextController.text,
                              _model.passwordTextController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            await UsersRecord.collection
                                .doc(user.uid)
                                .update(createUsersRecordData(
                                  displayName:
                                      _model.usernameTextController.text,
                                  role: 'customer',
                                ));

                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const VerifyEmailWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));

                            if (currentUserEmailVerified == true) {
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
                                      child: const SuccesfullyVerifyWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
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

                            context.pushNamedAuth('LoginUser', context.mounted);
                          },
                          text: 'Sign Up',
                          options: FFButtonOptions(
                            width: 100.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF7C1113),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
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
                        alignment: const AlignmentDirectional(-0.28, 0.84),
                        child: Text(
                          'Already have an account?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.42, 0.84),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'LoginUser',
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
                            'Sign In',
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
                    context.pushNamed(
                      'LoginUser',
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
