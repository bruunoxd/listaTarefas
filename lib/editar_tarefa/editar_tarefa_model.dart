import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'editar_tarefa_widget.dart' show EditarTarefaWidget;
import 'package:flutter/material.dart';

class EditarTarefaModel extends FlutterFlowModel<EditarTarefaWidget> {
  ///  Local state fields for this page.

  DateTime? varDia;

  DateTime? varHora;

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
