import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarefasRecord extends FirestoreRecord {
  TarefasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "dia" field.
  DateTime? _dia;
  DateTime? get dia => _dia;
  bool hasDia() => _dia != null;

  // "hora" field.
  DateTime? _hora;
  DateTime? get hora => _hora;
  bool hasHora() => _hora != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _dia = snapshotData['dia'] as DateTime?;
    _hora = snapshotData['hora'] as DateTime?;
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tarefas');

  static Stream<TarefasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarefasRecord.fromSnapshot(s));

  static Future<TarefasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarefasRecord.fromSnapshot(s));

  static TarefasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarefasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarefasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarefasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarefasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarefasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarefasRecordData({
  String? titulo,
  DateTime? dia,
  DateTime? hora,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'dia': dia,
      'hora': hora,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarefasRecordDocumentEquality implements Equality<TarefasRecord> {
  const TarefasRecordDocumentEquality();

  @override
  bool equals(TarefasRecord? e1, TarefasRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.dia == e2?.dia &&
        e1?.hora == e2?.hora &&
        e1?.status == e2?.status;
  }

  @override
  int hash(TarefasRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.dia, e?.hora, e?.status]);

  @override
  bool isValidKey(Object? o) => o is TarefasRecord;
}
