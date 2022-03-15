import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProgressBar extends HookWidget {
  const ProgressBar({
    required this.value,
    required this.height,
    this.borderRadius,
    Key? key,
  }) : super(key: key);

  final double value;
  final double height;
  final BorderRadius? borderRadius;

  static const minTextPos = 40.0;

  @override
  Widget build(BuildContext context) {
    final animation = useAnimationController(
      initialValue: value,
    );

    useEffect(() {
      animation.animateTo(value,
          curve: Curves.ease, duration: const Duration(milliseconds: 300));
    }, [value]);

    return AnimatedBuilder(
      animation: animation,
      builder: (_, __) {
        return ClipRRect(
          borderRadius: borderRadius,
          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              LinearProgressIndicator(
                value: animation.value,
                minHeight: height,
              ),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final width = constraints.maxWidth * animation.value;
                  final textPos = width > minTextPos ? width : minTextPos;
                  return SizedBox(
                    width: textPos,
                    height: height,
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          value.toStringAsFixed(2),
                        ),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
