import '/flutter_flow/flutter_flow_util.dart';
import 'give_feedback_widget.dart' show GiveFeedbackWidget;
import 'package:flutter/material.dart';

class GiveFeedbackModel extends FlutterFlowModel<GiveFeedbackWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
