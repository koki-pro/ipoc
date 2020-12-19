# ✏️　Ipoc　- it's a piece of cake -

### ipocは良い習慣を身に付けるためのコミニケーションアプリです。ipocはit's a piece of cakeの頭文字を取っています。みんなで協力すればいい習慣を身に付けることなんか「楽勝」「朝飯前」という意味を込めています。
### 確認


## アプリケーション概要

### このアプリの目的は良い習慣を身に付けることです。アプリの内容は、1人では達成が困難な習慣を身に付けるために、達成したい習慣を1つ決め、毎日その目標が達成できたかを報告します。また、他の人の投稿を自由に見ることができ、いいねやコメントをすることができます。他の人からのフィードバックをもらえることで習慣の定着度を上げます。

# テーブル設計

## Usersテーブル

| Column   | Type   | Option      |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many tasks
- has_many comments

## Tasksテーブル

| Column | Type       | Option                         |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key, true |

###

- belongs_to user
- has_many comments

## Commentsテーブル

| Column | Type       | Option                         | 
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key, true |
| task   | references | null: false, foreign_key, true |

- belongs_to user
- belongs_to task

