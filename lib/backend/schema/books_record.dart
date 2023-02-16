import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'books_record.g.dart';

abstract class BooksRecord implements Built<BooksRecord, BooksRecordBuilder> {
  static Serializer<BooksRecord> get serializer => _$booksRecordSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Autor')
  String? get autor;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'Portada')
  String? get portada;

  @BuiltValueField(wireName: 'Rating')
  int? get rating;

  @BuiltValueField(wireName: 'Review')
  String? get review;

  DocumentReference? get user;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BooksRecordBuilder builder) => builder
    ..title = ''
    ..autor = ''
    ..descripcion = ''
    ..portada = ''
    ..rating = 0
    ..review = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('books');

  static Stream<BooksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BooksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BooksRecord._();
  factory BooksRecord([void Function(BooksRecordBuilder) updates]) =
      _$BooksRecord;

  static BooksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBooksRecordData({
  String? title,
  String? autor,
  String? descripcion,
  String? portada,
  int? rating,
  String? review,
  DocumentReference? user,
}) {
  final firestoreData = serializers.toFirestore(
    BooksRecord.serializer,
    BooksRecord(
      (b) => b
        ..title = title
        ..autor = autor
        ..descripcion = descripcion
        ..portada = portada
        ..rating = rating
        ..review = review
        ..user = user,
    ),
  );

  return firestoreData;
}
