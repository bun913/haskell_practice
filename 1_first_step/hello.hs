triple x = x + x + x

tripleUs x y = triple x + triple y

-- 基本的で明らかに正しい関数を組み合わせてより大きな関数を組み立てる
tripleSmallNumber x =
  if x > 100
    then x
    else x * 2

tripleSmallNumber' x = (if x > 100 then x else x * 3) + 1

-- 'は少し変更したバージョンの関数に似た名前をつけるために利用されたり

-- 直角三角形を見つける課題関数
isRightTriangle = [(a, b, c) | c <- [1 .. 10], a <- [1 .. 10], b <- [1 .. 10]]

-- 最初に解の候補となる集合を生成し、それから１つの解になるまで変換とフィルタリングを行うという手法は関数プログラミングでよく使われる手法とのこと
isRightTriangle' = [(a, b, c) | c <- [1 .. 10], a <- [1 .. c], b <- [1 .. a], a ^ 2 + b ^ 2 == c ^ 2, a + b + c == 24]
