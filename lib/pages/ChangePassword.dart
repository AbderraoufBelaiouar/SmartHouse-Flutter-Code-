// // import '/flutter_flow/flutter_flow_icon_button.dart';
// // import '/flutter_flow/flutter_flow_theme.dart';
// // import '/flutter_flow/flutter_flow_util.dart';
// // import '/flutter_flow/flutter_flow_widgets.dart';
// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:provider/provider.dart';

// // import 'change_password_model.dart';
// // export 'change_password_model.dart';
// import 'package:flutter/material.dart';

// class ChangePasswordWidget extends StatefulWidget {
//   const ChangePasswordWidget({super.key});

//   @override
//   State<ChangePasswordWidget> createState() => _ChangePasswordWidgetState();
// }

// class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
//   late ChangePasswordModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => ChangePasswordModel());

//     _model.textController1 ??= TextEditingController();
//     _model.textFieldFocusNode1 ??= FocusNode();

//     _model.textController2 ??= TextEditingController();
//     _model.textFieldFocusNode2 ??= FocusNode();

//     _model.textController3 ??= TextEditingController();
//     _model.textFieldFocusNode3 ??= FocusNode();
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           top: true,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding:const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     IconButton(
//                       iconSize: 60,
//                       icon: const Icon(
//                         Icons.arrow_back_ios_rounded,
//                         color: Colors.black,
//                         size: 30.0,
//                       ),
//                       onPressed: () {
//                         // print('IconButton pressed ...');
//                       },
//                     ),
//                     const Text(
//                       'Change Password',
//                       style: TextStyle(
//                         fontFamily: 'Outfit',
//                         color: Colors.black,
//                         fontSize: 24.0,
//                         letterSpacing: 0.0,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
//                 child: TextFormField(
//                   controller: _model.textController1,
//                   focusNode: _model.textFieldFocusNode1,
//                   autofocus: false,
//                   obscureText: !_model.passwordVisibility1,
//                   decoration: InputDecoration(
//                     labelText: 'Current Password',
//                     hintText: 'Enter your current password',
//                     hintStyle: const TextStyle(
//                       fontFamily: 'Readex Pro',
//                       letterSpacing: 0.0,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         // color: FlutterFlowTheme.of(context).primary,
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Color(0x00000000),
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Color(0x00000000),
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     focusedErrorBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Color(0x00000000),
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     suffixIcon: InkWell(
//                       onTap: () => setState(
//                         () => _model.passwordVisibility1 =
//                             !_model.passwordVisibility1,
//                       ),
//                       focusNode: FocusNode(skipTraversal: true),
//                       child: Icon(
//                         _model.passwordVisibility1
//                             ? Icons.visibility_outlined
//                             : Icons.visibility_off_outlined,
//                         // color: FlutterFlowTheme.of(context).secondaryText,
//                         size: 22.0,
//                       ),
//                     ),
//                   ),
//                   style: const TextStyle(
//                     fontFamily: 'Readex Pro',
//                     letterSpacing: 0.0,
//                   ),
//                   validator:
//                       _model.textController1Validator.asValidator(context),
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
//                 child: TextFormField(
//                   controller: _model.textController2,
//                   focusNode: _model.textFieldFocusNode2,
//                   autofocus: false,
//                   obscureText: !_model.passwordVisibility2,
//                   decoration: InputDecoration(
//                     labelText: 'New Password',
//                     hintText: 'Enter your new password',
//                     hintStyle: const TextStyle(
//                       fontFamily: 'Readex Pro',
//                       letterSpacing: 0.0,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         // color: FlutterFlowTheme.of(context).primary,
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Color(0x00000000),
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Color(0x00000000),
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     focusedErrorBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Color(0x00000000),
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     suffixIcon: InkWell(
//                       onTap: () => setState(
//                         () => _model.passwordVisibility2 =
//                             !_model.passwordVisibility2,
//                       ),
//                       focusNode: FocusNode(skipTraversal: true),
//                       child: Icon(
//                         _model.passwordVisibility2
//                             ? Icons.visibility_outlined
//                             : Icons.visibility_off_outlined,
//                         // color: FlutterFlowTheme.of(context).secondaryText,
//                         size: 22.0,
//                       ),
//                     ),
//                   ),
//                   style: const TextStyle(
//                     fontFamily: 'Readex Pro',
//                     letterSpacing: 0.0,
//                   ),
//                   validator:
//                       _model.textController2Validator.asValidator(context),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
//                 child: TextFormField(
//                   controller: _model.textController3,
//                   focusNode: _model.textFieldFocusNode3,
//                   autofocus: false,
//                   obscureText: !_model.passwordVisibility3,
//                   decoration: InputDecoration(
//                     labelText: 'Confirm Password',
//                     hintText: 'Confirm your new password',
//                     hintStyle: const TextStyle(
//                       fontFamily: 'Readex Pro',
//                       letterSpacing: 0.0,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Color(0x00000000),
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Color(0x00000000),
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     focusedErrorBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Color(0x00000000),
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     suffixIcon: InkWell(
//                       onTap: () => setState(
//                         () => _model.passwordVisibility3 =
//                             !_model.passwordVisibility3,
//                       ),
//                       focusNode: FocusNode(skipTraversal: true),
//                       child: Icon(
//                         _model.passwordVisibility3
//                             ? Icons.visibility_outlined
//                             : Icons.visibility_off_outlined,
//                         size: 22.0,
//                       ),
//                     ),
//                   ),
//                   style: const TextStyle(
//                     fontFamily: 'Readex Pro',
//                     letterSpacing: 0.0,
//                   ),
//                   validator:
//                       _model.textController3Validator.asValidator(context),
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
//                 child: OutlinedButton(
//                   onPressed: () {
//                     // print('Button pressed ...');
//                   },
//                   child: const Text(
//                     "Save",
//                     style: TextStyle(
//                       fontFamily: 'Readex Pro',
//                       color: Colors.white,
//                       letterSpacing: 0.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
