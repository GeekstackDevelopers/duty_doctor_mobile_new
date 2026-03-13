import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/custom_container.dart';

class ExpandableWidget extends StatefulWidget {
  final String title;
  final String content;
  final Widget expandIcon;
  final Widget shrinkIcon;
  final Widget? leading;
  final Widget? contentWidget;
  const ExpandableWidget({
    super.key,
    required this.title,
    required this.content,
    this.shrinkIcon = const Icon(Icons.remove, key: ValueKey('minus')),
    this.expandIcon = const Icon(Icons.add, key: ValueKey('plus')),
    this.leading,
    this.contentWidget,
  });

  @override
  State<ExpandableWidget> createState() => _ExpandableWidgetState();
}

class _ExpandableWidgetState extends State<ExpandableWidget>
    with TickerProviderStateMixin {
  ValueNotifier<bool> expandNotifier = ValueNotifier(false);
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    reverseDuration: const Duration(milliseconds: 500),
    lowerBound: 0.5,
    vsync: this,
    value: 1,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(seconds: 1),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ValueListenableBuilder(
          valueListenable: expandNotifier,
          builder: (context, expanded, _) {
            return CustomContainer(
              onTap: () {
                expandNotifier.value = !expanded;
                if (expanded) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
              },
              padding: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: widget.leading == null ? 0 : 8.0,
                        ),
                        child: widget.leading ?? const SizedBox(),
                      ),
                      Expanded(
                        child: Text(
                          widget.title,
                          overflow: TextOverflow.fade,
                          style: CustomTextStyles.lufgaText.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                              return RotationTransition(
                                turns: _animation,
                                child: child,
                              );
                            },
                        child: expanded ? widget.shrinkIcon : widget.expandIcon,
                      ),
                    ],
                  ),
                  AnimatedCrossFade(
                    sizeCurve: Curves.easeIn,
                    firstCurve: Easing.legacy,
                    reverseDuration: const Duration(microseconds: 1),
                    firstChild: const SizedBox.shrink(),
                    secondChild:
                        widget.contentWidget ??
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            widget.content,
                            style: CustomTextStyles.lufgaText.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ),
                    crossFadeState: expanded
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 300),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
