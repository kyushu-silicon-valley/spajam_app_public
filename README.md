# AIのとも
![スライド](./_src/img.png)
## このリポジトリについて
[Spajam2024 第4回九州予選](https://spajam.jp/)にてチーム「Nova5」が企画・開発したアプリケーション「AIのとも」のソースコードを公開するリポジトリです。

ハッカソンの開発テーマは「とも」

開発時にコミット履歴やコードの一部にAPIキーが含まれたため念の為新規リポジトリでの公開としています。

## アプリケーション概要

テーマの「とも」を「友達」の「友」と解釈し企画を考案しました。

現実で友人関係を気づくのが苦手な人・SNS疲れになってしまった人・社会人になり友人と疎遠になった人。そのような方に、今までにない、**新しい形の友達**を提案するアプリです。

特徴は大きく２つで
1. 複数のAIとだけ会話をすることができる
2. AIの性格や特徴を自分で設定することができる

です。


## 資料

[当日発表スライド](https://drive.google.com/file/d/1j7q1XPtnWSwX1kKWIUGfTk2wkzQ2UUOJ/view?usp=sharing)

このスライドの作成は[irusiru](https://irusiru.jp/)を利用して作成した雛形を加筆修正したものです。

一部素材には[canva](https://www.canva.com/)と[unDraw](https://undraw.co/)を利用しています。


## 技術構成
- flutter
- supabase : DB, 認証, 画像ストレージとして使用
- openAI API : AIの返答生成に使用

## 機能
- AIとのグループチャット
- AIの作成と管理画面
- 自動翻訳を用いた多言語対応
- ダークモード対応

## ER図
```mermaid
erDiagram
    USERS ||--o{ ROOMS : "作成する"
    USERS ||--o{ AI_INFOS : "管理する"
    ROOMS ||--|{ ROOM_AI_RELATIONS : "AIを持つ"
    AI_INFOS |o--|{ ROOM_AI_RELATIONS : "参加する"
    ROOMS ||--o{ CHATS : "含む"
    USERS ||--o{ CHATS : "送信する"
    AI_INFOS ||--o{ CHATS : "送信する"

    USERS {
        string id PK "UUID"
        string name "ユーザー名"
        boolean is_admin "管理者フラグ"
        timestamp created_at
        timestamp updated_at
    }

    AI_INFOS {
        string id PK "UUID"
        string name "AI名"
        text prompt "AI設定プロンプト"
        string admin_id FK "管理者ユーザーID"
        timestamp created_at
        timestamp updated_at
    }

    ROOMS {
        string id PK "UUID"
        string name "ルーム名"
        string user_id FK "オーナーユーザーID"
        timestamp created_at
        timestamp updated_at
    }

    ROOM_AI_RELATIONS {
        string id PK "UUID"
        string room_id FK
        string ai_id FK
        timestamp created_at
    }

    CHATS {
        string id PK "UUID"
        string sender_type "送信者タイプ（USERまたはAI）"
        string sender_id FK "送信者ID"
        string room_id FK
        text content "メッセージ内容"
        timestamp created_at
    }
```


