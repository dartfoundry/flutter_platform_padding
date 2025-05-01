import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_aware_padding/platform_padding.dart';

void main() {
  group('platformAwarePaddingFor', () {
    test('returns desktop padding for web', () {
      final padding = platformAwarePaddingFor(isWeb: true, platform: TargetPlatform.android);
      expect(padding, const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0));
    });

    test('returns desktop padding for macOS', () {
      final padding = platformAwarePaddingFor(isWeb: false, platform: TargetPlatform.macOS);
      expect(padding, const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0));
    });

    test('returns mobile padding for Android', () {
      final padding = platformAwarePaddingFor(isWeb: false, platform: TargetPlatform.android);
      expect(padding, const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0));
    });

    test('returns mobile padding for iOS', () {
      final padding = platformAwarePaddingFor(isWeb: false, platform: TargetPlatform.iOS);
      expect(padding, const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0));
    });
  });
}
