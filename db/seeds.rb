# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Division(部署)テーブルに初期値を投入(全件削除して再投入)
Division.delete_all
Division.create(id: 1, code: 'HdO-01', name: '本社')
Division.create(id: 2, code: 'OSK-01', name: '大阪第１')
Division.create(id: 3, code: 'OSK-02', name: '大阪第２')
Division.create(id: 4, code: 'NGY-01', name: '名古屋営業所')
Division.create(id: 5, code: 'TKY-01', name: '東京支社')

# Type(種類)テーブルに初期値を投入(全件削除して再投入)
Type.delete_all
Type.create(id: 1, name: '大型')
Type.create(id: 2, name: '中型')
Type.create(id: 3, name: '小型')

# Place(場所)テーブルに初期値を投入(全件削除して再投入)
Place.delete_all
Place.create(id: 1, name: '大阪ビル', address: '大阪市なんとか区どこそこ町１−２−３')
Place.create(id: 2, name: '名古屋タワー', address: '名古屋市なんとか区どこそこ町７−５−８')
Place.create(id: 3, name: '東京港ショッピングモール', address: '東京都なんとか区ベイサイドエリア１０９')

# Status(状況)テーブルに初期値を投入(全件削除して再投入)
Status.delete_all
Status.create(id: 1, name: '担当未割当')
Status.create(id: 2, name: '実施待ち')
Status.create(id: 3, name: '実施中')
Status.create(id: 4, name: '完了')

# Result(結果)テーブルに初期値を投入(全件削除して再投入)
Result.delete_all
Result.create(id: 1, name: '合格')
Result.create(id: 2, name: '不合格')
Result.create(id: 3, name: '状態不明')
