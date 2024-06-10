import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/search_results_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/globall_widgets/ledger_entry/ledger_entry_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ledger_model.dart';
export 'ledger_model.dart';

class LedgerWidget extends StatefulWidget {
  const LedgerWidget({super.key});

  @override
  State<LedgerWidget> createState() => _LedgerWidgetState();
}

class _LedgerWidgetState extends State<LedgerWidget>
    with TickerProviderStateMixin {
  late LedgerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LedgerModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 1,
    )..addListener(() => setState(() {}));
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
        title: 'Ledger',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Text(
                FFLocalizations.of(context).getText(
                  'cw2zxs05' /* Ledger */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineLargeFamily,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineLargeFamily),
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5.0,
                            color: Color(0x32171717),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 16.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: TppbGroup.getHouseholdCall.call(
                                          authorizationToken:
                                              currentAuthenticationToken,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final householdIdDropDownGetHouseholdResponse =
                                              snapshot.data!;
                                          return FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .householdIdDropDownValueController ??=
                                                FormFieldController<String>(
                                              _model.householdIdDropDownValue ??=
                                                  '',
                                            ),
                                            options: List<String>.from(TppbGroup
                                                .getHouseholdCall
                                                .householdId(
                                              householdIdDropDownGetHouseholdResponse
                                                  .jsonBody,
                                            )!),
                                            optionLabels: TppbGroup
                                                .getHouseholdCall
                                                .householdName(
                                              householdIdDropDownGetHouseholdResponse
                                                  .jsonBody,
                                            )!,
                                            onChanged: (val) => setState(() =>
                                                _model.householdIdDropDownValue =
                                                    val),
                                            width: 300.0,
                                            height: 56.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily),
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'rb34tajy' /* Please select... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 5.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            borderWidth: 2.0,
                                            borderRadius: 8.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'bonlneeh' /* Select Household */,
                                            ),
                                            labelTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily),
                                                    ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Flexible(
                                  child: Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        icon: Icon(
                                          Icons.manage_search_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            barrierColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: const SearchResultsWidget(),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (_model.householdIdDropDownValue != null &&
                              _model.householdIdDropDownValue != '')
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  if (_model.householdIdDropDownValue != null &&
                                      _model.householdIdDropDownValue != '')
                                    Semantics(
                                      label: 'Get spending Habits',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (Navigator.of(context).canPop()) {
                                            context.pop();
                                          }
                                          context.pushNamed(
                                            'Categories',
                                            queryParameters: {
                                              'householdId': serializeParam(
                                                _model.householdIdDropDownValue,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'lfic0wqw' /* View Spending Habits */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily,
                                                color: Colors.black,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmallFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          if (_model.householdIdDropDownValue != null &&
                              _model.householdIdDropDownValue != '')
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'aqz1p02h' /* Total Spent This month:  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: TppbGroup.getTotalSpentCall.call(
                                      authorizationToken:
                                          currentAuthenticationToken,
                                      householdId:
                                          _model.householdIdDropDownValue,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final totalSpentQueryGetTotalSpentResponse =
                                          snapshot.data!;
                                      return Text(
                                        formatNumber(
                                          TppbGroup.getTotalSpentCall
                                              .totalSpent(
                                            totalSpentQueryGetTotalSpentResponse
                                                .jsonBody,
                                          ),
                                          formatType: FormatType.custom,
                                          currency: '',
                                          format: '#,###.##',
                                          locale: '',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily),
                                            ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          Container(
                            height: 30.0,
                            decoration: const BoxDecoration(),
                            child: Visibility(
                              visible:
                                  _model.householdIdDropDownValue != null &&
                                      _model.householdIdDropDownValue != '',
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 1.0, 0.0, 0.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: TppbGroup.getSafeToSpendCall.call(
                                    authorizationToken:
                                        currentAuthenticationToken,
                                    householdId:
                                        _model.householdIdDropDownValue,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final rowGetSafeToSpendResponse =
                                        snapshot.data!;
                                    return Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'jjxlbdrz' /* Safe To Spend:  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            formatNumber(
                                              TppbGroup.getSafeToSpendCall
                                                  .safeToSpend(
                                                rowGetSafeToSpendResponse
                                                    .jsonBody,
                                              ),
                                              formatType: FormatType.custom,
                                              currency: '',
                                              format: '#,###.##',
                                              locale: '',
                                            ),
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMediumFamily),
                                              ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, -1.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 12.0),
                                            child: FlutterFlowIconButton(
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 48.0,
                                              icon: Icon(
                                                Icons.info,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 15.0,
                                              ),
                                              onPressed: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          'What is Safe To Spend?'),
                                                      content: Text(
                                                          'Safe To Spend is the amount you can safely spend between now and ${valueOrDefault<String>(
                                                        TppbGroup
                                                            .getSafeToSpendCall
                                                            .nextPayday(
                                                          rowGetSafeToSpendResponse
                                                              .jsonBody,
                                                        ),
                                                        'Loading....',
                                                      )} without going over what you have available in your account.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          FutureBuilder<ApiCallResponse>(
                            future: TppbGroup.getLedgerAllCall.call(
                              authorizationToken: currentAuthenticationToken,
                              householdId: _model.householdIdDropDownValue,
                              clearedOnly: false,
                              currentMonthOnly: false,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final everythingListViewGetLedgerAllResponse =
                                  snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final ledgerEntriesAll =
                                      TppbGroup.getLedgerAllCall
                                              .ledgerEntriesList(
                                                everythingListViewGetLedgerAllResponse
                                                    .jsonBody,
                                              )
                                              ?.map((e) => e)
                                              .toList()
                                              .toList() ??
                                          [];
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: ledgerEntriesAll.length,
                                    itemBuilder:
                                        (context, ledgerEntriesAllIndex) {
                                      final ledgerEntriesAllItem =
                                          ledgerEntriesAll[
                                              ledgerEntriesAllIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.ledgerEntryModels1.getModel(
                                          ledgerEntriesAllIndex.toString(),
                                          ledgerEntriesAllIndex,
                                        ),
                                        updateCallback: () => setState(() {}),
                                        updateOnChange: true,
                                        child: LedgerEntryWidget(
                                          key: Key(
                                            'Key2zb_${ledgerEntriesAllIndex.toString()}',
                                          ),
                                          name: valueOrDefault<String>(
                                            TppbGroup.getLedgerAllCall
                                                .description(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex],
                                            'Loading...',
                                          ),
                                          paymentSource: valueOrDefault<String>(
                                            TppbGroup.getLedgerAllCall
                                                .paymentSourceSourceName(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex],
                                            'Loading...',
                                          ),
                                          date: valueOrDefault<String>(
                                            TppbGroup.getLedgerAllCall
                                                .transactionDate(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex],
                                            'Loading...',
                                          ),
                                          amount: valueOrDefault<double>(
                                            TppbGroup.getLedgerAllCall.amount(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex],
                                            0.00,
                                          ),
                                          transactionType:
                                              valueOrDefault<String>(
                                            TppbGroup.getLedgerAllCall
                                                .transactionType(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex],
                                            'transaction',
                                          ),
                                          type: valueOrDefault<String>(
                                            TppbGroup.getLedgerAllCall.type(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex],
                                            'Loading...',
                                          ),
                                          transactionId: valueOrDefault<String>(
                                            TppbGroup.getLedgerAllCall
                                                .transactionId(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex],
                                            'Loading...',
                                          ),
                                          status:
                                              TppbGroup.getLedgerAllCall.status(
                                            everythingListViewGetLedgerAllResponse
                                                .jsonBody,
                                          )![ledgerEntriesAllIndex],
                                          runningTotal: valueOrDefault<double>(
                                            TppbGroup.getLedgerAllCall
                                                .runningTotal(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex],
                                            0.00,
                                          ),
                                          billId: valueOrDefault<String>(
                                            (TppbGroup.getLedgerAllCall.billId(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex])
                                                ?.toString(),
                                            'Loading...',
                                          ),
                                          incomeId: valueOrDefault<String>(
                                            (TppbGroup.getLedgerAllCall
                                                    .incomeId(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex])
                                                ?.toString(),
                                            'Loading...',
                                          ),
                                          ledgerId: valueOrDefault<String>(
                                            TppbGroup.getLedgerAllCall.ledgerId(
                                              everythingListViewGetLedgerAllResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesAllIndex],
                                            'Loading...',
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                          FutureBuilder<ApiCallResponse>(
                            future: TppbGroup.getLedgerThisMonthCall.call(
                              authorizationToken: currentAuthenticationToken,
                              householdId: _model.householdIdDropDownValue,
                              clearedOnly: false,
                              currentMonthOnly: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final thisMonthListViewGetLedgerThisMonthResponse =
                                  snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final ledgerEntriesThisMonth =
                                      TppbGroup.getLedgerThisMonthCall
                                              .ledgerEntriesList(
                                                thisMonthListViewGetLedgerThisMonthResponse
                                                    .jsonBody,
                                              )
                                              ?.map((e) => e)
                                              .toList()
                                              .toList() ??
                                          [];
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: ledgerEntriesThisMonth.length,
                                    itemBuilder:
                                        (context, ledgerEntriesThisMonthIndex) {
                                      final ledgerEntriesThisMonthItem =
                                          ledgerEntriesThisMonth[
                                              ledgerEntriesThisMonthIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.ledgerEntryModels2.getModel(
                                          ledgerEntriesThisMonthIndex
                                              .toString(),
                                          ledgerEntriesThisMonthIndex,
                                        ),
                                        updateCallback: () => setState(() {}),
                                        updateOnChange: true,
                                        child: LedgerEntryWidget(
                                          key: Key(
                                            'Key9c8_${ledgerEntriesThisMonthIndex.toString()}',
                                          ),
                                          name: valueOrDefault<String>(
                                            TppbGroup.getLedgerThisMonthCall
                                                .description(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex],
                                            'Loading...',
                                          ),
                                          paymentSource: valueOrDefault<String>(
                                            TppbGroup.getLedgerThisMonthCall
                                                .paymentSourceSourceName(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex],
                                            'Loading...',
                                          ),
                                          date: valueOrDefault<String>(
                                            TppbGroup.getLedgerThisMonthCall
                                                .transactionDate(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex],
                                            'Loading...',
                                          ),
                                          amount: valueOrDefault<double>(
                                            TppbGroup.getLedgerThisMonthCall
                                                .amount(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex],
                                            0.00,
                                          ),
                                          transactionType:
                                              valueOrDefault<String>(
                                            TppbGroup.getLedgerThisMonthCall
                                                .transactionType(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex],
                                            'Loading...',
                                          ),
                                          type: valueOrDefault<String>(
                                            TppbGroup.getLedgerThisMonthCall
                                                .type(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex],
                                            'transaction',
                                          ),
                                          transactionId: valueOrDefault<String>(
                                            TppbGroup.getLedgerThisMonthCall
                                                .transactionId(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex],
                                            'Loading...',
                                          ),
                                          status: TppbGroup
                                              .getLedgerThisMonthCall
                                              .status(
                                            thisMonthListViewGetLedgerThisMonthResponse
                                                .jsonBody,
                                          )![ledgerEntriesThisMonthIndex],
                                          runningTotal: valueOrDefault<double>(
                                            TppbGroup.getLedgerThisMonthCall
                                                .runningTotal(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex],
                                            0.00,
                                          ),
                                          billId: valueOrDefault<String>(
                                            (TppbGroup.getLedgerThisMonthCall
                                                    .billId(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex])
                                                ?.toString(),
                                            'Loading...',
                                          ),
                                          incomeId: valueOrDefault<String>(
                                            (TppbGroup.getLedgerThisMonthCall
                                                    .incomeId(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex])
                                                ?.toString(),
                                            'Loading...',
                                          ),
                                          ledgerId: valueOrDefault<String>(
                                            TppbGroup.getLedgerThisMonthCall
                                                .ledgerId(
                                              thisMonthListViewGetLedgerThisMonthResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesThisMonthIndex],
                                            'Loading...',
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                          FutureBuilder<ApiCallResponse>(
                            future: TppbGroup.getLedgerClearedCall.call(
                              authorizationToken: currentAuthenticationToken,
                              householdId: _model.householdIdDropDownValue,
                              clearedOnly: true,
                              currentMonthOnly: false,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final clearedListviewGetLedgerClearedResponse =
                                  snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final ledgerEntriesCleared =
                                      TppbGroup.getLedgerClearedCall
                                              .ledgerEntriesList(
                                                clearedListviewGetLedgerClearedResponse
                                                    .jsonBody,
                                              )
                                              ?.map((e) => e)
                                              .toList()
                                              .toList() ??
                                          [];
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: ledgerEntriesCleared.length,
                                    itemBuilder:
                                        (context, ledgerEntriesClearedIndex) {
                                      final ledgerEntriesClearedItem =
                                          ledgerEntriesCleared[
                                              ledgerEntriesClearedIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.ledgerEntryModels3.getModel(
                                          ledgerEntriesClearedIndex.toString(),
                                          ledgerEntriesClearedIndex,
                                        ),
                                        updateCallback: () => setState(() {}),
                                        child: LedgerEntryWidget(
                                          key: Key(
                                            'Keyqzb_${ledgerEntriesClearedIndex.toString()}',
                                          ),
                                          name: valueOrDefault<String>(
                                            TppbGroup.getLedgerClearedCall
                                                .description(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex],
                                            'Loading...',
                                          ),
                                          paymentSource: valueOrDefault<String>(
                                            TppbGroup.getLedgerClearedCall
                                                .paymentSourceSourceName(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex],
                                            'Loading...',
                                          ),
                                          date: valueOrDefault<String>(
                                            TppbGroup.getLedgerClearedCall
                                                .transactionDate(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex],
                                            'Loading...',
                                          ),
                                          amount: valueOrDefault<double>(
                                            TppbGroup.getLedgerClearedCall
                                                .amount(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex],
                                            0.00,
                                          ),
                                          transactionType:
                                              valueOrDefault<String>(
                                            TppbGroup.getLedgerClearedCall
                                                .transactionType(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex],
                                            'Loading...',
                                          ),
                                          type: valueOrDefault<String>(
                                            TppbGroup.getLedgerClearedCall.type(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex],
                                            'transaction',
                                          ),
                                          transactionId: valueOrDefault<String>(
                                            TppbGroup.getLedgerClearedCall
                                                .transactionId(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex],
                                            'Loading...',
                                          ),
                                          status: TppbGroup.getLedgerClearedCall
                                              .status(
                                            clearedListviewGetLedgerClearedResponse
                                                .jsonBody,
                                          )![ledgerEntriesClearedIndex],
                                          runningTotal: valueOrDefault<double>(
                                            TppbGroup.getLedgerClearedCall
                                                .runningTotal(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex],
                                            0.00,
                                          ),
                                          billId: valueOrDefault<String>(
                                            (TppbGroup.getLedgerClearedCall
                                                    .billId(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex])
                                                ?.toString(),
                                            'Loading...',
                                          ),
                                          incomeId: valueOrDefault<String>(
                                            (TppbGroup.getLedgerClearedCall
                                                    .incomeId(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex])
                                                ?.toString(),
                                            'Loading...',
                                          ),
                                          ledgerId: valueOrDefault<String>(
                                            TppbGroup.getLedgerClearedCall
                                                .ledgerId(
                                              clearedListviewGetLedgerClearedResponse
                                                  .jsonBody,
                                            )?[ledgerEntriesClearedIndex],
                                            'Loading...',
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).secondaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).primaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        padding: const EdgeInsets.all(4.0),
                        tabs: [
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              '9lfzaqnh' /* Everything */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'pptwt2a3' /* This Month */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'coyp2r0z' /* Cleared */,
                            ),
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}, () async {}][i]();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
