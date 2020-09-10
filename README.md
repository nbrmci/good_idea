# GoodIdea.com

[![Image from Gyazo](https://i.gyazo.com/142dd13f7ecadfe378f27a418e1a3b9f.png)](https://gyazo.com/142dd13f7ecadfe378f27a418e1a3b9f)

### 【概要】
GoodIdea.comはユーザー同士が便利を共有するアプリケーションです。
少しでも「これ、便利だな」と思う物や知恵などを投稿することができます。

### 【背景】
家事と仕事の両立や、家事と育児をこなさなければいけないといったキャリアウーマン、主婦の方々がもっと楽になれる方法がこの世には存在していると考えています。
テレビなどでは取り上げられていない、その人だけの知恵などがきっとあるはずだと思い共有する場を作りたいと思いました。
ユーザー同士が共有し合うことで、その方の大変さを少しでも軽くすることに繋がればと思います。

### 【使い方】
ユーザー登録することで便利の投稿、編集、削除機能が使えます。
未登録ユーザーは便利の閲覧のみできます。
便利を編集するには、ログインした状態で投稿したものをクリックすると裏側に編集と削除リンクが表示されます。
便利の詳細もクリックすることで見れるようになっています。
[![Image from Gyazo](https://i.gyazo.com/5bf43241bf96851c3613868330df095c.gif)](https://gyazo.com/5bf43241bf96851c3613868330df095c)

便利を投稿するには、
* 商品名などのタイトル
* 画像（現在は１枚のみ投稿可能、今後もっと商品などのイメージがつきやすいように複数枚投稿の実装予定）
* 購入場所
* 便利だと思うポイントの説明、この４点は入力必須項目となっています。
[![Image from Gyazo](https://i.gyazo.com/e2074751441f12bebddec08515de7b08.png)](https://gyazo.com/e2074751441f12bebddec08515de7b08)

ユーザー新規登録画面
[![Image from Gyazo](https://i.gyazo.com/567b679ddc5c3b82348e94aab14fb580.png)](https://gyazo.com/567b679ddc5c3b82348e94aab14fb580)

登録後ログイン画面
[![Image from Gyazo](https://i.gyazo.com/d70a0f23dc929b383a6f59d9379656dd.png)](https://gyazo.com/d70a0f23dc929b383a6f59d9379656dd)

### 【デモ】
herokuを用いて本番環境にデプロイしています。
URL：https://good-idea27912.herokuapp.com/

◎テスト用アカウント
* 投稿者
　 mail：nbrmci@sample.com
　 password：nbr3mci3
* 未投稿者
　 mail：nbnb@sample.com
　 password：nb3nb3

### 【開発環境】
* HTML
* SCSS
* JavaScript(jQuery)
* Ruby on Rails

### 【今後の追加機能】
* 投稿にいいねができるようにする
* 画像の複数枚投稿
* 投稿、編集時の画像プレビュー機能
