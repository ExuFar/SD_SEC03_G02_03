import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_picture_widget.dart' show EditProfilePictureWidget;
import 'package:flutter/material.dart';

class EditProfilePictureModel
    extends FlutterFlowModel<EditProfilePictureWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
