// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/casper.png
  AssetGenImage get casper => const AssetGenImage('assets/images/casper.png');

  /// File path: assets/images/cooker.png
  AssetGenImage get cooker => const AssetGenImage('assets/images/cooker.png');

  /// File path: assets/images/dreamworks.png
  AssetGenImage get dreamworks =>
      const AssetGenImage('assets/images/dreamworks.png');

  /// File path: assets/images/hubmart.png
  AssetGenImage get hubmart => const AssetGenImage('assets/images/hubmart.png');

  /// File path: assets/images/iMateStores.png
  AssetGenImage get iMateStores =>
      const AssetGenImage('assets/images/iMateStores.png');

  /// File path: assets/images/iphone12.png
  AssetGenImage get iphone12 =>
      const AssetGenImage('assets/images/iphone12.png');

  /// File path: assets/images/iphonexs.png
  AssetGenImage get iphonexs =>
      const AssetGenImage('assets/images/iphonexs.png');

  /// File path: assets/images/justphones.png
  AssetGenImage get justphones =>
      const AssetGenImage('assets/images/justphones.png');

  /// File path: assets/images/justrite.png
  AssetGenImage get justrite =>
      const AssetGenImage('assets/images/justrite.png');

  /// File path: assets/images/justused.png
  AssetGenImage get justused =>
      const AssetGenImage('assets/images/justused.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/nokia.png
  AssetGenImage get nokia => const AssetGenImage('assets/images/nokia.png');

  /// File path: assets/images/ogabassey.png
  AssetGenImage get ogabassey =>
      const AssetGenImage('assets/images/ogabassey.png');

  /// File path: assets/images/ogabassey1.png
  AssetGenImage get ogabassey1 =>
      const AssetGenImage('assets/images/ogabassey1.png');

  /// File path: assets/images/okayfones1.png
  AssetGenImage get okayfones1 =>
      const AssetGenImage('assets/images/okayfones1.png');

  /// File path: assets/images/orile.jpg
  AssetGenImage get orile => const AssetGenImage('assets/images/orile.jpg');

  /// File path: assets/images/pay40.png
  AssetGenImage get pay40 => const AssetGenImage('assets/images/pay40.png');

  /// File path: assets/images/pointtek.png
  AssetGenImage get pointtek =>
      const AssetGenImage('assets/images/pointtek.png');

  /// File path: assets/images/ps4.png
  AssetGenImage get ps4 => const AssetGenImage('assets/images/ps4.png');

  /// File path: assets/images/slot.png
  AssetGenImage get slot => const AssetGenImage('assets/images/slot.png');

  /// File path: assets/images/speaker.png
  AssetGenImage get speaker => const AssetGenImage('assets/images/speaker.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    casper,
    cooker,
    dreamworks,
    hubmart,
    iMateStores,
    iphone12,
    iphonexs,
    justphones,
    justrite,
    justused,
    logo,
    nokia,
    ogabassey,
    ogabassey1,
    okayfones1,
    orile,
    pay40,
    pointtek,
    ps4,
    slot,
    speaker,
  ];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/scan.svg
  SvgGenImage get scan => const SvgGenImage('assets/svgs/scan.svg');

  /// File path: assets/svgs/searchnormal.svg
  SvgGenImage get searchnormal =>
      const SvgGenImage('assets/svgs/searchnormal.svg');

  /// List of all assets
  List<SvgGenImage> get values => [scan, searchnormal];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
