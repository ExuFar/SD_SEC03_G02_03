import '/flutter_flow/flutter_flow_util.dart';
import '/home_pages/nav_bar_admin/nav_bar_admin_widget.dart';
import 'homepage_admin_widget.dart' show HomepageAdminWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomepageAdminModel extends FlutterFlowModel<HomepageAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navBarAdmin component.
  late NavBarAdminModel navBarAdminModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {
    navBarAdminModel = createModel(context, () => NavBarAdminModel());
  }

  @override
  void dispose() {
    navBarAdminModel.dispose();
  }
}
