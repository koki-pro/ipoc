# 💪Ipoc　- it's a piece of cake -

 このアプリは良い習慣を身に付けるためのコミニケーションアプリです。<br>
 ipocはit's a piece of cakeの頭文字を取っていて、みんなで協力すればいい習慣を身に付けることなんか「楽勝」「朝飯前」という意味を込めています。



## 💪アプリケーション概要

このアプリの目的は良い習慣を身に付けることです。アプリの内容は、身につけたい習慣を設定し共有します。そして、その目的が達成できているかどうかを投稿します。お互いに習慣を身につけられているかどうかを監視することで緊張感を持たせ達成しやすくしています。

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

