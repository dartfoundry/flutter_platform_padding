import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

EdgeInsets platformAwarePaddingFor({required bool isWeb, required TargetPlatform platform}) {
  const mobilePadding = EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0);
  const desktopPadding = EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0);

  if (isWeb ||
      {TargetPlatform.macOS, TargetPlatform.windows, TargetPlatform.linux}.contains(platform)) {
    return desktopPadding;
  }

  return mobilePadding;
}

EdgeInsets platformAwarePadding(BuildContext context) {
  return platformAwarePaddingFor(isWeb: kIsWeb, platform: defaultTargetPlatform);
}
