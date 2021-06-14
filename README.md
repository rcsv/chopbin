# chopbin
**chopbin: Chop a Binary file**, is a batch program that chops a single file with a large filesize and divides it into smaller ones.

Chopbin is used for people who is able to receive small attachment files because of their security policies.

I use it for a poor cooleague.

## How to use
Windows OSにて、メールに添付できない、あるいは送信先のセキュリティポリシーで受信できないサイズの `sample.zip` というファイルがあったとして、コマンドプロンプトから下記のように呼び出して使用します。
```cmd
> chopbin.cmd sample.zip
```
あるいは、分割したい対象ファイルをドラッグアンドドロップでchopbin.cmdファイルに重ねても、同じ効果が得られます。

```cmd
1.cab
2.cab
3.cab
4.cab
5.cab
...
```

分割ファイルは、最後の一つ以外はすべて同じファイルサイズとなります。設定値を何も変更しない場合、ファイル一つ一つは4MiBに分割されます。

