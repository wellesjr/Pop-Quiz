import 'dart:math';
import 'package:flutter/material.dart';

abstract class AppGradients {
  Gradient get backgroundSplasPage;
  Gradient get credito;
  Gradient get debito;
}

class AppGradientsDefault implements AppGradients {
  @override
  Gradient get backgroundSplasPage => const LinearGradient(
      colors: [Color(0xFFE25303), Color(0xFFFF9E1B)],
      stops: [0.0, 0.695],
      transform: GradientRotation(2.13959913 * pi));

  @override
  Gradient get credito => RadialGradient(colors: [
        const Color(0xFF45CC93).withOpacity(0.12),
        const Color(0xFF40B28C).withOpacity(0.12)
      ], transform: const GradientRotation(4.5 * pi));

  @override
  Gradient get debito => RadialGradient(colors: [
        const Color(0xFFE83F5B).withOpacity(0.12),
        const Color(0xFFE83F5B).withOpacity(0.12)
      ], transform: const GradientRotation(4.5 * pi));
}
