import 'package:aqarcom/core/values/constants_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoriesWidget extends StatefulWidget {
  final List<Story> stories;

  const StoriesWidget({Key? key, required this.stories}) : super(key: key);

  @override
  _StoriesWidgetState createState() => _StoriesWidgetState();
}

class _StoriesWidgetState extends State<StoriesWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.stories.length,
        itemBuilder: (context, index) {
            final storyIndex = index;
            final story = widget.stories[storyIndex];
            const isViewed =  false;

            return StoryItem(
              story: story,
              isViewed: isViewed,
              animationController: _animationController,
              onTap: () {
                // Handle story tap
                _navigateToStoryView(storyIndex);
              },
            );
          }
      ),
    );
  }

  void _navigateToStoryView(int storyIndex) {
    // Navigate to the story view
    // You can implement the navigation logic here
    print('Navigating to story ${widget.stories[storyIndex].imageUrl}');
  }
}

class StoryItem extends StatelessWidget {
  final Story story;
  final bool isViewed;
  final AnimationController animationController;
  final VoidCallback onTap;

  const StoryItem({
    Key? key,
    required this.story,
    required this.isViewed,
    required this.animationController,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 32,
                backgroundColor: kStoryColor,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(story.imageUrl),
                  child: isViewed
                      ? null
                      : CircleAvatar(
                    radius: 10.sp,
                    backgroundColor: kStoryColor,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 16.r,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Story {
  final String imageUrl;
  final bool isViewed;

  Story({required this.imageUrl, this.isViewed = false});
}