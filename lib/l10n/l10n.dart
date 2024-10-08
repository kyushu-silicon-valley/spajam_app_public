import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_fr.dart';
import 'l10n_ja.dart';
import 'l10n_ko.dart';
import 'l10n_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of L10n
/// returned by `L10n.of(context)`.
///
/// Applications need to include `L10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10n.localizationsDelegates,
///   supportedLocales: L10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10n.supportedLocales
/// property.
abstract class L10n {
  L10n(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10n? of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr'),
    Locale('ja'),
    Locale('ko'),
    Locale('zh')
  ];

  /// No description provided for @helloWorld.
  ///
  /// In ja, this message translates to:
  /// **'こんにちは'**
  String get helloWorld;

  /// No description provided for @debug.
  ///
  /// In ja, this message translates to:
  /// **'デバッグ'**
  String get debug;

  /// No description provided for @goodBye.
  ///
  /// In ja, this message translates to:
  /// **'さようなら'**
  String get goodBye;

  /// No description provided for @chat.
  ///
  /// In ja, this message translates to:
  /// **'チャット'**
  String get chat;

  /// No description provided for @typeAMessage.
  ///
  /// In ja, this message translates to:
  /// **'メッセージを入力してください'**
  String get typeAMessage;

  /// No description provided for @signIn.
  ///
  /// In ja, this message translates to:
  /// **'サインイン'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In ja, this message translates to:
  /// **'サインアップ'**
  String get signUp;

  /// No description provided for @mailAddress.
  ///
  /// In ja, this message translates to:
  /// **'メールアドレス'**
  String get mailAddress;

  /// No description provided for @password.
  ///
  /// In ja, this message translates to:
  /// **'パスワード'**
  String get password;

  /// No description provided for @userName.
  ///
  /// In ja, this message translates to:
  /// **'ユーザー名'**
  String get userName;

  /// No description provided for @talk.
  ///
  /// In ja, this message translates to:
  /// **'トーク'**
  String get talk;

  /// No description provided for @selectAis.
  ///
  /// In ja, this message translates to:
  /// **'友達を選択してください'**
  String get selectAis;

  /// No description provided for @create.
  ///
  /// In ja, this message translates to:
  /// **'作成'**
  String get create;

  /// No description provided for @selectLanguage.
  ///
  /// In ja, this message translates to:
  /// **'言語選択'**
  String get selectLanguage;

  /// No description provided for @selectLanguageCaution.
  ///
  /// In ja, this message translates to:
  /// **'※ 言語を変更すると、アプリの表示言語が即時に切り替わります。'**
  String get selectLanguageCaution;

  /// No description provided for @close.
  ///
  /// In ja, this message translates to:
  /// **'閉じる'**
  String get close;

  /// No description provided for @language.
  ///
  /// In ja, this message translates to:
  /// **'言語'**
  String get language;

  /// No description provided for @themeMode.
  ///
  /// In ja, this message translates to:
  /// **'テーマ'**
  String get themeMode;

  /// No description provided for @license.
  ///
  /// In ja, this message translates to:
  /// **'ライセンス'**
  String get license;

  /// No description provided for @debugMode.
  ///
  /// In ja, this message translates to:
  /// **'デバッグモード'**
  String get debugMode;

  /// No description provided for @signOut.
  ///
  /// In ja, this message translates to:
  /// **'サインアウト'**
  String get signOut;

  /// No description provided for @system.
  ///
  /// In ja, this message translates to:
  /// **'システム'**
  String get system;

  /// No description provided for @light.
  ///
  /// In ja, this message translates to:
  /// **'ライト'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In ja, this message translates to:
  /// **'ダーク'**
  String get dark;

  /// No description provided for @aiAdmin.
  ///
  /// In ja, this message translates to:
  /// **'AI管理'**
  String get aiAdmin;
}

class _L10nDelegate extends LocalizationsDelegate<L10n> {
  const _L10nDelegate();

  @override
  Future<L10n> load(Locale locale) {
    return SynchronousFuture<L10n>(lookupL10n(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr', 'ja', 'ko', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nDelegate old) => false;
}

L10n lookupL10n(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return L10nEn();
    case 'fr': return L10nFr();
    case 'ja': return L10nJa();
    case 'ko': return L10nKo();
    case 'zh': return L10nZh();
  }

  throw FlutterError(
    'L10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
