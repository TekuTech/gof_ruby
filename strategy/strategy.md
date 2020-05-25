# Strategyパターン

## 要約
アルゴリズムを切り替える。

## 使い所
処理を切り替えたいときは結構あるので、そのときに使えそう。

また、具体的戦略は本の通りクラスを作成して委譲するかたちにしたが、
`player1 = Player.new('Taro', WinningStrategy.new)`

Procオブジェクトを使って関数をオブジェクト化してしまうやり方もある。
こっちの方がRubyっぽいかも。
```ruby
# hoge.rb
def initialize(&block)
  @strategy = block
end

def execute
  strategy.call(self)
end

# コンストラクタに対してブロックを渡し、callする
Hoge.new do |context|
  # 処理
end
```
