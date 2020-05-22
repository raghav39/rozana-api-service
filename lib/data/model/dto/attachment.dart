import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attachment.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: true)
class Attachment extends Equatable {
  int id;

  int invoiceId;

  String invoiceNumber;

  String documentUrl;

  Attachment({this.id, this.invoiceId, this.invoiceNumber, this.documentUrl});

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  static const fromJsonFactory = _$AttachmentFromJson;

  Map<String, dynamic> toJson() => _$AttachmentToJson(this);

  @override
  List<Object> get props => [id, invoiceId, invoiceNumber, documentUrl];
}
/*

part 'attachment.jser.dart';

class Attachment extends Equatable {
  int id;

  int invoiceId;

  String invoiceNumber;

  String documentUrl;

  Attachment({this.id, this.invoiceId, this.invoiceNumber, this.documentUrl});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = AttachmentSerializer();

  static Attachment fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();

  @override
  List<Object> get props => [id, invoiceId, invoiceNumber, documentUrl];
}

@GenSerializer()
class AttachmentSerializer extends Serializer<Attachment>
    with _$AttachmentSerializer {}
*/
