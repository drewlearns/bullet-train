import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'Dashboard',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: Drawer(
              elevation: 16.0,
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/app-banner.svg',
                              width: 283.0,
                              height: 143.0,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'aknel4u0' /* Settings */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                currentUserLocationValue =
                                    await getCurrentUserLocation(
                                        defaultLocation: const LatLng(0.0, 0.0));
                                _model.getUserOutput =
                                    await TppbGroup.getUserCall.call(
                                  authorizationToken:
                                      FFAppState().authorizationToken,
                                  ipAddress:
                                      currentUserLocationValue?.toString(),
                                );
                                if ((_model.getUserOutput?.succeeded ?? true)) {
                                  setState(() {
                                    FFAppState().email =
                                        TppbGroup.getUserCall.email(
                                      (_model.getUserOutput?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().householdIds =
                                        TppbGroup.getUserCall
                                            .householdIds(
                                              (_model.getUserOutput?.jsonBody ??
                                                  ''),
                                            )!
                                            .toList()
                                            .cast<String>();
                                    FFAppState().phoneNumber =
                                        TppbGroup.getUserCall.phoneNumber(
                                      (_model.getUserOutput?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().mailOptIn =
                                        TppbGroup.getUserCall
                                            .mailOptIn(
                                              (_model.getUserOutput?.jsonBody ??
                                                  ''),
                                            )!
                                            .toString();
                                    FFAppState().confirmedEmail =
                                        TppbGroup.getUserCall.confirmedEmail(
                                      (_model.getUserOutput?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().subscriptionEndDate = TppbGroup
                                        .getUserCall
                                        .subscriptionEndDate(
                                      (_model.getUserOutput?.jsonBody ?? ''),
                                    )!;
                                  });

                                  context.pushNamed(
                                    'EditUser',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
                                        duration: Duration(milliseconds: 30),
                                      ),
                                    },
                                  );
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Sorry'),
                                        content: const Text(
                                            'We are having trouble\'s pulling your profile temporarily. Try again.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                setState(() {});
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeInOut,
                                width: double.infinity,
                                height: 44.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.person_outline,
                                        color: Color(0xFF15161E),
                                        size: 24.0,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'vlmedd7c' /* Edit Profile */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: const Color(0xFF15161E),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          'Plus Jakarta Sans'),
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                currentUserLocationValue =
                                    await getCurrentUserLocation(
                                        defaultLocation: const LatLng(0.0, 0.0));
                                _model.getUserOutput2 =
                                    await TppbGroup.getUserCall.call(
                                  authorizationToken:
                                      FFAppState().authorizationToken,
                                  ipAddress:
                                      currentUserLocationValue?.toString(),
                                );
                                if ((_model.getUserOutput2?.succeeded ??
                                    true)) {
                                  setState(() {
                                    FFAppState().email =
                                        TppbGroup.getUserCall.email(
                                      (_model.getUserOutput2?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().householdIds = TppbGroup
                                        .getUserCall
                                        .householdIds(
                                          (_model.getUserOutput2?.jsonBody ??
                                              ''),
                                        )!
                                        .toList()
                                        .cast<String>();
                                    FFAppState().phoneNumber =
                                        TppbGroup.getUserCall.phoneNumber(
                                      (_model.getUserOutput2?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().mailOptIn = TppbGroup
                                        .getUserCall
                                        .mailOptIn(
                                          (_model.getUserOutput2?.jsonBody ??
                                              ''),
                                        )!
                                        .toString();
                                    FFAppState().confirmedEmail =
                                        TppbGroup.getUserCall.confirmedEmail(
                                      (_model.getUserOutput2?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().subscriptionEndDate = TppbGroup
                                        .getUserCall
                                        .subscriptionEndDate(
                                      (_model.getUserOutput2?.jsonBody ?? ''),
                                    )!;
                                  });

                                  context.pushNamed(
                                    'AddInvite',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
                                        duration: Duration(milliseconds: 30),
                                      ),
                                    },
                                  );
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Sorry'),
                                        content: const Text(
                                            'We are having trouble\'s pulling your profile temporarily. Try again.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                setState(() {});
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeInOut,
                                width: double.infinity,
                                height: 44.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.person_add,
                                        color: Color(0xFF15161E),
                                        size: 24.0,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'so70za4w' /* Invitations */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: const Color(0xFF15161E),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          'Plus Jakarta Sans'),
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                currentUserLocationValue =
                                    await getCurrentUserLocation(
                                        defaultLocation: const LatLng(0.0, 0.0));
                                _model.getUserOutput1 =
                                    await TppbGroup.getUserCall.call(
                                  authorizationToken:
                                      FFAppState().authorizationToken,
                                  ipAddress:
                                      currentUserLocationValue?.toString(),
                                );
                                if ((_model.getUserOutput1?.succeeded ??
                                    true)) {
                                  setState(() {
                                    FFAppState().email =
                                        TppbGroup.getUserCall.email(
                                      (_model.getUserOutput1?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().householdIds = TppbGroup
                                        .getUserCall
                                        .householdIds(
                                          (_model.getUserOutput1?.jsonBody ??
                                              ''),
                                        )!
                                        .toList()
                                        .cast<String>();
                                    FFAppState().phoneNumber =
                                        TppbGroup.getUserCall.phoneNumber(
                                      (_model.getUserOutput1?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().mailOptIn = TppbGroup
                                        .getUserCall
                                        .mailOptIn(
                                          (_model.getUserOutput1?.jsonBody ??
                                              ''),
                                        )!
                                        .toString();
                                    FFAppState().confirmedEmail =
                                        TppbGroup.getUserCall.confirmedEmail(
                                      (_model.getUserOutput1?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().subscriptionEndDate = TppbGroup
                                        .getUserCall
                                        .subscriptionEndDate(
                                      (_model.getUserOutput1?.jsonBody ?? ''),
                                    )!;
                                  });
                                  _model.getHouseholdOutput1 =
                                      await TppbGroup.getHouseholdCall.call(
                                    authorizationToken:
                                        FFAppState().authorizationToken,
                                    ipAddress:
                                        currentUserLocationValue?.toString(),
                                    deviceDetails: '',
                                    page: 1,
                                  );
                                  if ((_model.getHouseholdOutput1?.succeeded ??
                                      true)) {
                                    FFAppState().householdIds = TppbGroup
                                        .getUserCall
                                        .householdIds(
                                          (_model.getUserOutput1?.jsonBody ??
                                              ''),
                                        )!
                                        .toList()
                                        .cast<String>();

                                    context.pushNamed(
                                      'EditMembers',
                                      queryParameters: {
                                        'householdIds': serializeParam(
                                          TppbGroup.getUserCall.householdIds(
                                            (_model.getUserOutput1?.jsonBody ??
                                                ''),
                                          ),
                                          ParamType.String,
                                          true,
                                        ),
                                        'householdNames': serializeParam(
                                          TppbGroup.getHouseholdCall
                                              .householdName(
                                            (_model.getHouseholdOutput1
                                                    ?.jsonBody ??
                                                ''),
                                          ),
                                          ParamType.String,
                                          true,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.bottomToTop,
                                          duration: Duration(milliseconds: 30),
                                        ),
                                      },
                                    );
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Error'),
                                          content: Text(TppbGroup
                                              .getHouseholdCall
                                              .message(
                                            (_model.getHouseholdOutput1
                                                    ?.jsonBody ??
                                                ''),
                                          )!),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Sorry'),
                                        content: const Text(
                                            'We are having trouble\'s pulling your profile temporarily. Try again.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                setState(() {});
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeInOut,
                                width: double.infinity,
                                height: 44.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.person_search,
                                        color: Color(0xFF15161E),
                                        size: 24.0,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'gure3i4q' /* Edit Members */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: const Color(0xFF15161E),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          'Plus Jakarta Sans'),
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
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                actions: const [],
                flexibleSpace: FlexibleSpaceBar(
                  title: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'zc8oz36a' /* Dashboard */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineLargeFamily),
                              ),
                    ),
                  ),
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                elevation: 0.0,
              ),
            ),
            body: const SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ),
          ),
        ));
  }
}
