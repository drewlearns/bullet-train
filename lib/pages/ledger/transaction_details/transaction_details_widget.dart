import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'transaction_details_model.dart';
export 'transaction_details_model.dart';

class TransactionDetailsWidget extends StatefulWidget {
  const TransactionDetailsWidget({
    super.key,
    required this.transactionId,
    required this.billId,
    required this.incomeId,
    required this.transaction,
  });

  final String? transactionId;
  final String? billId;
  final String? incomeId;
  final String? transaction;

  @override
  State<TransactionDetailsWidget> createState() =>
      _TransactionDetailsWidgetState();
}

class _TransactionDetailsWidgetState extends State<TransactionDetailsWidget> {
  late TransactionDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if ((widget.transactionId != '') && (widget.transactionId != 'null')) {
        _model.getTransactionOutput = await TppbGroup.getTransactionCall.call(
          authorizationToken: currentAuthenticationToken,
          transactionId: widget.transactionId,
        );
        if ((_model.getTransactionOutput?.succeeded ?? true) == false) {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Success'),
                content: Text(TppbGroup.getTransactionCall.message(
                  (_model.getTransactionOutput?.jsonBody ?? ''),
                )!),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
          _model.getFilePathOutput = await TppbGroup.getFilePathCall.call(
            authorizationToken: currentAuthenticationToken,
            transactionId: widget.transactionId,
          );
          if ((_model.getFilePathOutput?.succeeded ?? true)) {
            await Clipboard.setData(ClipboardData(
                text: TppbGroup.getFilePathCall.url(
              (_model.getFilePathOutput?.jsonBody ?? ''),
            )!));
          } else {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: const Text('Error'),
                  content: Text(
                      'There was an error getting the attachment for this transaction. ${TppbGroup.getFilePathCall.message(
                    (_model.getFilePathOutput?.jsonBody ?? ''),
                  )}'),
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
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Error'),
                content: Text(TppbGroup.getTransactionCall.message(
                  (_model.getTransactionOutput?.jsonBody ?? ''),
                )!),
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
      } else if ((widget.billId != '') && (widget.billId != 'null')) {
        _model.getBillOutput = await TppbGroup.getBillCall.call(
          authorizationToken: currentAuthenticationToken,
          billId: widget.billId,
        );
        if ((_model.getBillOutput?.succeeded ?? true) == false) {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Success'),
                content: Text(TppbGroup.getBillCall.message(
                  (_model.getBillOutput?.jsonBody ?? ''),
                )!),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Error'),
                content: Text(TppbGroup.getBillCall.message(
                  (_model.getBillOutput?.jsonBody ?? ''),
                )!),
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
      } else if ((widget.incomeId != '') && (widget.incomeId != 'null')) {
        _model.getIncomeOutput = await TppbGroup.getIncomeCall.call(
          authorizationToken: currentAuthenticationToken,
          incomeId: widget.incomeId,
        );
        if ((_model.getIncomeOutput?.succeeded ?? true) == false) {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Success!'),
                content: Text(TppbGroup.getIncomeCall.message(
                  (_model.getIncomeOutput?.jsonBody ?? ''),
                )!),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Error'),
                content: Text(TppbGroup.getIncomeCall.message(
                  (_model.getIncomeOutput?.jsonBody ?? ''),
                )!),
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
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: const Text('Ope, something went terribly wrong'),
              content: const Text(
                  'This transaction is neither a transaction, a bill, or an income.'),
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
    });

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
        title: 'TransactionDetails',
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
                  title: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.transaction,
                          'Transaction Details',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                      ),
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
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (TppbGroup.getFilePathCall.url(
                              (_model.getFilePathOutput?.jsonBody ?? ''),
                            ) !=
                            null &&
                        TppbGroup.getFilePathCall.url(
                              (_model.getFilePathOutput?.jsonBody ?? ''),
                            ) !=
                            '')
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            TppbGroup.getFilePathCall.url(
                              (_model.getFilePathOutput?.jsonBody ?? ''),
                            )!,
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    if (TppbGroup.getFilePathCall.url(
                              (_model.getFilePathOutput?.jsonBody ?? ''),
                            ) !=
                            null &&
                        TppbGroup.getFilePathCall.url(
                              (_model.getFilePathOutput?.jsonBody ?? ''),
                            ) !=
                            '')
                      Text(
                        FFLocalizations.of(context).getText(
                          '4y9mnn2i' /* Link to Receipt Image is copie... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
