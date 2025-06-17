part of '../stack_avatar.dart';

class _Counter extends StatelessWidget {
  /// [count] defines number of frames remaining in relation
  /// to the limit defined in the parent widget [StackAvatar].
  final int count;

  const _Counter({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    // Theme.
    const TextStyle style = TextStyle(
      fontSize: 24.0,
      color: Colors.white,
    );

    // Content.
    return SizedBox.fromSize(
      size: Size(80.0, 80.0),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.redAccent,
        ),
        child: Center(
          child: Text(
            '+$count',
            style: style,
          ),
        ),
      ),
    );
  }
}
