import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categories_model.dart';
export 'categories_model.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({
    super.key,
    required this.householdId,
  });

  final String? householdId;

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  late CategoriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Categories',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                actions: const [],
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    FFLocalizations.of(context).getText(
                      '8vcz8tbb' /* Categories */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineLargeFamily,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).headlineLargeFamily),
                        ),
                  ),
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                elevation: 0.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<int>(
                          controller: _model.dropDownValueController1 ??=
                              FormFieldController<int>(null),
                          options: List<int>.from(
                              [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]),
                          optionLabels: [
                            FFLocalizations.of(context).getText(
                              'e9eu270c' /* January */,
                            ),
                            FFLocalizations.of(context).getText(
                              '9bdewwbe' /* Februrary */,
                            ),
                            FFLocalizations.of(context).getText(
                              'gy1rhgxl' /* March */,
                            ),
                            FFLocalizations.of(context).getText(
                              'b8sg7tgb' /* April */,
                            ),
                            FFLocalizations.of(context).getText(
                              'f75vgn1f' /* May */,
                            ),
                            FFLocalizations.of(context).getText(
                              'iwrmgggz' /* June */,
                            ),
                            FFLocalizations.of(context).getText(
                              'dhrwqosw' /* July */,
                            ),
                            FFLocalizations.of(context).getText(
                              'hk82cqkj' /* August */,
                            ),
                            FFLocalizations.of(context).getText(
                              '0tb3bbay' /* September */,
                            ),
                            FFLocalizations.of(context).getText(
                              '9rf7m25d' /* October */,
                            ),
                            FFLocalizations.of(context).getText(
                              't6ai1k39' /* November */,
                            ),
                            FFLocalizations.of(context).getText(
                              'lnxo85uk' /* December */,
                            )
                          ],
                          onChanged: (val) async {
                            setState(() => _model.dropDownValue1 = val);
                            setState(() {});
                          },
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          height: 56.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'eecap8j6' /* Please select... */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                          labelText: FFLocalizations.of(context).getText(
                            'pu1dfiba' /* Month */,
                          ),
                          labelTextStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<int>(
                          controller: _model.dropDownValueController2 ??=
                              FormFieldController<int>(
                            _model.dropDownValue2 ??= 2024,
                          ),
                          options: List<int>.from([
                            2024,
                            2025,
                            2026,
                            2027,
                            2028,
                            2029,
                            2030,
                            2031,
                            2032,
                            2033,
                            2034,
                            2035,
                            2036,
                            2037,
                            2038,
                            2039,
                            2040,
                            2041,
                            2042,
                            2043,
                            2044,
                            2045,
                            2046,
                            2047,
                            2048,
                            2049,
                            2050
                          ]),
                          optionLabels: [
                            FFLocalizations.of(context).getText(
                              'ifg1y9a9' /* 2024 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'v97s6izf' /* 2025 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'q901mejj' /* 2026 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'n5d877pr' /* 2027 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'tbtxnlfl' /* 2028 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'e3u8blbm' /* 2029 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '763vnuio' /* 2030 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '4kke73pn' /* 2031 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '7psf9hai' /* 2032 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'dcqc7tcc' /* 2033 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '1cxslyr5' /* 2034 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'hdbx5ykm' /* 2035 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'npdqj4b2' /* 2036 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'g7v3c6l8' /* 2037 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '2srrcz9j' /* 2038 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '854lwgvc' /* 2039 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '0ub55hrx' /* 2040 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'pj6lmue4' /* 2041 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'k9lw6eo8' /* 2042 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'up7ac3xl' /* 2043 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'kagnn1ku' /* 2044 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '2zdf29ox' /* 2045 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'mtiyqlv2' /* 2046 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'mgb0bg4t' /* 2047 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'bw8ddpjn' /* 2048 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'qfyb1pgh' /* 2049 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'odymvswt' /* 2050 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue2 = val),
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          height: 56.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'bmutklbl' /* Please select... */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                          labelText: FFLocalizations.of(context).getText(
                            '90y82496' /* Year */,
                          ),
                          labelTextStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.play_arrow,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            _model.getCategoriesOutput =
                                await TppbGroup.getCategoriesCall.call(
                              authorizationToken: currentAuthenticationToken,
                              householdId: widget.householdId,
                              month: _model.dropDownValue1,
                              year: _model.dropDownValue2,
                            );
                            if ((_model.getCategoriesOutput?.succeeded ??
                                true)) {
                              setState(() {});
                            } else {
                              if ((_model.getCategoriesOutput?.statusCode ??
                                      200) ==
                                  401) {
                                _model.apiResult9rp =
                                    await TppbGroup.refreshTokenCall.call(
                                  authorizationToken:
                                      currentAuthenticationToken,
                                  refreshToken: currentAuthRefreshToken,
                                );
                                if ((_model.apiResult9rp?.succeeded ?? true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken:
                                        TppbGroup.refreshTokenCall.accessToken(
                                      (_model.apiResult9rp?.jsonBody ?? ''),
                                    ),
                                    refreshToken:
                                        TppbGroup.refreshTokenCall.refreshToken(
                                      (_model.apiResult9rp?.jsonBody ?? ''),
                                    ),
                                    tokenExpiration:
                                        functions.updateExpireAtAction(),
                                    authUid: currentUserUid,
                                  );
                                }
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Error'),
                                      content: const Text(
                                          'Error Getting Categories! Reach out to support.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            }

                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  if ((_model.dropDownValue1 != null) &&
                      (_model.dropDownValue2 != null))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'o3s9olcs' /* Month to Date */,
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                      ),
                    ),
                  if ((_model.dropDownValue1 != null) &&
                      (_model.dropDownValue2 != null))
                    Builder(
                      builder: (context) {
                        final categoryList = TppbGroup.getCategoriesCall
                                .monthSpend(
                                  (_model.getCategoriesOutput?.jsonBody ?? ''),
                                )
                                ?.map((e) => e)
                                .toList()
                                .toList() ??
                            [];
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: categoryList.length,
                          itemBuilder: (context, categoryListIndex) {
                            final categoryListItem =
                                categoryList[categoryListIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(0.0),
                                    border: Border.all(
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Category: ${TppbGroup.getCategoriesCall.category(
                                            (_model.getCategoriesOutput
                                                    ?.jsonBody ??
                                                ''),
                                          )?[categoryListIndex]}',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLargeFamily),
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            TppbGroup.getCategoriesCall.amount(
                                              (_model.getCategoriesOutput
                                                      ?.jsonBody ??
                                                  ''),
                                            )?[categoryListIndex],
                                            '1234.56',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  if ((_model.dropDownValue1 != null) &&
                      (_model.dropDownValue2 != null))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'xm5m0hay' /* Year to Date */,
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                      ),
                    ),
                  if ((_model.dropDownValue1 != null) &&
                      (_model.dropDownValue2 != null))
                    Builder(
                      builder: (context) {
                        final ytd = TppbGroup.getCategoriesCall
                                .yearToDateSpend(
                                  (_model.getCategoriesOutput?.jsonBody ?? ''),
                                )
                                ?.toList() ??
                            [];
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: ytd.length,
                          itemBuilder: (context, ytdIndex) {
                            final ytdItem = ytd[ytdIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 350.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    border: Border.all(
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Category: ${TppbGroup.getCategoriesCall.ytdcategory(
                                            (_model.getCategoriesOutput
                                                    ?.jsonBody ??
                                                ''),
                                          )?[ytdIndex]}',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLargeFamily),
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            TppbGroup.getCategoriesCall
                                                .ytdamount(
                                              (_model.getCategoriesOutput
                                                      ?.jsonBody ??
                                                  ''),
                                            )?[ytdIndex],
                                            '1234.56',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
