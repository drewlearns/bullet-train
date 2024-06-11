import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/ledger/search_transactions/search_transactions_widget.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
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
    return FutureBuilder<ApiCallResponse>(
      future: TppbGroup.getHouseholdCall.call(
        authorizationToken: currentAuthenticationToken,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final ledgerGetHouseholdResponse = snapshot.data!;
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 16.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .householdIdDropDownValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.householdIdDropDownValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      TppbGroup.getHouseholdCall
                                                          .householdId(
                                                    ledgerGetHouseholdResponse
                                                        .jsonBody,
                                                  )!),
                                                  optionLabels: TppbGroup
                                                      .getHouseholdCall
                                                      .householdName(
                                                    ledgerGetHouseholdResponse
                                                        .jsonBody,
                                                  )!,
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .householdIdDropDownValue =
                                                          val),
                                                  width: 300.0,
                                                  height: 56.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'rb34tajy' /* Please select... */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 5.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'bonlneeh' /* Select Household */,
                                                  ),
                                                  labelTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (_model.householdIdDropDownValue !=
                                              null &&
                                          _model.householdIdDropDownValue != '')
                                        Flexible(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 16.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 40.0,
                                                icon: Icon(
                                                  Icons.manage_search_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    barrierColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const SearchTransactionsWidget(),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
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
                                      if (_model.householdIdDropDownValue !=
                                              null &&
                                          _model.householdIdDropDownValue != '')
                                        Semantics(
                                          label: 'Get spending Habits',
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (Navigator.of(context)
                                                  .canPop()) {
                                                context.pop();
                                              }
                                              context.pushNamed(
                                                'Categories',
                                                queryParameters: {
                                                  'householdId': serializeParam(
                                                    _model
                                                        .householdIdDropDownValue,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'lfic0wqw' /* View Spending Habits */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      FutureBuilder<ApiCallResponse>(
                                        future: _model.totalSpent(
                                          uniqueQueryKey:
                                              valueOrDefault<String>(
                                            _model.householdIdDropDownValue,
                                            'Loading...',
                                          ),
                                          requestFn: () =>
                                              TppbGroup.getTotalSpentCall.call(
                                            authorizationToken:
                                                currentAuthenticationToken,
                                            householdId:
                                                _model.householdIdDropDownValue,
                                          ),
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
                                          final totalSpentQueryGetTotalSpentResponse =
                                              snapshot.data!;
                                          return Text(
                                            valueOrDefault<String>(
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
                                              'Loading...',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                      future: _model.safeToSpend(
                                        uniqueQueryKey: valueOrDefault<String>(
                                          _model.householdIdDropDownValue,
                                          'Loading...',
                                        ),
                                        requestFn: () =>
                                            TppbGroup.getSafeToSpendCall.call(
                                          authorizationToken:
                                              currentAuthenticationToken,
                                          householdId:
                                              _model.householdIdDropDownValue,
                                        ),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
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
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'jjxlbdrz' /* Safe To Spend:  */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily),
                                                      ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: FlutterFlowIconButton(
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 48.0,
                                                  icon: Icon(
                                                    Icons.info,
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                  if (_model.householdIdDropDownValue != null &&
                      _model.householdIdDropDownValue != '')
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                FutureBuilder<ApiCallResponse>(
                                  future: (_model.apiRequestCompleter ??=
                                          Completer<ApiCallResponse>()
                                            ..complete(
                                                TppbGroup.getLedgerAllCall.call(
                                              authorizationToken:
                                                  currentAuthenticationToken,
                                              householdId: _model
                                                  .householdIdDropDownValue,
                                              clearedOnly: false,
                                              currentMonthOnly: false,
                                            )))
                                      .future,
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
                                        return RefreshIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          strokeWidth: 5.0,
                                          onRefresh: () async {
                                            setState(() => _model
                                                .apiRequestCompleter = null);
                                            await _model
                                                .waitForApiRequestCompleted();
                                          },
                                          child: ListView.builder(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.vertical,
                                            itemCount: ledgerEntriesAll.length,
                                            itemBuilder: (context,
                                                ledgerEntriesAllIndex) {
                                              final ledgerEntriesAllItem =
                                                  ledgerEntriesAll[
                                                      ledgerEntriesAllIndex];
                                              return Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 8.0, 16.0, 8.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if ((TppbGroup
                                                                .getLedgerAllCall
                                                                .type(
                                                          everythingListViewGetLedgerAllResponse
                                                              .jsonBody,
                                                        )?[
                                                            ledgerEntriesAllIndex]) ==
                                                        'transaction') {
                                                      context.pushNamed(
                                                        'TransactionDetails',
                                                        queryParameters: {
                                                          'transactionId':
                                                              serializeParam(
                                                            TppbGroup
                                                                .getLedgerAllCall
                                                                .transactionId(
                                                              everythingListViewGetLedgerAllResponse
                                                                  .jsonBody,
                                                            )?[ledgerEntriesAllIndex],
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if ((TppbGroup
                                                                .getLedgerAllCall
                                                                .type(
                                                          everythingListViewGetLedgerAllResponse
                                                              .jsonBody,
                                                        )?[
                                                            ledgerEntriesAllIndex]) ==
                                                        'bill') {
                                                      context.pushNamed(
                                                        'BillDetails',
                                                        queryParameters: {
                                                          'billId':
                                                              serializeParam(
                                                            (TppbGroup
                                                                    .getLedgerAllCall
                                                                    .billId(
                                                              everythingListViewGetLedgerAllResponse
                                                                  .jsonBody,
                                                            )?[ledgerEntriesAllIndex])
                                                                ?.toString(),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if ((TppbGroup
                                                            .getLedgerAllCall
                                                            .type(
                                                          everythingListViewGetLedgerAllResponse
                                                              .jsonBody,
                                                        )?[ledgerEntriesAllIndex]) ==
                                                        'income') {
                                                      context.pushNamed(
                                                        'IncomeDetails',
                                                        queryParameters: {
                                                          'incomeId':
                                                              serializeParam(
                                                            (TppbGroup
                                                                    .getLedgerAllCall
                                                                    .incomeId(
                                                              everythingListViewGetLedgerAllResponse
                                                                  .jsonBody,
                                                            )?[ledgerEntriesAllIndex])
                                                                ?.toString(),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                const Text('Error'),
                                                            content: const Text(
                                                                'Unable to view item.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    const Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 5.0,
                                                    shape:
                                                        const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                12.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                    ),
                                                    child: Container(
                                                      width: 300.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            const BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  12.0),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    8.0,
                                                                    16.0,
                                                                    8.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          20.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .check_box,
                                                                        color: TppbGroup.getLedgerAllCall.status(
                                                                          everythingListViewGetLedgerAllResponse
                                                                              .jsonBody,
                                                                        )![ledgerEntriesAllIndex]
                                                                            ? FlutterFlowTheme.of(context).alternate
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        _model.editLedgerEntryClearedAll = await TppbGroup
                                                                            .editLedgerEntryAsClearedCall
                                                                            .call(
                                                                          authorizationToken:
                                                                              currentAuthenticationToken,
                                                                          ledgerId:
                                                                              valueOrDefault<String>(
                                                                            TppbGroup.getLedgerAllCall.ledgerId(
                                                                              everythingListViewGetLedgerAllResponse.jsonBody,
                                                                            )?[ledgerEntriesAllIndex],
                                                                            'False',
                                                                          ),
                                                                        );
                                                                        if ((_model.editLedgerEntryClearedAll?.succeeded ??
                                                                            true)) {
                                                                          setState(
                                                                              () {});
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: const Text('Error'),
                                                                                content: const Text('Failed to update Status of entry.'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: const Text('Ok'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          );
                                                                        }

                                                                        setState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              TppbGroup.getLedgerAllCall.description(
                                                                                everythingListViewGetLedgerAllResponse.jsonBody,
                                                                              )?[ledgerEntriesAllIndex],
                                                                              'Loading...',
                                                                            ).maybeHandleOverflow(
                                                                              maxChars: 28,
                                                                              replacement: '…',
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Wallet: ${valueOrDefault<String>(
                                                                                    TppbGroup.getLedgerAllCall.paymentSourceSourceName(
                                                                                      everythingListViewGetLedgerAllResponse.jsonBody,
                                                                                    )?[ledgerEntriesAllIndex],
                                                                                    'Loading...',
                                                                                  )}'
                                                                                      .maybeHandleOverflow(
                                                                                    maxChars: 20,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  textAlign: TextAlign.start,
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    TppbGroup.getLedgerAllCall.transactionDate(
                                                                                      everythingListViewGetLedgerAllResponse.jsonBody,
                                                                                    )?[ledgerEntriesAllIndex],
                                                                                    'Loading...',
                                                                                  ).maybeHandleOverflow(maxChars: 10),
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              children: [
                                                                                AutoSizeText(
                                                                                  valueOrDefault<String>(
                                                                                    '${valueOrDefault<String>(
                                                                                      valueOrDefault<String>(
                                                                                                TppbGroup.getLedgerAllCall.transactionType(
                                                                                                  everythingListViewGetLedgerAllResponse.jsonBody,
                                                                                                )?[ledgerEntriesAllIndex],
                                                                                                'Loading...',
                                                                                              ) ==
                                                                                              'Debit'
                                                                                          ? '-'
                                                                                          : '+',
                                                                                      '-',
                                                                                    )}${valueOrDefault<String>(
                                                                                      formatNumber(
                                                                                        TppbGroup.getLedgerAllCall.amount(
                                                                                          everythingListViewGetLedgerAllResponse.jsonBody,
                                                                                        )?[ledgerEntriesAllIndex],
                                                                                        formatType: FormatType.custom,
                                                                                        currency: '',
                                                                                        format: '#,###.##',
                                                                                        locale: '',
                                                                                      ),
                                                                                      'Loading...',
                                                                                    )}',
                                                                                    'Loading...',
                                                                                  ),
                                                                                  textAlign: TextAlign.end,
                                                                                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                                        color: (TppbGroup.getLedgerAllCall.transactionType(
                                                                                                  everythingListViewGetLedgerAllResponse.jsonBody,
                                                                                                )?[ledgerEntriesAllIndex]) ==
                                                                                                'Debit'
                                                                                            ? FlutterFlowTheme.of(context).error
                                                                                            : FlutterFlowTheme.of(context).tertiary,
                                                                                        fontSize: 24.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineMediumFamily),
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  'Running Total: ${valueOrDefault<String>(
                                                                                    formatNumber(
                                                                                      TppbGroup.getLedgerAllCall.runningTotal(
                                                                                        everythingListViewGetLedgerAllResponse.jsonBody,
                                                                                      )?[ledgerEntriesAllIndex],
                                                                                      formatType: FormatType.custom,
                                                                                      currency: '',
                                                                                      format: '#,###.##',
                                                                                      locale: '',
                                                                                    ),
                                                                                    'Loading...',
                                                                                  )}',
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ],
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
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                                FutureBuilder<ApiCallResponse>(
                                  future: TppbGroup.getLedgerThisMonthCall.call(
                                    authorizationToken:
                                        currentAuthenticationToken,
                                    householdId:
                                        _model.householdIdDropDownValue,
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewGetLedgerThisMonthResponse =
                                        snapshot.data!;
                                    return Builder(
                                      builder: (context) {
                                        final thisMonth =
                                            TppbGroup.getLedgerThisMonthCall
                                                    .ledgerEntriesList(
                                                      listViewGetLedgerThisMonthResponse
                                                          .jsonBody,
                                                    )
                                                    ?.map((e) => e)
                                                    .toList()
                                                    .toList() ??
                                                [];
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount: thisMonth.length,
                                          itemBuilder:
                                              (context, thisMonthIndex) {
                                            final thisMonthItem =
                                                thisMonth[thisMonthIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 8.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (valueOrDefault<String>(
                                                        TppbGroup
                                                            .getLedgerThisMonthCall
                                                            .type(
                                                          listViewGetLedgerThisMonthResponse
                                                              .jsonBody,
                                                        )?[thisMonthIndex],
                                                        'Loading...',
                                                      ) ==
                                                      'transaction') {
                                                    context.pushNamed(
                                                      'TransactionDetails',
                                                      queryParameters: {
                                                        'transactionId':
                                                            serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            TppbGroup
                                                                .getLedgerThisMonthCall
                                                                .transactionId(
                                                              listViewGetLedgerThisMonthResponse
                                                                  .jsonBody,
                                                            )?[thisMonthIndex],
                                                            'Loading...',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else if (valueOrDefault<
                                                          String>(
                                                        TppbGroup
                                                            .getLedgerThisMonthCall
                                                            .type(
                                                          listViewGetLedgerThisMonthResponse
                                                              .jsonBody,
                                                        )?[thisMonthIndex],
                                                        'Loading...',
                                                      ) ==
                                                      'bill') {
                                                    context.pushNamed(
                                                      'BillDetails',
                                                      queryParameters: {
                                                        'billId':
                                                            serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            TppbGroup
                                                                .getLedgerThisMonthCall
                                                                .billId(
                                                              listViewGetLedgerThisMonthResponse
                                                                  .jsonBody,
                                                            )?[thisMonthIndex],
                                                            'Loading...',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else if (valueOrDefault<
                                                          String>(
                                                        TppbGroup
                                                            .getLedgerThisMonthCall
                                                            .type(
                                                          listViewGetLedgerThisMonthResponse
                                                              .jsonBody,
                                                        )?[thisMonthIndex],
                                                        'Loading...',
                                                      ) ==
                                                      'income') {
                                                    context.pushNamed(
                                                      'IncomeDetails',
                                                      queryParameters: {
                                                        'incomeId':
                                                            serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            TppbGroup
                                                                .getLedgerThisMonthCall
                                                                .incomeId(
                                                              listViewGetLedgerThisMonthResponse
                                                                  .jsonBody,
                                                            )?[thisMonthIndex],
                                                            'Loading...',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: const Text('Error'),
                                                          content: const Text(
                                                              'Unable to view item.'),
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
                                                  }
                                                },
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 5.0,
                                                  shape: const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(12.0),
                                                      bottomRight:
                                                          Radius.circular(12.0),
                                                      topLeft:
                                                          Radius.circular(12.0),
                                                      topRight:
                                                          Radius.circular(12.0),
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: 300.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                12.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  8.0,
                                                                  16.0,
                                                                  8.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .check_box,
                                                                      color: (TppbGroup.getLedgerThisMonthCall.status(
                                                                                listViewGetLedgerThisMonthResponse.jsonBody,
                                                                              )?[thisMonthIndex]) ==
                                                                              false
                                                                          ? FlutterFlowTheme.of(context).alternate
                                                                          : FlutterFlowTheme.of(context).secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      _model.editLedgerEntryCleared = await TppbGroup
                                                                          .editLedgerEntryAsClearedCall
                                                                          .call(
                                                                        authorizationToken:
                                                                            currentAuthenticationToken,
                                                                        ledgerId: TppbGroup
                                                                            .getLedgerThisMonthCall
                                                                            .ledgerId(
                                                                          listViewGetLedgerThisMonthResponse
                                                                              .jsonBody,
                                                                        )?[thisMonthIndex],
                                                                      );
                                                                      if ((_model
                                                                              .editLedgerEntryCleared
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        setState(
                                                                            () {});
                                                                      } else {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              title: const Text('Error'),
                                                                              content: const Text('Failed to update Status of entry.'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                  child: const Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                      }

                                                                      setState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            TppbGroup.getLedgerThisMonthCall.description(
                                                                              listViewGetLedgerThisMonthResponse.jsonBody,
                                                                            )?[thisMonthIndex],
                                                                            'Loading...',
                                                                          ).maybeHandleOverflow(
                                                                            maxChars:
                                                                                28,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Wallet: ${valueOrDefault<String>(
                                                                                  TppbGroup.getLedgerThisMonthCall.paymentSourceSourceName(
                                                                                    listViewGetLedgerThisMonthResponse.jsonBody,
                                                                                  )?[thisMonthIndex],
                                                                                  'Loading...',
                                                                                )}'
                                                                                    .maybeHandleOverflow(
                                                                                  maxChars: 20,
                                                                                  replacement: '…',
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  TppbGroup.getLedgerThisMonthCall.transactionDate(
                                                                                    listViewGetLedgerThisMonthResponse.jsonBody,
                                                                                  )?[thisMonthIndex],
                                                                                  'Loading...',
                                                                                ).maybeHandleOverflow(maxChars: 10),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              AutoSizeText(
                                                                                '${valueOrDefault<String>(
                                                                                      TppbGroup.getLedgerThisMonthCall.transactionType(
                                                                                        listViewGetLedgerThisMonthResponse.jsonBody,
                                                                                      )?[thisMonthIndex],
                                                                                      'Loading...',
                                                                                    ) == 'Debit' ? '-' : '+'}${valueOrDefault<String>(
                                                                                  (TppbGroup.getLedgerThisMonthCall.amount(
                                                                                    listViewGetLedgerThisMonthResponse.jsonBody,
                                                                                  )?[thisMonthIndex])
                                                                                      ?.toString(),
                                                                                  'Loading...',
                                                                                )}',
                                                                                textAlign: TextAlign.end,
                                                                                style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                                      color: (TppbGroup.getLedgerThisMonthCall.transactionType(
                                                                                                listViewGetLedgerThisMonthResponse.jsonBody,
                                                                                              )?[thisMonthIndex]) ==
                                                                                              'Debit'
                                                                                          ? FlutterFlowTheme.of(context).error
                                                                                          : FlutterFlowTheme.of(context).tertiary,
                                                                                      fontSize: 24.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Running Total: ${valueOrDefault<String>(
                                                                                  (TppbGroup.getLedgerThisMonthCall.runningTotal(
                                                                                    listViewGetLedgerThisMonthResponse.jsonBody,
                                                                                  )?[thisMonthIndex])
                                                                                      ?.toString(),
                                                                                  'Loading...',
                                                                                )}',
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
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
                                    authorizationToken:
                                        currentAuthenticationToken,
                                    householdId:
                                        _model.householdIdDropDownValue,
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewGetLedgerClearedResponse =
                                        snapshot.data!;
                                    return Builder(
                                      builder: (context) {
                                        final cleared =
                                            TppbGroup.getLedgerClearedCall
                                                    .ledgerEntriesList(
                                                      listViewGetLedgerClearedResponse
                                                          .jsonBody,
                                                    )
                                                    ?.map((e) => e)
                                                    .toList()
                                                    .toList() ??
                                                [];
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount: cleared.length,
                                          itemBuilder: (context, clearedIndex) {
                                            final clearedItem =
                                                cleared[clearedIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 8.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((TppbGroup
                                                          .getLedgerClearedCall
                                                          .type(
                                                        listViewGetLedgerClearedResponse
                                                            .jsonBody,
                                                      )?[clearedIndex]) ==
                                                      'transaction') {
                                                    context.pushNamed(
                                                      'TransactionDetails',
                                                      queryParameters: {
                                                        'transactionId':
                                                            serializeParam(
                                                          TppbGroup
                                                              .getLedgerClearedCall
                                                              .transactionId(
                                                            listViewGetLedgerClearedResponse
                                                                .jsonBody,
                                                          )?[clearedIndex],
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else if ((TppbGroup
                                                          .getLedgerClearedCall
                                                          .type(
                                                        listViewGetLedgerClearedResponse
                                                            .jsonBody,
                                                      )?[clearedIndex]) ==
                                                      'bill') {
                                                    context.pushNamed(
                                                      'BillDetails',
                                                      queryParameters: {
                                                        'billId':
                                                            serializeParam(
                                                          TppbGroup
                                                              .getLedgerClearedCall
                                                              .billId(
                                                            listViewGetLedgerClearedResponse
                                                                .jsonBody,
                                                          )?[clearedIndex],
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else if ((TppbGroup
                                                          .getLedgerClearedCall
                                                          .type(
                                                        listViewGetLedgerClearedResponse
                                                            .jsonBody,
                                                      )?[clearedIndex]) ==
                                                      'income') {
                                                    context.pushNamed(
                                                      'IncomeDetails',
                                                      queryParameters: {
                                                        'incomeId':
                                                            serializeParam(
                                                          TppbGroup
                                                              .getLedgerClearedCall
                                                              .incomeId(
                                                            listViewGetLedgerClearedResponse
                                                                .jsonBody,
                                                          )?[clearedIndex],
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: const Text('Error'),
                                                          content: const Text(
                                                              'Unable to view item.'),
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
                                                  }
                                                },
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 5.0,
                                                  shape: const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(12.0),
                                                      bottomRight:
                                                          Radius.circular(12.0),
                                                      topLeft:
                                                          Radius.circular(12.0),
                                                      topRight:
                                                          Radius.circular(12.0),
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: 300.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                12.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  8.0,
                                                                  16.0,
                                                                  8.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .check_box,
                                                                      color: (TppbGroup.getLedgerClearedCall.status(
                                                                                listViewGetLedgerClearedResponse.jsonBody,
                                                                              )?[clearedIndex]) ==
                                                                              false
                                                                          ? FlutterFlowTheme.of(context).alternate
                                                                          : FlutterFlowTheme.of(context).secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      _model.editLedgerEntryClearedClear = await TppbGroup
                                                                          .editLedgerEntryAsClearedCall
                                                                          .call(
                                                                        authorizationToken:
                                                                            currentAuthenticationToken,
                                                                        ledgerId: TppbGroup
                                                                            .getLedgerClearedCall
                                                                            .ledgerId(
                                                                          listViewGetLedgerClearedResponse
                                                                              .jsonBody,
                                                                        )?[clearedIndex],
                                                                      );
                                                                      if ((_model
                                                                              .editLedgerEntryClearedClear
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        setState(
                                                                            () {});
                                                                      } else {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              title: const Text('Error'),
                                                                              content: const Text('Failed to update Status of entry.'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                  child: const Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                      }

                                                                      setState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            TppbGroup.getLedgerClearedCall.description(
                                                                              listViewGetLedgerClearedResponse.jsonBody,
                                                                            )?[clearedIndex],
                                                                            'Loading...',
                                                                          ).maybeHandleOverflow(
                                                                            maxChars:
                                                                                28,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Wallet: ${valueOrDefault<String>(
                                                                                  TppbGroup.getLedgerClearedCall.paymentSourceSourceName(
                                                                                    listViewGetLedgerClearedResponse.jsonBody,
                                                                                  )?[clearedIndex],
                                                                                  'Loading...',
                                                                                )}'
                                                                                    .maybeHandleOverflow(
                                                                                  maxChars: 20,
                                                                                  replacement: '…',
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  TppbGroup.getLedgerClearedCall.transactionDate(
                                                                                    listViewGetLedgerClearedResponse.jsonBody,
                                                                                  )?[clearedIndex],
                                                                                  'Loading...',
                                                                                ).maybeHandleOverflow(maxChars: 10),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              AutoSizeText(
                                                                                '${valueOrDefault<String>(
                                                                                      TppbGroup.getLedgerClearedCall.transactionType(
                                                                                        listViewGetLedgerClearedResponse.jsonBody,
                                                                                      )?[clearedIndex],
                                                                                      'Loading...',
                                                                                    ) == 'Debit' ? '-' : '+'}${valueOrDefault<String>(
                                                                                  (TppbGroup.getLedgerClearedCall.amount(
                                                                                    listViewGetLedgerClearedResponse.jsonBody,
                                                                                  )?[clearedIndex])
                                                                                      ?.toString(),
                                                                                  'Loading...',
                                                                                )}',
                                                                                textAlign: TextAlign.end,
                                                                                style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                                      color: (TppbGroup.getLedgerClearedCall.transactionType(
                                                                                                listViewGetLedgerClearedResponse.jsonBody,
                                                                                              )?[clearedIndex]) ==
                                                                                              'Debit'
                                                                                          ? FlutterFlowTheme.of(context).error
                                                                                          : FlutterFlowTheme.of(context).tertiary,
                                                                                      fontSize: 24.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Running Total: ${valueOrDefault<String>(
                                                                                  (TppbGroup.getLedgerClearedCall.runningTotal(
                                                                                    listViewGetLedgerClearedResponse.jsonBody,
                                                                                  )?[clearedIndex])
                                                                                      ?.toString(),
                                                                                  'Loading...',
                                                                                )}',
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
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
                              labelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleMediumFamily),
                                  ),
                              unselectedLabelStyle: const TextStyle(),
                              indicatorColor:
                                  FlutterFlowTheme.of(context).primary,
                              padding: const EdgeInsets.all(4.0),
                              tabs: [
                                Semantics(
                                  label: 'Load Everything',
                                  child: Tab(
                                    text: FFLocalizations.of(context).getText(
                                      '9lfzaqnh' /* Everything */,
                                    ),
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'pptwt2a3' /* This Month */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'qs0tglvt' /* Cleared */,
                                  ),
                                ),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [
                                  () async {
                                    setState(() {});
                                  },
                                  () async {},
                                  () async {}
                                ][i]();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ));
      },
    );
  }
}
