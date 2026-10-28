// GENERATED FILE - DO NOT EDIT BY HAND.
// Generated semantic Card atom. Figma card slots are mapped to image/content/topRight.
import 'package:design_system/theme/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.image,
    this.topRight,
    this.onTap,
    this.contentPadding,
    this.imageHeight,
    this.topRightRight,
    this.topRightTop,
  });

  final Widget child;
  final Widget? image;
  final Widget? topRight;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? contentPadding;
  final double? imageHeight;
  final double? topRightRight;
  final double? topRightTop;

  @override
  Widget build(BuildContext context) {
   final tokens =
    Theme.of(context)
        .extension<DsThemeExtension>()!
        .tokens;
        final radius =
    BorderRadius.circular(
  tokens.cardComponentRadius,
);
    final designImageHeight =
        imageHeight ?? tokens.cardComponentImageHeight;

    final imageBox = image == null
        ? null
        : ClipRRect(
            borderRadius: radius,
            child: image,
          );

    final body = Padding(
      padding: contentPadding ?? tokens.cardComponentContentPadding,
      child: child,
    );

    // The card adapts to the room it is given:
    // - with a bounded height (a grid cell) the text keeps the height it
    //   needs, the image takes what is left, and nothing can overflow;
    // - with an unbounded height (a plain column) the card hugs its content.
    final content = LayoutBuilder(
      builder: (context, constraints) {
        final bounded =
            constraints.hasBoundedHeight && constraints.hasBoundedWidth;

        if (!bounded || imageBox == null) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (imageBox != null)
                SizedBox(
                  width: double.infinity,
                  height: designImageHeight,
                  child: imageBox,
                ),
              body,
            ],
          );
        }

        return CustomMultiChildLayout(
          delegate: _AppCardLayout(),
          children: [
            LayoutId(
              id: _AppCardSlot.body,
              child: ClipRect(
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: body,
                ),
              ),
            ),
            LayoutId(id: _AppCardSlot.image, child: imageBox),
          ],
        );
      },
    );

    final card = Container(
      decoration: BoxDecoration(
        color:tokens.cardBackground,
        borderRadius: radius,
        border: Border.all(color: tokens.cardComponentBorder),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          content,
          if (topRight != null)
            Positioned(
              top: topRightTop ?? 12,
              right: topRightRight ?? 12,
              child: topRight!,
            ),
        ],
      ),
    );

    if (onTap == null) return card;
    return Material(
      color: Colors.transparent,
      child: InkWell(onTap: onTap, borderRadius: radius, child: card),
    );
  }
}

enum _AppCardSlot { image, body }

/// Lays out the text first, at the height it needs (clipped, never an
/// overflow error), then gives the image whatever height is left.
class _AppCardLayout extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    final bodySize = layoutChild(
      _AppCardSlot.body,
      BoxConstraints(
        minWidth: size.width,
        maxWidth: size.width,
        maxHeight: size.height,
      ),
    );

    final room = size.height - bodySize.height;
    final imageHeight = room > 0 ? room : 0.0;

    if (hasChild(_AppCardSlot.image)) {
      layoutChild(
        _AppCardSlot.image,
        BoxConstraints.tight(Size(size.width, imageHeight)),
      );
      positionChild(_AppCardSlot.image, Offset.zero);
    }

    positionChild(_AppCardSlot.body, Offset(0, imageHeight));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => false;
}
