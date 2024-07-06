//TODO: DJORDJE NAPRAVI KAO VELIKI TABLET I STAVI GA DA JE U WINDOWS CATEGORY

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

final customLInuxTablet = DeviceInfo.genericTablet(
  platform: TargetPlatform.linux,
  name: 'Medium',
  id: 'medium',
  screenSize: const Size(1024, 1350),
  safeAreas: const EdgeInsets.only(
    left: 0.0,
    top: 24.0,
    right: 0.0,
    bottom: 0.0,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    left: 0.0,
    top: 24.0,
    right: 0.0,
    bottom: 0.0,
  ),
);
