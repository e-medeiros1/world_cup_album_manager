import '../../../models/groups_stickers.dart';

abstract class MyStickersView {
  void loadedPage(List<GroupsStickers> album);
  void error(String messages);
  void updateStatusFilter(status);
  void updateAlbum(List<GroupsStickers> album);

  void showLoader();
}
