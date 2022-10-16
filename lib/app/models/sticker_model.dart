// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StickerModel {
  final int id;
  final String stickerCode;
  final String stickerName;
  final String stickerNumber;
  final String stickerImage;
  StickerModel({
    required this.id,
    required this.stickerCode,
    required this.stickerName,
    required this.stickerNumber,
    required this.stickerImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'sticker_code': stickerCode,
      'sticker_name': stickerName,
      'sticker_number': stickerNumber,
      'sticker_image': stickerImage,
    };
  }

  factory StickerModel.fromMap(Map<String, dynamic> map) {
    return StickerModel(
      id: map['id'] as int,
      stickerCode: map['sticker_code'] ?? '',
      stickerName: map['sticker_name'] ?? '',
      stickerNumber: map['sticker_number'] ?? '',
      stickerImage: map['sticker_image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory StickerModel.fromJson(String source) =>
      StickerModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
