import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/config/env/env.dart';
import 'package:world_cup_album_manager/app/services/fwc_album_app.dart';

void main() async {
  await Env.instance.load();
  runApp( FwcAlbumApp());
}
