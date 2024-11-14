import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_customer_widget.dart' show HomepageCustomerWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomepageCustomerModel extends FlutterFlowModel<HomepageCustomerWidget> {
  ///  Local state fields for this page.

  int? total = 0;

  DateTime? timeIn;

  DateTime? timeOut;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 18;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
