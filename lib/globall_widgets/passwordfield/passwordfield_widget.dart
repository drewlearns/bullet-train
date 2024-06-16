import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'passwordfield_model.dart';
export 'passwordfield_model.dart';

class PasswordfieldWidget extends StatefulWidget {
  const PasswordfieldWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<PasswordfieldWidget> createState() => _PasswordfieldWidgetState();
}

class _PasswordfieldWidgetState extends State<PasswordfieldWidget> {
  late PasswordfieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PasswordfieldModel());

    _model.passwordSignUpTextController ??= TextEditingController();
    _model.passwordSignUpFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
          child: SizedBox(
            width: double.infinity,
            child: TextFormField(
              controller: _model.passwordSignUpTextController,
              focusNode: _model.passwordSignUpFocusNode,
              onFieldSubmitted: (_) async {
                setState(() {
                  _model.passwordSignUpTextController?.text =
                      _model.passwordSignUpTextController.text;
                  _model.passwordSignUpTextController?.selection =
                      TextSelection.collapsed(
                          offset:
                              _model.passwordSignUpTextController!.text.length);
                });
              },
              autofocus: true,
              autofillHints: const [AutofillHints.password],
              obscureText: !_model.passwordSignUpVisibility,
              decoration: InputDecoration(
                labelText: FFLocalizations.of(context).getText(
                  's9udb7tj' /* New Password */,
                ),
                labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).labelLargeFamily),
                    ),
                hintText: FFLocalizations.of(context).getText(
                  'frcgmghu' /* 1 capital letter, 1 special ch... */,
                ),
                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodySmallFamily),
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                suffixIcon: InkWell(
                  onTap: () => setState(
                    () => _model.passwordSignUpVisibility =
                        !_model.passwordSignUpVisibility,
                  ),
                  focusNode: FocusNode(skipTraversal: true),
                  child: Icon(
                    _model.passwordSignUpVisibility
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyLargeFamily),
                  ),
              cursorColor: FlutterFlowTheme.of(context).primary,
              validator: _model.passwordSignUpTextControllerValidator
                  .asValidator(context),
            ),
          ),
        ),
      ],
    );
  }
}
