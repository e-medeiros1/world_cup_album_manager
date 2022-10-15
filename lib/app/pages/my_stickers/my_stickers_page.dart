import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/pages/my_stickers/presenter/my_stickers_presenter.dart';
import 'package:world_cup_album_manager/app/pages/my_stickers/view/my_stickers_view_impl.dart';
import 'package:world_cup_album_manager/app/pages/my_stickers/widgets/sticker_group.dart';
import 'package:world_cup_album_manager/app/pages/my_stickers/widgets/sticker_group_filter.dart';
import 'package:world_cup_album_manager/app/pages/my_stickers/widgets/stickers_status_filter.dart';

class MyStickersPage extends StatefulWidget {
  final MyStickersPresenter presenter;
  const MyStickersPage({super.key, required this.presenter});

  @override
  State<MyStickersPage> createState() => _MyStickersPageState();
}

class _MyStickersPageState extends MyStickersViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas figurinhas'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(children: [
              StickersStatusFilter(filterSelected: statusFilter),
               StickerGroupFilter(countries: countries),
            ]),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final group = album[index];
                return  StickerGroup(group: group, statusFilter: statusFilter);
              },
              childCount: album.length,
            ),
          )
        ],
      ),
    );
  }
}
