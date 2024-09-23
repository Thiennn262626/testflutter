/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bgHeader.png
  AssetGenImage get bgHeader =>
      const AssetGenImage('assets/icons/bgHeader.png');

  /// File path: assets/icons/ic_bot_account.png
  AssetGenImage get icBotAccount =>
      const AssetGenImage('assets/icons/ic_bot_account.png');

  /// File path: assets/icons/ic_bot_account_focus.png
  AssetGenImage get icBotAccountFocus =>
      const AssetGenImage('assets/icons/ic_bot_account_focus.png');

  /// File path: assets/icons/ic_bot_category.png
  AssetGenImage get icBotCategory =>
      const AssetGenImage('assets/icons/ic_bot_category.png');

  /// File path: assets/icons/ic_bot_category_focus.png
  AssetGenImage get icBotCategoryFocus =>
      const AssetGenImage('assets/icons/ic_bot_category_focus.png');

  /// File path: assets/icons/ic_bot_homepage.png
  AssetGenImage get icBotHomepage =>
      const AssetGenImage('assets/icons/ic_bot_homepage.png');

  /// File path: assets/icons/ic_bot_homepage_focus.png
  AssetGenImage get icBotHomepageFocus =>
      const AssetGenImage('assets/icons/ic_bot_homepage_focus.png');

  /// File path: assets/icons/ic_bot_messenger.png
  AssetGenImage get icBotMessenger =>
      const AssetGenImage('assets/icons/ic_bot_messenger.png');

  /// File path: assets/icons/ic_bot_messenger_focus.png
  AssetGenImage get icBotMessengerFocus =>
      const AssetGenImage('assets/icons/ic_bot_messenger_focus.png');

  /// File path: assets/icons/ic_bot_shop.png
  AssetGenImage get icBotShop =>
      const AssetGenImage('assets/icons/ic_bot_shop.png');

  /// File path: assets/icons/ic_bot_shop_focus.png
  AssetGenImage get icBotShopFocus =>
      const AssetGenImage('assets/icons/ic_bot_shop_focus.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bgHeader,
        icBotAccount,
        icBotAccountFocus,
        icBotCategory,
        icBotCategoryFocus,
        icBotHomepage,
        icBotHomepageFocus,
        icBotMessenger,
        icBotMessengerFocus,
        icBotShop,
        icBotShopFocus
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
