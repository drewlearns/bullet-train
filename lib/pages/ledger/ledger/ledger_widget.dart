import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/ledger/filter/filter_widget.dart';
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

class _LedgerWidgetState extends State<LedgerWidget> {
  late LedgerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LedgerModel());

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
        page: 1,
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
                  actions: [
                    FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.search_outlined,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('QueryTransactions');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.filter_alt,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        _model.filterButtonPressed =
                            !_model.filterButtonPressed;
                        setState(() {});
                      },
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.add,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('AddTransaction');
                      },
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '37wyhkz3' /* Ledger */,
                      ),
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineLargeFamily,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineLargeFamily),
                              ),
                    ),
                    centerTitle: true,
                    expandedTitleScale: 1.0,
                  ),
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
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  16.0),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .householdIdDropDownValueController ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.householdIdDropDownValue ??=
                                                              TppbGroup
                                                                  .getHouseholdCall
                                                                  .householdId(
                                                                    ledgerGetHouseholdResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.first,
                                                        ),
                                                        options: List<
                                                                String>.from(
                                                            TppbGroup
                                                                .getHouseholdCall
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
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .householdIdDropDownValue =
                                                                val),
                                                        width: 300.0,
                                                        height: 56.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '8rb6mvvv' /* Please select... */,
                                                        ),
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        fillColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        elevation: 5.0,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        borderWidth: 2.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        hidesUnderline: true,
                                                        isOverButton: true,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'oadh8i46' /* Select Household */,
                                                        ),
                                                        labelTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                                'rcl2s0p2' /* View Spending Habits */,
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
                              if (_model.filterButtonPressed)
                                wrapWithModel(
                                  model: _model.filterModel,
                                  updateCallback: () => setState(() {}),
                                  child: const FilterWidget(),
                                ),
                              if (_model.householdIdDropDownValue != null &&
                                  _model.householdIdDropDownValue != '')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          't9s92rrf' /* Total Spent This month:  */,
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
                                        return Semantics(
                                          label:
                                              'Click to view details about safe to spend',
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
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
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'lxij45w4' /* Safe To Spend:  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily),
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    formatNumber(
                                                      TppbGroup
                                                          .getSafeToSpendCall
                                                          .safeToSpend(
                                                        rowGetSafeToSpendResponse
                                                            .jsonBody,
                                                      ),
                                                      formatType:
                                                          FormatType.custom,
                                                      currency: '',
                                                      format: '#,###.##',
                                                      locale: '',
                                                    ),
                                                    'Loading...',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                              ],
                                            ),
                                          ),
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
                    child: FutureBuilder<ApiCallResponse>(
                      future: (_model.apiRequestCompleter ??=
                              Completer<ApiCallResponse>()
                                ..complete(TppbGroup.getLedgerAllCall.call(
                                  authorizationToken:
                                      currentAuthenticationToken,
                                  transactionName:
                                      _model.filterModel.textController.text,
                                  householdId: _model.householdIdDropDownValue,
                                  clearedOnly: _model.filterModel.switchValue1,
                                  currentMonthOnly:
                                      _model.filterModel.switchValue2,
                                  minAmount: _model.filterModel.sliderValue1,
                                  maxAmount: _model.filterModel.sliderValue2,
                                  pageSize: 100,
                                  year: _model.filterModel.dropDownValue2,
                                  month: _model.filterModel.dropDownValue1,
                                  page: 1,
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final listViewGetLedgerAllResponse = snapshot.data!;
                        return Builder(
                          builder: (context) {
                            final ledgerlistItems = TppbGroup.getLedgerAllCall
                                    .list(
                                      listViewGetLedgerAllResponse.jsonBody,
                                    )
                                    ?.map((e) => e)
                                    .toList()
                                    .toList() ??
                                [];
                            return RefreshIndicator(
                              color: FlutterFlowTheme.of(context).primary,
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              strokeWidth: 5.0,
                              onRefresh: () async {
                                setState(
                                    () => _model.apiRequestCompleter = null);
                                await _model.waitForApiRequestCompleted();
                              },
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: ledgerlistItems.length,
                                itemBuilder: (context, ledgerlistItemsIndex) {
                                  final ledgerlistItemsItem =
                                      ledgerlistItems[ledgerlistItemsIndex];
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            child: Semantics(
                                              label:
                                                  'Click to view ledger entry details',
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((TppbGroup
                                                              .getLedgerAllCall
                                                              .type(
                                                        listViewGetLedgerAllResponse
                                                            .jsonBody,
                                                      )?[
                                                          ledgerlistItemsIndex]) ==
                                                      'transaction') {
                                                    context.pushNamed(
                                                      'TransactionDetails',
                                                      queryParameters: {
                                                        'transactionId':
                                                            serializeParam(
                                                          TppbGroup
                                                              .getLedgerAllCall
                                                              .transactionId(
                                                            listViewGetLedgerAllResponse
                                                                .jsonBody,
                                                          )?[ledgerlistItemsIndex],
                                                          ParamType.String,
                                                        ),
                                                        'householdId':
                                                            serializeParam(
                                                          _model
                                                              .householdIdDropDownValue,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else if ((TppbGroup
                                                              .getLedgerAllCall
                                                              .type(
                                                        listViewGetLedgerAllResponse
                                                            .jsonBody,
                                                      )?[
                                                          ledgerlistItemsIndex]) ==
                                                      'bill') {
                                                    context.pushNamed(
                                                      'BillDetails',
                                                      queryParameters: {
                                                        'billId':
                                                            serializeParam(
                                                          TppbGroup
                                                              .getLedgerAllCall
                                                              .billId(
                                                            listViewGetLedgerAllResponse
                                                                .jsonBody,
                                                          )?[ledgerlistItemsIndex],
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else if ((TppbGroup
                                                          .getLedgerAllCall
                                                          .type(
                                                        listViewGetLedgerAllResponse
                                                            .jsonBody,
                                                      )?[ledgerlistItemsIndex]) ==
                                                      'income') {
                                                    context.pushNamed(
                                                      'IncomeDetails',
                                                      queryParameters: {
                                                        'incomeId':
                                                            serializeParam(
                                                          TppbGroup
                                                              .getLedgerAllCall
                                                              .incomeId(
                                                            listViewGetLedgerAllResponse
                                                                .jsonBody,
                                                          )?[ledgerlistItemsIndex],
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
                                                              'Cannot Edit Entry - This is a system generated entry.'),
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
                                                child: Container(
                                                  width: 361.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 4.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          4.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      TppbGroup
                                                                          .getLedgerAllCall
                                                                          .description(
                                                                        listViewGetLedgerAllResponse
                                                                            .jsonBody,
                                                                      )?[ledgerlistItemsIndex],
                                                                      'Loading...',
                                                                    ).maybeHandleOverflow(
                                                                      maxChars:
                                                                          30,
                                                                      replacement:
                                                                          '…',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).labelLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
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
                                                                    color: (TppbGroup.getLedgerAllCall
                                                                                    .status(
                                                                              listViewGetLedgerAllResponse.jsonBody,
                                                                            )?[
                                                                                ledgerlistItemsIndex]) ==
                                                                            false
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .alternate
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    _model.editLedgerEntryAsClearedOutput =
                                                                        await TppbGroup
                                                                            .editLedgerEntryAsClearedCall
                                                                            .call(
                                                                      authorizationToken:
                                                                          currentAuthenticationToken,
                                                                      ledgerId: TppbGroup
                                                                          .getLedgerAllCall
                                                                          .ledgerId(
                                                                        listViewGetLedgerAllResponse
                                                                            .jsonBody,
                                                                      )?[ledgerlistItemsIndex],
                                                                    );

                                                                    setState(
                                                                        () {});

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
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Wallet: ${valueOrDefault<String>(
                                                                          TppbGroup
                                                                              .getLedgerAllCall
                                                                              .paymentSourceName(
                                                                            listViewGetLedgerAllResponse.jsonBody,
                                                                          )?[ledgerlistItemsIndex],
                                                                          'loading...',
                                                                        )}'
                                                                            .maybeHandleOverflow(
                                                                          maxChars:
                                                                              20,
                                                                          replacement:
                                                                              '…',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Category: ${TppbGroup.getLedgerAllCall.category(
                                                                          listViewGetLedgerAllResponse
                                                                              .jsonBody,
                                                                        )?[ledgerlistItemsIndex]}'
                                                                            .maybeHandleOverflow(
                                                                          maxChars:
                                                                              20,
                                                                          replacement:
                                                                              '…',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          TppbGroup
                                                                              .getLedgerAllCall
                                                                              .transactionDate(
                                                                            listViewGetLedgerAllResponse.jsonBody,
                                                                          )?[ledgerlistItemsIndex],
                                                                          'Loading...',
                                                                        ).maybeHandleOverflow(
                                                                            maxChars:
                                                                                16),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                          valueOrDefault<String>(
                                                                                TppbGroup.getLedgerAllCall.transactionType(
                                                                                  listViewGetLedgerAllResponse.jsonBody,
                                                                                )?[ledgerlistItemsIndex],
                                                                                'Loading...',
                                                                              ) == 'Debit' ? '-' : '+',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: (TppbGroup.getLedgerAllCall.transactionType(
                                                                                          listViewGetLedgerAllResponse.jsonBody,
                                                                                        )?[ledgerlistItemsIndex]) ==
                                                                                        'Debit'
                                                                                    ? FlutterFlowTheme.of(context).error
                                                                                    : FlutterFlowTheme.of(context).tertiary,
                                                                                fontSize: 21.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                              ),
                                                                        ),
                                                                        AutoSizeText(
                                                                          formatNumber(
                                                                            TppbGroup.getLedgerAllCall.amount(
                                                                              listViewGetLedgerAllResponse.jsonBody,
                                                                            )![ledgerlistItemsIndex],
                                                                            formatType:
                                                                                FormatType.custom,
                                                                            currency:
                                                                                '',
                                                                            format:
                                                                                '#,###.##',
                                                                            locale:
                                                                                '',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: (TppbGroup.getLedgerAllCall.transactionType(
                                                                                          listViewGetLedgerAllResponse.jsonBody,
                                                                                        )?[ledgerlistItemsIndex]) ==
                                                                                        'Debit'
                                                                                    ? FlutterFlowTheme.of(context).error
                                                                                    : FlutterFlowTheme.of(context).tertiary,
                                                                                fontSize: 21.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                              ),
                                                                          minFontSize:
                                                                              22.0,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                          formatNumber(
                                                                            TppbGroup.getLedgerAllCall.runningTotal(
                                                                              listViewGetLedgerAllResponse.jsonBody,
                                                                            )![ledgerlistItemsIndex],
                                                                            formatType:
                                                                                FormatType.custom,
                                                                            currency:
                                                                                '',
                                                                            format:
                                                                                '#,###.##',
                                                                            locale:
                                                                                '',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
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
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
