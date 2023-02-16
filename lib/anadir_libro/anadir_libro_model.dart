import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AnadirLibroModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  bool isMediaUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isMediaUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for inputTitulo widget.
  TextEditingController? inputTituloController;
  String? Function(BuildContext, String?)? inputTituloControllerValidator;
  // State field(s) for inputAutor widget.
  TextEditingController? inputAutorController;
  String? Function(BuildContext, String?)? inputAutorControllerValidator;
  // State field(s) for InputResumen widget.
  TextEditingController? inputResumenController;
  String? Function(BuildContext, String?)? inputResumenControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    inputTituloController?.dispose();
    inputAutorController?.dispose();
    inputResumenController?.dispose();
  }

  /// Additional helper methods are added here.

}
