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
Type.create(id: 1, name: '通常用')
Type.create(id: 2, name: '非常用')
Type.create(id: 3, name: '携帯用')

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
Result.create(id: 4, name: '検査前')

# Weather(天気)テーブルに初期値を投入(全件削除して再投入)
Weather.delete_all
Weather.create(id: 1, name: '晴')
Weather.create(id: 2, name: '曇')
Weather.create(id: 3, name: '雨')
Weather.create(id: 4, name: '雪')

# Checkresult(チェック結果)テーブルに初期値を投入(全件削除して再投入)
Checkresult.delete_all
Checkresult.create(id: 1, name: '優')
Checkresult.create(id: 2, name: '良')
Checkresult.create(id: 3, name: '可')
Checkresult.create(id: 4, name: '不可')


##########################
### テスト用にデータを入れる（超暫定)
##########################

# Worker(作業者)テーブルにテスト用初期値を投入（全件削除して再投入）
Worker.delete_all
Worker.create(id: 1, name: "山田 たろこ", division_id: 1)
Worker.create(id: 2, name: "浪速 あきこ", division_id: 2)
Worker.create(id: 3, name: "道頓堀 たろう", division_id: 3)
Worker.create(id: 4, name: "名古屋 じょうたろう", division_id: 4)
Worker.create(id: 5, name: "東京 はとこ", division_id: 5)

# Equipment(設備)テーブルにテスト用初期値を投入（全件削除して再投入）
Equipment.delete_all
Equipment.create(id: 1, name: "屋外特設会場用", type_id: 1, place_id: 1, division_id: 2)
Equipment.create(id: 2, name: "災害対策用", type_id: 2, place_id: 2, division_id: 4)
Equipment.create(id: 3, name: "イベント貸出用", type_id: 3, place_id: 3, division_id: 5)

# Inspection(点検)テーブルにテスト用初期値を投入（全件削除して再投入）
Inspection.delete_all
Inspection.create(id: 1, targetyearmonth: "201503", equipment_id: 1, status_id: 2, worker_id: 2, result_id: 4, processingdate: "2015-03-01")
Inspection.create(id: 2, targetyearmonth: "201503", equipment_id: 2, status_id: 2, worker_id: 4, result_id: 4, processingdate: "2015-03-01")
Inspection.create(id: 3, targetyearmonth: "201503", equipment_id: 3, status_id: 2, worker_id: 5, result_id: 4, processingdate: "2015-03-01")