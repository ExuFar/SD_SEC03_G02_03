import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_new_widget.dart' show SignUpNewWidget;
import 'package:flutter/material.dart';

class SignUpNewModel extends FlutterFlowModel<SignUpNewWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[\\W_])[A-Za-z\\d\\W_]{8,10}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for repassword widget.
  FocusNode? repasswordFocusNode;
  TextEditingController? repasswordTextController;
  late bool repasswordVisibility;
  String? Function(BuildContext, String?)? repasswordTextControllerValidator;
  String? _repasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[\\W_])[A-Za-z\\d\\W_]{8,10}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    repasswordVisibility = false;
    repasswordTextControllerValidator = _repasswordTextControllerValidator;
  }

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    repasswordFocusNode?.dispose();
    repasswordTextController?.dispose();
  }
}
