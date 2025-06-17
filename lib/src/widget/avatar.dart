
part of '../stack_avatar.dart';

class _Avatar extends StatelessWidget {
  /// [image] defines Asset or Network image path to be displayed.
  final ImageProvider image;

  const _Avatar({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(80.0, 80.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black45,
            width: 2.0,
          ),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
