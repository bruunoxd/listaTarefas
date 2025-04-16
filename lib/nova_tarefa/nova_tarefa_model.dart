import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'nova_tarefa_widget.dart' show NovaTarefaWidget;
import 'package:flutter/material.dart';

class NovaTarefaModel extends FlutterFlowModel<NovaTarefaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTituloFocusNode?.dispose();
    txtTituloTextController?.dispose();
  }
}
