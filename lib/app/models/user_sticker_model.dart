import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserStickerModel {
  final int id;
  final int idUser;
  final int idSticker;
  final int duplicate;
  final String stickerCode;
  final String stickerNumber;
  UserStickerModel({
    required this.id,
    required this.idUser,
    required this.idSticker,
    required this.duplicate,
    required this.stickerCode,
    required this.stickerNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'id_user': idUser,
      'id_sticker': idSticker,
      'duplicate_stickers': duplicate,
      'sticker_code': stickerCode,
      'sticker_number': stickerNumber,
    };
  }

  factory UserStickerModel.fromMap(Map<String, dynamic> map) {
    return UserStickerModel(
      id: map['id'] ?? 0,
      idUser: map['id_user'] ?? 0,
      idSticker: map['id_sticker'] ?? 0,
      duplicate: map['duplicate_stickers'] ?? 0,
      stickerCode: map['sticker_code'] ?? '',
      stickerNumber: map['sticker_number'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserStickerModel.fromJson(String source) => UserStickerModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
