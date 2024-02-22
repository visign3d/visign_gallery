import 'dart:ui';

import 'package:visign_gallery/abstract/abstract_lib.dart';
import 'package:flutter_localization/flutter_localization.dart';

import 'app_locale_visign.dart';

class LocalisationService extends AService {
  final FlutterLocalization localization = FlutterLocalization.instance;


  final List< Map<String,dynamic>> locales=[];


  @override
  start() {
    localization.init(
      mapLocales: [
        const MapLocale('en', AppLocaleVisign.EN),
        const MapLocale('hu', AppLocaleVisign.HU),
        const MapLocale('de', AppLocaleVisign.DE),
      ],
      initLanguageCode: 'en',
    );

    localization.onTranslatedLanguage = _onTranslatedLanguage;
  }

  void _onTranslatedLanguage(Locale? locale) {}
}
