import 'package:appinio_restaurant/common/flutter_gen/fonts.gen.dart';
import 'package:flutter/cupertino.dart';

class TodoSliverNavigationBar extends StatelessWidget {
  final String title;
  final Widget? trailing;

  const TodoSliverNavigationBar({
    super.key,
    required this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
      stretch: true,
      alwaysShowMiddle: false,
      trailing: trailing,
      largeTitle: Text(
        title,
        style: const TextStyle(
          fontFamily: FontFamily.sFProRounded,
        ),
      ),
    );
  }
}
