import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer({
    super.key,
    required this.title,
    required this.child,
    this.space = 12,
    this.titlePadding,
    this.leading,
    this.seeAll,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final String title;
  final Widget? leading;
  final EdgeInsetsGeometry? titlePadding;
  final VoidCallback? seeAll;

  final double space;
  final CrossAxisAlignment crossAxisAlignment;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        const SizedBox(
          height: 8,
        ),
        SectionTitle(
          title: title,
          padding: titlePadding,
          leading: leading,
          seeAll: seeAll,
        ),
        SizedBox(height: space),
        child,
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    this.padding,
    this.leading,
    this.seeAll,
  });

  final String title;
  final Widget? leading;
  final VoidCallback? seeAll;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          leading ?? const SizedBox.shrink(),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold, // Nét chữ dày hơn
                fontSize: 15, // Kích thước nhỏ hơn (thay đổi theo nhu cầu)
                color: Color(0xFFD5262B), // Màu sắc
              ),
            ),
          ),
          if (seeAll != null) ...[
            Text(
              'View More',
              style: TextStyle(
                fontSize: 14, // Kích thước nhỏ hơn (thay đổi theo nhu cầu)
              ),
            ),
            const Icon(Icons.navigate_next)
          ]
        ],
      ),
    );
  }
}
