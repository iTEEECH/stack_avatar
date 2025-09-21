import 'package:flutter/material.dart';

part 'widget/avatar.dart';
part 'widget/counter.dart';

class StackAvatar extends StatelessWidget {
  /// [images] defines list of images to be displayed.
  final List<ImageProvider> images;

  /// [imageCount] defines number of images to be displayed in the stack.
  /// Default value is length of images.
  final int? imageCount;

  const StackAvatar({super.key, required this.images, this.imageCount});

  int get count => imageCount ?? images.length;

  @override
  Widget build(BuildContext context) {
    // Theme.
    const double widthFactor = 0.75;

    // Content.
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: (images.length > count) ? count + 1 : images.length,
      itemBuilder: (_, int index) {
        final bool hasCounter = (images.length > count) && index > (count - 1);
        return Align(
          widthFactor: widthFactor,
          child: hasCounter
              ? _Counter(key: ValueKey('Counter'), count: images.length - count)
              : _Avatar(key: ValueKey(images[index]), image: images[index]),
        );
      },
    );
  }
}
