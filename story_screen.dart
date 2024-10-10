// ignore_for_file: library_private_types_in_public_api

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gudpot/shared/theme.dart';
import 'package:gudpot/ui/widgets/ap_bar.dart';
import 'package:gudpot/ui/widgets/story_content.dart';

class StoryGridPage extends StatelessWidget {
  final List<String> imageUrls;

  const StoryGridPage({
    super.key,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate the number of rows needed
        int rows = (imageUrls.length / 3).ceil();
        // Calculate the height of each row
        double rowHeight = constraints.maxWidth / 3;
        // Calculate the total height
        double totalHeight = rows * rowHeight;

        return SizedBox(
          height: totalHeight,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(), // Disable scrolling
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 3 images per row
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => PostDetailPage(
                        imageUrls: imageUrls,
                        initialIndex: index,
                      ),
                    ),
                  );
                },
                child: Image.network(imageUrls[index], fit: BoxFit.cover),
              );
            },
          ),
        );
      },
    );
  }
}

class PostDetailPage extends StatefulWidget {
  final List<String> imageUrls;
  final int initialIndex;

  const PostDetailPage({
    super.key,
    required this.imageUrls,
    required this.initialIndex,
  });

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      log('Initial index in didChangeDependencies: ${widget.initialIndex}');
      log('Image URLs length in didChangeDependencies: ${widget.imageUrls.length}');

      if (widget.initialIndex > 0) {
        if (widget.initialIndex == widget.imageUrls.length - 1) {
          _scrollController.jumpTo(widget.initialIndex * 580 - 200);
          log('tidak lompat');
        } else {
          _scrollController.jumpTo(widget.initialIndex * 580);
          log('lompat');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    log('Initial index: ${widget.initialIndex}');
    log('length: ${widget.imageUrls.length}');
    return Container(
      color: whitecolor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: whitecolor,
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: ApBarPage(),
          ),
          body: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeBottom: true,
            child: ListView.builder(
              controller: _scrollController,
              itemCount: widget.imageUrls.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 580,
                  child: StoryContent(
                    imageUrl:
                        'https://www.befunky.com/images/wp/wp-2021-01-linkedin-profile-picture-focus-face.jpg?auto=avif,webp&format=jpg&width=50',
                    name: 'Bu Risma',
                    time: '2 hours ago',
                    content:
                        'This is my plant in 30 days, so beautiful right? Lorem ipsum dolor sit amet, consectetur adipiscing elit. This is my plant in 30 days, so beautiful right? Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    imageContent: [widget.imageUrls[index]],
                    like: 141,
                    comment: 24,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
