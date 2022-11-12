import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  const FittedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerWidth = 300;
    double containerHeight = 50;
    double sizedBoxHeight = 25;
    double sizedBoxWidth = 25;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Fitted box 非適用
              Text('Fitted box 非適用'),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: Colors.blueAccent,
                  ),
                ),
                width: containerWidth,
                height: containerHeight,
                child: const Text(
                  'Fitted Box is not applied',
                  style: TextStyle(
                    backgroundColor: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),

              // Fitted box 適用
              Text('Fitted box 適用'),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: Colors.blueAccent,
                  ),
                ),
                width: containerWidth,
                height: containerHeight,
                child: const FittedBox(
                  child: Text(
                    'Apply Fitted Box',
                    style: TextStyle(
                      backgroundColor: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),

              // BoxFit 種類
              // fill: アスペクト比を変えて、親要素の幅・高さに合わせる
              Text('BoxFit: fill'),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: Colors.blueAccent,
                  ),
                ),
                width: containerWidth,
                height: containerHeight,
                child: const FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    'Apply Fitted Box',
                    style: TextStyle(
                      backgroundColor: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),

              // contain: 親要素内におさめ、また子要素のアスペクト比を崩さずに可能な限り大きくする
              Text('BoxFit: contain'),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: Colors.blueAccent,
                  ),
                ),
                width: containerWidth,
                height: containerHeight,
                child: const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Apply Fitted Box',
                    style: TextStyle(
                      backgroundColor: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),

              // cover: 親要素全体を埋めつつ、子要素のサイズをできるだけ小さくする
              Text('BoxFit: cover'),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: Colors.blueAccent,
                  ),
                ),
                width: 100,
                height: 25,
                child: const FittedBox(
                  fit: BoxFit.cover,
                  // はみ出した部分を切り取る場合は、clipBehaviorプロパティを使用する
                  clipBehavior: Clip.hardEdge,
                  child: Text(
                    'Apply Fitted Box',
                    style: TextStyle(
                      backgroundColor: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),

              // fitWidth, fitHeight
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      // fitWidth: 親要素から垂直方向にはみ出しても、子要素の幅はおさまるように表示する
                      Text('BoxFit: fitWidth'),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Colors.blueAccent,
                          ),
                        ),
                        width: 150,
                        height: 50,
                        child: const FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'Apply Fitted\r\nBox',
                            style: TextStyle(
                              backgroundColor: Colors.greenAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: sizedBoxWidth,
                  ),
                  Column(
                    children: [
                      // fitHeight: 親要素から水平方向にはみ出しても、子要素の高さはおさまるように表示する
                      Text('BoxFit: fitHeight'),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Colors.blueAccent,
                          ),
                        ),
                        width: 100,
                        height: 75,
                        child: const FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(
                            'Apply Fitted\r\nBox',
                            style: TextStyle(
                              backgroundColor: Colors.greenAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),

              // none: 子要素を親要素に配置（デフォルトはセンタリング）し、親要素の外部分はすべて破棄して表示する
              Text('BoxFit: none'),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: Colors.blueAccent,
                  ),
                ),
                width: 50,
                height: 50,
                child: FittedBox(
                  fit: BoxFit.none,
                  child: Text(
                    'Apply Fitted\r\nBox',
                    style: TextStyle(
                      fontSize: 25,
                      backgroundColor: Colors.greenAccent.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),

              // scaleDown: 子要素を親要素に配置（デフォルトはセンタリング）し、必要に応じて小さくおさまるように表示
              Text('BoxFit: scaleDown'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Container 小サイズ
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: Colors.blueAccent,
                      ),
                    ),
                    width: 100,
                    height: 50,
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Apply Fitted Box',
                        style: TextStyle(
                          fontSize: 100,
                          backgroundColor: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  // Container 大サイズ
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: Colors.blueAccent,
                      ),
                    ),
                    width: 200,
                    height: 50,
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Apply Fitted Box',
                        style: TextStyle(
                          fontSize: 100,
                          backgroundColor: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
