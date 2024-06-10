import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ledger_entry_model.dart';
export 'ledger_entry_model.dart';

class LedgerEntryWidget extends StatefulWidget {
  const LedgerEntryWidget({
    super.key,
    required this.name,
    required this.paymentSource,
    required this.date,
    required this.amount,
    required this.transactionType,
    required this.type,
    required this.billId,
    required this.incomeId,
    required this.transactionId,
    required this.status,
    required this.runningTotal,
    required this.ledgerId,
  });

  final String? name;
  final String? paymentSource;
  final String? date;
  final double? amount;
  final String? transactionType;
  final String? type;
  final String? billId;
  final String? incomeId;
  final String? transactionId;
  final bool? status;
  final double? runningTotal;
  final String? ledgerId;

  @override
  State<LedgerEntryWidget> createState() => _LedgerEntryWidgetState();
}

class _LedgerEntryWidgetState extends State<LedgerEntryWidget> {
  late LedgerEntryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LedgerEntryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 5.0),
            child: Container(
              width: 300.0,
              height: 90.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Semantics(
                      label: 'View ledger entry details',
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (widget.type == 'bill') {
                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed(
                              'BillDetails',
                              queryParameters: {
                                'billId': serializeParam(
                                  widget.billId,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else if (widget.type == 'income') {
                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed(
                              'IncomeDetails',
                              queryParameters: {
                                'incomeId': serializeParam(
                                  widget.incomeId,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else if (widget.type == 'transaction') {
                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed(
                              'TransactionDetails',
                              queryParameters: {
                                'transactionId': serializeParam(
                                  valueOrDefault<String>(
                                    widget.transactionId,
                                    'No Transaction Id Value',
                                  ),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else if (widget.type == 'Loading...') {
                            context.pushNamed('Ledger');
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text(
                                      'Ope, something went terribly wrong!'),
                                  content: const Text(
                                      'The transaction type doesn\'t exist for this entry. Please contact support for help.'),
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
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      widget.name,
                                      'Loading...',
                                    ).maybeHandleOverflow(
                                      maxChars: 30,
                                      replacement: '…',
                                    ),
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily),
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '4knaveeg' /* Wallet:  */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        widget.paymentSource!
                                            .maybeHandleOverflow(
                                          maxChars: 16,
                                          replacement: '…',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    widget.date!
                                        .maybeHandleOverflow(maxChars: 10),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: Text(
                                    formatNumber(
                                      widget.amount,
                                      formatType: FormatType.custom,
                                      currency: '',
                                      format: '#,###.##',
                                      locale: '',
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily),
                                        ),
                                  ),
                                ),
                                Text(
                                  widget.transactionType!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Semantics(
                                label:
                                    'Toggle status of this entry as cleared of not',
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.editLedgerEntryAsClearedOutput =
                                        await TppbGroup
                                            .editLedgerEntryAsClearedCall
                                            .call(
                                      authorizationToken:
                                          currentAuthenticationToken,
                                      ledgerId: widget.ledgerId,
                                    );
                                    if ((_model.editLedgerEntryAsClearedOutput
                                            ?.succeeded ??
                                        true)) {
                                      _model.updatePage(() {});
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text(
                                                'Error Updating the status of this Ledger Entry'),
                                            content: Text(TppbGroup
                                                .editLedgerEntryAsClearedCall
                                                .message(
                                              (_model.editLedgerEntryAsClearedOutput
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

                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.check_box,
                                    color: widget.status == true
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Running Total: ${valueOrDefault<String>(
                                formatNumber(
                                  widget.runningTotal,
                                  formatType: FormatType.custom,
                                  currency: '',
                                  format: '#,###.##',
                                  locale: '',
                                ),
                                'Loading...',
                              )}',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
