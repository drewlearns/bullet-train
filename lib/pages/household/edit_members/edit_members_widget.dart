import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_members_model.dart';
export 'edit_members_model.dart';

class EditMembersWidget extends StatefulWidget {
  const EditMembersWidget({
    super.key,
    required this.householdIds,
    required this.householdNames,
  });

  final List<String>? householdIds;
  final List<String>? householdNames;

  @override
  State<EditMembersWidget> createState() => _EditMembersWidgetState();
}

class _EditMembersWidgetState extends State<EditMembersWidget> {
  late EditMembersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditMembersModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selectedMembersDelete = false;
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
    context.watch<FFAppState>();

    return Title(
        title: 'Edit Members',
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
                        'vea6crhu' /* Edit Members */,
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
              ),
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Semantics(
                              label: 'Select a household to view members',
                              child: FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(
                                  _model.dropDownValue ??= '',
                                ),
                                options: List<String>.from(
                                    widget.householdIds!.sortedList((e) => e)),
                                optionLabels:
                                    widget.householdNames!.sortedList((e) => e),
                                onChanged: (val) async {
                                  setState(() => _model.dropDownValue = val);
                                  _model.apiResult37n = await TppbGroup
                                      .getHouseholdMembersCall
                                      .call(
                                    authorizationToken:
                                        FFAppState().authorizationToken,
                                    householdId: _model.dropDownValue,
                                  );
                                  if ((_model.apiResult37n?.succeeded ??
                                      true)) {
                                    setState(() {});
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Error'),
                                          content: Text(TppbGroup
                                              .getHouseholdMembersCall
                                              .message(
                                            (_model.apiResult37n?.jsonBody ??
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
                                width: 300.0,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
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
                                hintText: FFLocalizations.of(context).getText(
                                  'rbuy9zv2' /* Please select... */,
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 5.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                                labelText: FFLocalizations.of(context).getText(
                                  'thrxst7n' /* Select Household */,
                                ),
                                labelTextStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).primary,
                        icon: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'AddInvite',
                            queryParameters: {
                              'householdId': serializeParam(
                                _model.dropDownValue,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                      ),
                    ],
                  ),
                  if (_model.dropDownValue != null &&
                      _model.dropDownValue != '')
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final listOfMembers =
                                TppbGroup.getHouseholdMembersCall
                                        .userEmail(
                                          (_model.apiResult37n?.jsonBody ?? ''),
                                        )
                                        ?.toList() ??
                                    [];
                            return Semantics(
                              label:
                                  'Paginated table view of all members for the selected household',
                              child: FlutterFlowDataTable<String>(
                                controller: _model.paginatedDataTableController,
                                data: listOfMembers,
                                numRows: TppbGroup.getHouseholdMembersCall
                                    .userEmail(
                                      (_model.apiResult37n?.jsonBody ?? ''),
                                    )
                                    ?.length,
                                columnsBuilder: (onSortChanged) => [
                                  DataColumn2(
                                    label: DefaultTextStyle.merge(
                                      softWrap: true,
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'v2p6ljb1' /* Name */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                  DataColumn2(
                                    label: DefaultTextStyle.merge(
                                      softWrap: true,
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'h8hl93yq' /* Email */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                  DataColumn2(
                                    label: DefaultTextStyle.merge(
                                      softWrap: true,
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'y3cy5jhy' /* Joined */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                  DataColumn2(
                                    label: DefaultTextStyle.merge(
                                      softWrap: true,
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'qpct2gd7' /* Action */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                                dataRowBuilder: (listOfMembersItem,
                                        listOfMembersIndex,
                                        selected,
                                        onSelectChanged) =>
                                    DataRow(
                                  color: MaterialStateProperty.all(
                                    listOfMembersIndex % 2 == 0
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                  ),
                                  cells: [
                                    Text(
                                      '${TppbGroup.getHouseholdMembersCall.userFirstName(
                                                (_model.apiResult37n
                                                        ?.jsonBody ??
                                                    ''),
                                              )?.unique((e) => e).first} ${TppbGroup.getHouseholdMembersCall.userLastName(
                                                (_model.apiResult37n
                                                        ?.jsonBody ??
                                                    ''),
                                              )?.unique((e) => e).first}'
                                          .maybeHandleOverflow(
                                        maxChars: 15,
                                        replacement: '…',
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        TppbGroup.getHouseholdMembersCall
                                            .userEmail(
                                          (_model.apiResult37n?.jsonBody ?? ''),
                                        )?[listOfMembersIndex],
                                        'n/a',
                                      ).maybeHandleOverflow(
                                        maxChars: 15,
                                        replacement: '…',
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontStyle: FontStyle.italic,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        TppbGroup.getHouseholdMembersCall
                                            .userJoinedDate(
                                              (_model.apiResult37n?.jsonBody ??
                                                  ''),
                                            )
                                            ?.first,
                                        'n/a',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.delete_forever,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        currentUserLocationValue =
                                            await getCurrentUserLocation(
                                                defaultLocation:
                                                    const LatLng(0.0, 0.0));
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          'Please Confirm'),
                                                      content: const Text(
                                                          'Are you sure you want to delete this member?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: const Text('Cancel'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              const Text('Confirm'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        _model.deleteMemberFromHouseholdOutput =
                                            await TppbGroup
                                                .deleteMemberFromHouseholdCall
                                                .call(
                                          authorizationToken:
                                              FFAppState().authorizationToken,
                                          householdId: _model.dropDownValue,
                                          memberUuid: TppbGroup
                                              .getHouseholdMembersCall
                                              .userEmail(
                                            (_model.apiResult37n?.jsonBody ??
                                                ''),
                                          )?[listOfMembersIndex],
                                          ipAddress: currentUserLocationValue
                                              ?.toString(),
                                          deviceDetails: '',
                                        );
                                        if ((_model
                                                .deleteMemberFromHouseholdOutput
                                                ?.succeeded ??
                                            true)) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: const Text('Success!'),
                                                content: Text(TppbGroup
                                                    .deleteMemberFromHouseholdCall
                                                    .message(
                                                  (_model.deleteMemberFromHouseholdOutput
                                                          ?.jsonBody ??
                                                      ''),
                                                )!),
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
                                          setState(() {});
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: const Text('Failure'),
                                                content: Text(TppbGroup
                                                    .deleteMemberFromHouseholdCall
                                                    .message(
                                                  (_model.deleteMemberFromHouseholdOutput
                                                          ?.jsonBody ??
                                                      ''),
                                                )!),
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

                                        setState(() {});
                                      },
                                    ),
                                  ].map((c) => DataCell(c)).toList(),
                                ),
                                onPageChanged: (currentRowIndex) async {
                                  _model.selectedMembersDelete = null;
                                },
                                paginated: true,
                                selectable: false,
                                hidePaginator: false,
                                showFirstLastButtons: false,
                                headingRowHeight: 40.0,
                                dataRowHeight: 48.0,
                                columnSpacing: 10.0,
                                headingRowColor:
                                    FlutterFlowTheme.of(context).primary,
                                borderRadius: BorderRadius.circular(12.0),
                                addHorizontalDivider: false,
                                addTopAndBottomDivider: false,
                                hideDefaultHorizontalDivider: false,
                                addVerticalDivider: false,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
