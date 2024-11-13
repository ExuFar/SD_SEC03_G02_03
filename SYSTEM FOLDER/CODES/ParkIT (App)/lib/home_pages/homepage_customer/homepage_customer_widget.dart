import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/log_out_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home_pages/successful_payment/successful_payment_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'homepage_customer_model.dart';
export 'homepage_customer_model.dart';

class HomepageCustomerWidget extends StatefulWidget {
  const HomepageCustomerWidget({super.key});

  @override
  State<HomepageCustomerWidget> createState() => _HomepageCustomerWidgetState();
}

class _HomepageCustomerWidgetState extends State<HomepageCustomerWidget>
    with TickerProviderStateMixin {
  late HomepageCustomerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageCustomerModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation1': AnimationInfo(
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
      'imageOnPageLoadAnimation2': AnimationInfo(
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
      'dividerOnPageLoadAnimation': AnimationInfo(
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
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
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
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
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
      'containerOnPageLoadAnimation2': AnimationInfo(
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
      'containerOnPageLoadAnimation3': AnimationInfo(
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
        endDrawer: Drawer(
          elevation: 10.0,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 25.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                25.0, 25.0, 0.0, 0.0),
                            child: Container(
                              width: 65.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: FlutterFlowTheme.of(context).black,
                                    offset: const Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: Visibility(
                                visible: currentUserPhoto != '',
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: Image.network(
                                        currentUserPhoto,
                                        width: 65.0,
                                        height: 65.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 25.0, 0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Text(
                                  currentUserDisplayName,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        color:
                                            FlutterFlowTheme.of(context).black,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Divider(
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.15),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('viewProfile');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.person,
                                          color: FlutterFlowTheme.of(context)
                                              .bloodRed,
                                          size: 24.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Profile',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Lato',
                                                color: Colors.black,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.15),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('changePassword');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.lock_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .bloodRed,
                                          size: 24.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Change Password',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Lato',
                                                color: Colors.black,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Divider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -0.15),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'GiveFeedback',
                                    queryParameters: {
                                      'user': serializeParam(
                                        currentUserReference,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.feedback_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .bloodRed,
                                            size: 24.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Feedback',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: Colors.black,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -0.15),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('contactUs');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.call_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .bloodRed,
                                            size: 24.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Contact Us',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: Colors.black,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -0.15),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('AboutUs');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.info_outline_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .bloodRed,
                                            size: 24.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'About Us',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: Colors.black,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Divider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
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
                                          child: const LogOutWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 25.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.logout_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .bloodRed,
                                            size: 24.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  25.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Sign Out',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: Colors.black,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
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
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: GetParkingSlotCall.call(),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitRing(
                      color: FlutterFlowTheme.of(context).bloodRed,
                      size: 50.0,
                    ),
                  ),
                );
              }
              final stackGetParkingSlotResponse = snapshot.data!;

              return Stack(
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
                          animationsMap['imageOnPageLoadAnimation1']!),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 316.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).bloodRed,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/parkingbckground3.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['imageOnPageLoadAnimation2']!),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  63.0, 25.0, 0.0, 0.0),
                                          child: Text(
                                            'ParkIT',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Rubik',
                                                  fontSize: 35.0,
                                                  letterSpacing: 1.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 25.0, 20.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderRadius: 20.0,
                                          buttonSize: 40.0,
                                          icon: Icon(
                                            Icons.person_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            scaffoldKey.currentState!
                                                .openEndDrawer();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation']!),
                                Opacity(
                                  opacity: 0.9,
                                  child: SizedBox(
                                    width: 52.0,
                                    child: Divider(
                                      thickness: 2.0,
                                      color: FlutterFlowTheme.of(context).white,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'dividerOnPageLoadAnimation']!),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 25.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Hello,  $currentUserDisplayName!',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              letterSpacing: 0.0,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation1']!),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 20.0, 25.0, 0.0),
                                  child: Text(
                                    'Find available parking\nslots at...',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily: 'Rubik',
                                          fontSize: 45.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation2']!),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 25.0),
                                    child: FlutterFlowPlacePicker(
                                      iOSGoogleMapsApiKey: '',
                                      androidGoogleMapsApiKey: '',
                                      webGoogleMapsApiKey: '',
                                      onSelect: (place) async {
                                        safeSetState(() =>
                                            _model.placePickerValue = place);
                                      },
                                      defaultText: 'Residensi UTMKL',
                                      icon: Icon(
                                        Icons.place,
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        size: 16.0,
                                      ),
                                      buttonOptions: FFButtonOptions(
                                        width: 285.0,
                                        height: 42.0,
                                        color: FlutterFlowTheme.of(context)
                                            .bloodRed,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Container(
                                    width: 283.0,
                                    height: 204.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        25.0, 25.0, 0.0, 0.0),
                                                child: Text(
                                                  'Availability :',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                25.0,
                                                                25.0,
                                                                0.0,
                                                                25.0),
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .black,
                                                            offset: const Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: FutureBuilder<
                                                            ApiCallResponse>(
                                                          future:
                                                              GetParkingSlotCall
                                                                  .call(),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitRing(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bloodRed,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            final textGetParkingSlotResponse =
                                                                snapshot.data!;

                                                            return Text(
                                                              getJsonField(
                                                                textGetParkingSlotResponse
                                                                    .jsonBody,
                                                                r'''$.Total_Slots''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lato',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        30.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                  ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 1.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                5.0, 25.0),
                                                    child: Text(
                                                      '/',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Lato',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .black,
                                                            fontSize: 21.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 1.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 25.0),
                                                    child: Text(
                                                      '3 slots',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Lato',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .black,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 25.0, 25.0, 25.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('viewAvaliableSlots');
                                    },
                                    text: 'Check slots',
                                    options: FFButtonOptions(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 15.0, 20.0, 15.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).bloodRed,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Lato',
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            letterSpacing: 1.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 0.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      'Calculate Parking Fees',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Lato',
                                            color: FlutterFlowTheme.of(context)
                                                .bloodRed,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 2.0,
                                  indent: 145.0,
                                  endIndent: 125.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Container(
                                        width: 283.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                2.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 25.0, 0.0, 25.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        25.0, 10.0, 25.0, 20.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          _model.timeIn
                                                              ?.toString(),
                                                          'TimeIn',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bloodRed,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderRadius: 8.0,
                                                        icon: Icon(
                                                          Icons
                                                              .access_time_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .bloodRed,
                                                          size: 25.0,
                                                        ),
                                                        onPressed: () async {
                                                          final datePicked2Time =
                                                              await showTimePicker(
                                                            context: context,
                                                            initialTime: TimeOfDay
                                                                .fromDateTime(
                                                                    getCurrentTimestamp),
                                                            builder: (context,
                                                                child) {
                                                              return wrapInMaterialTimePickerTheme(
                                                                context,
                                                                child!,
                                                                headerBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                headerForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                headerTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Rubik',
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                pickerBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                pickerForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                selectedDateTimeBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                selectedDateTimeForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                actionButtonForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                iconSize: 24.0,
                                                              );
                                                            },
                                                          );
                                                          if (datePicked2Time !=
                                                              null) {
                                                            safeSetState(() {
                                                              _model.datePicked2 =
                                                                  DateTime(
                                                                getCurrentTimestamp
                                                                    .year,
                                                                getCurrentTimestamp
                                                                    .month,
                                                                getCurrentTimestamp
                                                                    .day,
                                                                datePicked2Time
                                                                    .hour,
                                                                datePicked2Time
                                                                    .minute,
                                                              );
                                                            });
                                                          }
                                                          _model.timeIn = _model
                                                              .datePicked2;
                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        25.0, 0.0, 25.0, 20.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          _model.timeOut
                                                              ?.toString(),
                                                          'Time Out',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bloodRed,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 8.0,
                                                        buttonSize: 46.0,
                                                        icon: Icon(
                                                          Icons
                                                              .access_time_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .bloodRed,
                                                          size: 25.0,
                                                        ),
                                                        onPressed: () async {
                                                          final datePicked4Time =
                                                              await showTimePicker(
                                                            context: context,
                                                            initialTime: TimeOfDay
                                                                .fromDateTime(
                                                                    getCurrentTimestamp),
                                                            builder: (context,
                                                                child) {
                                                              return wrapInMaterialTimePickerTheme(
                                                                context,
                                                                child!,
                                                                headerBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                headerForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                headerTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Rubik',
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                pickerBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                pickerForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                selectedDateTimeBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bloodRed,
                                                                selectedDateTimeForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                actionButtonForegroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                iconSize: 24.0,
                                                              );
                                                            },
                                                          );
                                                          if (datePicked4Time !=
                                                              null) {
                                                            safeSetState(() {
                                                              _model.datePicked4 =
                                                                  DateTime(
                                                                getCurrentTimestamp
                                                                    .year,
                                                                getCurrentTimestamp
                                                                    .month,
                                                                getCurrentTimestamp
                                                                    .day,
                                                                datePicked4Time
                                                                    .hour,
                                                                datePicked4Time
                                                                    .minute,
                                                              );
                                                            });
                                                          }
                                                          _model.timeOut =
                                                              _model
                                                                  .datePicked4;
                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 10.0, 40.0, 5.0),
                                                child: Text(
                                                  '*Please note that the first hour of parking costs RM5, and each additional hour is RM3.',
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 15.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if ((_model.timeIn != null) &&
                                          (_model.timeOut != null)) {
                                        await ParkingFeesRecord.createDoc(
                                                currentUserReference!)
                                            .set(createParkingFeesRecordData(
                                          userID: currentUserReference,
                                          timeIn: _model.datePicked2,
                                          timeOut: _model.datePicked4,
                                          totalFees: 5 +
                                              (((_model.timeOut!.secondsSinceEpoch -
                                                                  _model.timeIn!
                                                                      .secondsSinceEpoch) +
                                                              3599) ~/
                                                          3600 -
                                                      1) *
                                                  3,
                                        ));
                                        _model.total = 5 +
                                            (((_model.timeOut!.secondsSinceEpoch -
                                                                _model.timeIn!
                                                                    .secondsSinceEpoch) +
                                                            3599) ~/
                                                        3600 -
                                                    1) *
                                                3;
                                        safeSetState(() {});
                                      } else {
                                        return;
                                      }

                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => FocusScope.of(context)
                                                .unfocus(),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: SuccessfulPaymentWidget(
                                                timeIn: _model.timeIn!,
                                                timeOut: _model.timeOut!,
                                                totalFees:
                                                    valueOrDefault<String>(
                                                  _model.total?.toString(),
                                                  '0',
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    text: 'Calculate',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).bloodRed,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Lato',
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 0.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      'Customer Feedback',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Lato',
                                            color: FlutterFlowTheme.of(context)
                                                .bloodRed,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 2.0,
                                  indent: 145.0,
                                  endIndent: 125.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Stack(
                                    children: [
                                      StreamBuilder<List<ReviewRecord>>(
                                        stream: queryReviewRecord(
                                          queryBuilder: (reviewRecord) =>
                                              reviewRecord.where(
                                            'rating',
                                            isGreaterThanOrEqualTo: 4,
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 40.0,
                                                height: 40.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .bloodRed,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<ReviewRecord>
                                              carouselReviewRecordList =
                                              snapshot.data!;

                                          return SizedBox(
                                            width: 385.0,
                                            child: CarouselSlider.builder(
                                              key: const ValueKey('gagaggag'),
                                              itemCount:
                                                  carouselReviewRecordList
                                                      .length,
                                              itemBuilder:
                                                  (context, carouselIndex, _) {
                                                final carouselReviewRecord =
                                                    carouselReviewRecordList[
                                                        carouselIndex];
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 2.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    child: Container(
                                                      width: 219.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    15.0,
                                                                    10.0,
                                                                    15.0),
                                                        child: StreamBuilder<
                                                            UsersRecord>(
                                                          stream: UsersRecord
                                                              .getDocument(
                                                                  carouselReviewRecord
                                                                      .userID!),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitRing(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bloodRed,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }

                                                            final columnUsersRecord =
                                                                snapshot.data!;

                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        columnUsersRecord
                                                                            .displayName,
                                                                        'UNKNOWN',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Rubik',
                                                                            color:
                                                                                const Color(0xFF6B0F0F),
                                                                            fontSize:
                                                                                20.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              dateTimeFormat(
                                                                                "MMMEd",
                                                                                carouselReviewRecord.date,
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Lato',
                                                                                  color: const Color(0xFF6B0F0F),
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.star_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).warning,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                formatNumber(
                                                                                  carouselReviewRecord.rating,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.periodDecimal,
                                                                                ),
                                                                                '0',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Lato',
                                                                                    color: const Color(0xFF6B0F0F),
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        carouselReviewRecord
                                                                            .review,
                                                                        'no comment',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lato',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                              carouselController: _model
                                                      .carouselController ??=
                                                  CarouselSliderController(),
                                              options: CarouselOptions(
                                                initialPage: max(
                                                    0,
                                                    min(
                                                        18,
                                                        carouselReviewRecordList
                                                                .length -
                                                            1)),
                                                viewportFraction: 0.5,
                                                disableCenter: true,
                                                enlargeCenterPage: true,
                                                enlargeFactor: 0.25,
                                                enableInfiniteScroll: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                autoPlay: true,
                                                autoPlayAnimationDuration:
                                                    const Duration(milliseconds: 800),
                                                autoPlayInterval: const Duration(
                                                    milliseconds: (800 + 4000)),
                                                autoPlayCurve: Curves.linear,
                                                pauseAutoPlayInFiniteScroll:
                                                    true,
                                                onPageChanged: (index, _) =>
                                                    _model.carouselCurrentIndex =
                                                        index,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 15.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'GiveFeedback',
                                        queryParameters: {
                                          'user': serializeParam(
                                            currentUserReference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: 'Give feedback',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).bloodRed,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Lato',
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation3']!),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
