# Decoratorパターン

## 要約
元のオブジェクトを変更せず、委譲でオブジェクトに機能を追加する。

## 使い所
RailsではDraperを使うことが多いので、Decoratorというクラスを見るのは結構多いかもしれない。
`obj.decorate`とすると、対象のオブジェクトが`ObjDecorator`でラッピングされ、以下のようになる。

```
#<ObjDecorator:0x00000000000
   @context={},
   @object=
    #<Obj:0x000000000000
     id: 1,
     created_at: Tue, 26 May 2020 21:16:06 JST +09:00,
     updated_at: Tue, 26 May 2020 21:16:06 JST +09:00>
>
```

この状態でメソッドを呼び出すと`ObjDecorator > ObjDecoratorのSuperClass > Obj`の順にメソッドを探索してくれる。
