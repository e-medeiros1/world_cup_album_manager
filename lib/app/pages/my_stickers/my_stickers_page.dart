import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/pages/my_stickers/widgets/sticker_group.dart';
import 'package:world_cup_album_manager/app/pages/my_stickers/widgets/sticker_group_filter.dart';
import 'package:world_cup_album_manager/app/pages/my_stickers/widgets/stickers_status_filter.dart';

class MyStickersPage extends StatelessWidget {
  const MyStickersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas figurinhas'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(children: const [
              StickersStatusFilter(filterSelected: ''),
              StickerGroupFilter(),
            ]),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const StickerGroup();
              },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}
