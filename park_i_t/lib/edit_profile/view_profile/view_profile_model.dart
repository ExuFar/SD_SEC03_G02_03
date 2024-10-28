import '/flutter_flow/flutter_flow_util.dart';
import 'view_profile_widget.dart' show ViewProfileWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ViewProfileModel extends FlutterFlowModel<ViewProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  final yourNameMask2 = MaskTextInputFormatter(mask: '###-#### ####');
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameTextController3;
  String? Function(BuildContext, String?)? yourNameTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameTextController3?.dispose();
  }
}
