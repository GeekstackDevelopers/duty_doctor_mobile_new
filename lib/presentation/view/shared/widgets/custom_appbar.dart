import 'package:duty_doctor/app.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.titleText,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.shadowColor,
    this.shape,
    this.backgroundColor,
    this.brightness,
    this.iconTheme,
    this.actionsIconTheme,
    this.textTheme,
    this.primary = true,
    this.centerTitle = false,
    this.excludeHeaderSemantics = false,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.backwardsCompatibility,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.foregroundColor,
    this.surfaceTintColor,
  });

  final Widget? leading;
  final bool automaticallyImplyLeading;
  final Widget? title;
  final String? titleText;
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final Color? shadowColor;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final Brightness? brightness;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final TextTheme? textTheme;
  final bool primary;
  final bool? centerTitle;
  final bool excludeHeaderSemantics;
  final double? titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  final double? toolbarHeight;
  final double? leadingWidth;
  final bool? backwardsCompatibility;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final Color? foregroundColor;
  final Color? surfaceTintColor;

  @override
  Size get preferredSize {
    final double bottomHeight = bottom?.preferredSize.height ?? 0.0;
    final double toolbar = toolbarHeight ?? kToolbarHeight;
    return Size.fromHeight(toolbar + bottomHeight);
  }

  @override
  Widget build(BuildContext context) {
    final Color effectiveBackgroundColor = backgroundColor ?? Colors.white;
    final Color effectiveForegroundColor = foregroundColor ?? Colors.black;
    final Widget? effectiveLeading =
        leading ??
        (automaticallyImplyLeading && Navigator.canPop(context)
            ? IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.maybePop(context),
                color: effectiveForegroundColor,
              )
            : null);

    final TextStyle fixedTitleTextStyle =
        titleTextStyle ??
        TextStyle(
          color: Colors.black,
          fontSize: 19.sp,
          fontWeight: FontWeight.w400,
        );

    return AppBar(
      leading: effectiveLeading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: titleText != null
          ? Text(titleText!, style: fixedTitleTextStyle)
          : title,
      actions: actions,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      shadowColor: shadowColor,
      shape: shape,
      backgroundColor: effectiveBackgroundColor,
      iconTheme: iconTheme ?? IconThemeData(color: effectiveForegroundColor),
      actionsIconTheme:
          actionsIconTheme ?? IconThemeData(color: effectiveForegroundColor),
      primary: primary,
      centerTitle: centerTitle,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle ?? SystemUiOverlayStyle.dark,
      foregroundColor: effectiveForegroundColor,
      surfaceTintColor: surfaceTintColor,
    );
  }
}
