triple x = x + x + x
tripleUs x y = triple x + triple y
-- 基本的で明らかに正しい関数を組み合わせてより大きな関数を組み立てる
tripleSmallNumber x = if x > 100
                        then x
                        else x * 2
tripleSmallNumber' x = ( if x > 100 then x else x * 3) + 1
-- 'は少し変更したバージョンの関数に似た名前をつけるために利用されたり