// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'FilmDecisionFR';

  @override
  String get createRoom => 'Créer une salle';

  @override
  String get joinRoom => 'Rejoindre une salle';

  @override
  String get swipeRight => 'J\'aime';

  @override
  String get swipeLeft => 'Je n\'aime pas';

  @override
  String get matchFound => 'Trouvé !';

  @override
  String get selectMovie => 'Choisis un film';
}
