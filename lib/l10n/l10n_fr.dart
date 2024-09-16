import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class L10nFr extends L10n {
  L10nFr([String locale = 'fr']) : super(locale);

  @override
  String get helloWorld => 'Bonjour.';

  @override
  String get debug => 'débogage';

  @override
  String get goodBye => 'au revoir';

  @override
  String get chat => 'Chat (Internet)';

  @override
  String get typeAMessage => 'Saisissez votre message.';

  @override
  String get signIn => 's\'inscrire';

  @override
  String get signUp => 's\'inscrire';

  @override
  String get mailAddress => 'adresse électronique';

  @override
  String get password => 'mot de passe (ordinateur)';

  @override
  String get userName => 'Nom d\'utilisateur';

  @override
  String get talk => 'talk-show';

  @override
  String get selectAis => 'Veuillez sélectionner un ami';

  @override
  String get create => 'fabrication';

  @override
  String get selectLanguage => 'Sélection de la langue';

  @override
  String get selectLanguageCaution => 'Le changement de langue modifie immédiatement la langue d\'affichage de l\'application.';

  @override
  String get close => 'proche (par ex. livre, yeux, rencontre, etc.)';

  @override
  String get language => 'Langue.';

  @override
  String get themeMode => 'thème';

  @override
  String get license => 'licence';

  @override
  String get debugMode => 'mode débogage';

  @override
  String get signOut => 'se déconnecter';

  @override
  String get system => 'système';

  @override
  String get light => 'lumière';

  @override
  String get dark => 'sombre';

  @override
  String get aiAdmin => 'Gestion de l\'IA';
}
