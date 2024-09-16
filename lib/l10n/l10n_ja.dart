import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get helloWorld => 'こんにちは';

  @override
  String get debug => 'デバッグ';

  @override
  String get goodBye => 'さようなら';

  @override
  String get chat => 'チャット';

  @override
  String get typeAMessage => 'メッセージを入力してください';

  @override
  String get signIn => 'サインイン';

  @override
  String get signUp => 'サインアップ';

  @override
  String get mailAddress => 'メールアドレス';

  @override
  String get password => 'パスワード';

  @override
  String get userName => 'ユーザー名';

  @override
  String get talk => 'トーク';

  @override
  String get selectAis => '友達を選択してください';

  @override
  String get create => '作成';

  @override
  String get selectLanguage => '言語選択';

  @override
  String get selectLanguageCaution => '※ 言語を変更すると、アプリの表示言語が即時に切り替わります。';

  @override
  String get close => '閉じる';

  @override
  String get language => '言語';

  @override
  String get themeMode => 'テーマ';

  @override
  String get license => 'ライセンス';

  @override
  String get debugMode => 'デバッグモード';

  @override
  String get signOut => 'サインアウト';

  @override
  String get system => 'システム';

  @override
  String get light => 'ライト';

  @override
  String get dark => 'ダーク';

  @override
  String get aiAdmin => 'AI管理';
}
