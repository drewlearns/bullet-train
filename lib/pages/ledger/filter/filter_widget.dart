import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'filter_model.dart';
export 'filter_model.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  late FilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.switchValue1 = false;
    _model.switchValue2 = true;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'lnds6s8r' /* Filter Options */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).displaySmallFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).displaySmallFamily),
                      ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 3.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'ocldaj3l' /* Min Amount */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
              Slider(
                activeColor: FlutterFlowTheme.of(context).primary,
                inactiveColor: FlutterFlowTheme.of(context).accent2,
                min: 0.0,
                max: 10000.0,
                value: _model.sliderValue1 ??= 0.0,
                onChanged: (newValue) {
                  newValue = double.parse(newValue.toStringAsFixed(4));
                  setState(() => _model.sliderValue1 = newValue);
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '7gd68aub' /* Max Amount */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
              Slider(
                activeColor: FlutterFlowTheme.of(context).primary,
                inactiveColor: FlutterFlowTheme.of(context).accent2,
                min: 0.0,
                max: 1000000.0,
                value: _model.sliderValue2 ??= 100000.0,
                onChanged: (newValue) {
                  newValue = double.parse(newValue.toStringAsFixed(4));
                  setState(() => _model.sliderValue2 = newValue);
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'hk22ysw5' /* Search */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
              TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyLargeFamily),
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyLargeFamily),
                    ),
                validator: _model.textControllerValidator.asValidator(context),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '00235yee' /* Cleared Only */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
              Switch(
                value: _model.switchValue1!,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue1 = newValue);
                },
                activeColor: FlutterFlowTheme.of(context).primaryText,
                activeTrackColor: FlutterFlowTheme.of(context).primary,
                inactiveTrackColor: FlutterFlowTheme.of(context).primary,
                inactiveThumbColor: FlutterFlowTheme.of(context).primaryText,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'jrn120to' /* Current Month Only */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
              Switch(
                value: _model.switchValue2!,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue2 = newValue);
                },
                activeColor: FlutterFlowTheme.of(context).primaryText,
                activeTrackColor: FlutterFlowTheme.of(context).primary,
                inactiveTrackColor: FlutterFlowTheme.of(context).primary,
                inactiveThumbColor: FlutterFlowTheme.of(context).primaryText,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '9io7dr53' /* Month */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'x9g489v3' /* Year */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController1 ??=
                          FormFieldController<String>(
                        _model.dropDownValue1 ??= '',
                      ),
                      options: List<String>.from([
                        'Option 1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9',
                        '10',
                        '11',
                        '12'
                      ]),
                      optionLabels: [
                        FFLocalizations.of(context).getText(
                          '9exxivka' /* 1 Januaary */,
                        ),
                        FFLocalizations.of(context).getText(
                          'qdpwv0o8' /* 2 February */,
                        ),
                        FFLocalizations.of(context).getText(
                          '3j8sa8q7' /* 3 March */,
                        ),
                        FFLocalizations.of(context).getText(
                          'uo3tjbua' /* 4 April */,
                        ),
                        FFLocalizations.of(context).getText(
                          '74c1ftf6' /* 5 May */,
                        ),
                        FFLocalizations.of(context).getText(
                          'vkaq9obj' /* 6 June */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ogbvnvdq' /* 7 July */,
                        ),
                        FFLocalizations.of(context).getText(
                          '91yfly7k' /* 8 August */,
                        ),
                        FFLocalizations.of(context).getText(
                          '8hhg0wz0' /* 9 September */,
                        ),
                        FFLocalizations.of(context).getText(
                          '47zi6bj8' /* 10 October */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ucltki44' /* 11 November */,
                        ),
                        FFLocalizations.of(context).getText(
                          'czhv9zmf' /* 12 December */,
                        )
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue1 = val),
                      width: 300.0,
                      height: 56.0,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      hintText: FFLocalizations.of(context).getText(
                        'gfyxrxzd' /* Please select... */,
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
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Expanded(
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
                          'gmej8zwc' /* 2024 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'lhfdxzcp' /* 2025 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'qikyu60m' /* 2026 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ycbjduzc' /* 2027 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ldearaqy' /* 2028 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'h1x6slnz' /* 2029 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'do0qflx6' /* 2030 */,
                        ),
                        FFLocalizations.of(context).getText(
                          '13lm3f23' /* 2031 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'me6ny26p' /* 2032 */,
                        ),
                        FFLocalizations.of(context).getText(
                          '6epc44p7' /* 2033 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'c05i2s1u' /* 2034 */,
                        ),
                        FFLocalizations.of(context).getText(
                          '25hp7iif' /* 2035 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'wba2ow8e' /* 2036 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ftq89sks' /* 2037 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'yrd1r451' /* 2038 */,
                        ),
                        FFLocalizations.of(context).getText(
                          '4y1mkb8c' /* 2039 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'biqk08s5' /* 2040 */,
                        ),
                        FFLocalizations.of(context).getText(
                          '4iolkd0i' /* 2041 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'il7ar4ba' /* 2042 */,
                        ),
                        FFLocalizations.of(context).getText(
                          '5haclh3b' /* 2043 */,
                        ),
                        FFLocalizations.of(context).getText(
                          '9nk1hrrb' /* 2044 */,
                        ),
                        FFLocalizations.of(context).getText(
                          '97ppqsp6' /* 2045 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'uhszsqd8' /* 2046 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'yg47rckn' /* 2047 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'rrz6ys9z' /* 2048 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'tyz0c65p' /* 2049 */,
                        ),
                        FFLocalizations.of(context).getText(
                          '8g4cpr3m' /* 2050 */,
                        )
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue2 = val),
                      width: 300.0,
                      height: 56.0,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      hintText: FFLocalizations.of(context).getText(
                        'rbuy9zv2' /* Please select... */,
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
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
