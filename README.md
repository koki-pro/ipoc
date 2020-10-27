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

| Column | Type   | Option      |
| ------ | ------ | ----------- |
| title  | string | null: false |
| text   | text   | null: false |

###

- belongs_to user
- has_many comments

## Commentsテーブル

| Column | Type | Option      | 
| ------ | ---- | ----------- |
| text   | text | null: false |

- belongs_to user
- belongs_to task

