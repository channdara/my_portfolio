import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF020617);
const Color secondaryColor = Color(0xFF111827);
const Color accentColor = Color(0xFFEAB308);

const int tabLength = 5;
const int tabInitialIndex = kDebugMode ? 4 : 0;

const double _baseSpacingMultiplier = 24.0;
const double phoneSpacing = _baseSpacingMultiplier;
const double tabletSpacing = _baseSpacingMultiplier * 2.5;
const double websiteSpacing = _baseSpacingMultiplier * 5;

final BorderRadius borderRadius = BorderRadius.circular(16.0);
