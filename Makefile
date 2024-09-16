help: ## ヘルプを表示します。
	@echo 'targetを下記から指定して実行してください'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

init: ## 初期化と諸々のコード生成を行います。
	flutter clean
	flutter pub get

	dart run auto_translator
	flutter gen-l10n

	dart run build_runner build --delete-conflicting-outputs

build_runner: ## build_runnerによるコード生成を行います。
	dart run build_runner build --delete-conflicting-outputs

build_runner_watch: ## build_runnerによるコード生成を監視する状態にします。
	dart run build_runner watch --delete-conflicting-outputs

translate: ## 多言語対応を実行します。
	dart run auto_translator
	flutter gen-l10n

dev: ## dev環境でアプリをビルドします。開発時は基本こちらを使用。
	flutter run

stg: ## stg環境でアプリをビルドします。
	flutter run --dart-define-from-file=scripts/flavors/stg.json

prd: ## prd環境でアプリをビルドします。
	flutter run --dart-define-from-file=scripts/flavors/prd.json

clean: ## ビルドキャッシュの削除を行います。
	flutter clean
