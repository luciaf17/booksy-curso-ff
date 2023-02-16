import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ValorarLibroModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TextReview widget.
  TextEditingController? textReviewController;
  String? Function(BuildContext, String?)? textReviewControllerValidator;
  // State field(s) for BookRating widget.
  double? bookRatingValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textReviewController?.dispose();
  }

  /// Additional helper methods are added here.

}
