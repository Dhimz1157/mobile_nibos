import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimSearchBar(
          width: 400,
          textController: textController,
          onSuffixTap: () {
            setState(() {
              textController.clear();
            });
          },
          color: Colors.grey,
          helpText: "Search Any Title..", onSubmitted: (String ) {  },
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Recommended For You <3',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Scaffold(
            body: MasonryGridView.count(
              crossAxisCount: 2,
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        color: Colors.blue,
                        height: 270,
                        //Image.asset(...) untuk input gambar
                      ),
                    ),
                    Positioned( //title text pos
                      bottom: 8,
                      left: 75,
                      child: Text(
                        'Title $index',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
