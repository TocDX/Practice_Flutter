// void main(){
//   /// 함수 / 메서드
//   /// 프로그래밍에서 가장 기본이 되는 단위 중 하나.
//   /// 동작에 대한 단위
//   /// 리턴 타입 함수명(매개변수){
//   /// 함수 내 동작 할 코드
//   /// }
//   int num1 = 10;
//   int num2 = 20;
//
//   int sum = add(num1, num2);
//
//   print(sum);
// }
//
// int add(int num1, int num2){
//   return num1 + num2;
// }

// void main(){
//   /// 분기문과 반복문
//   /// 분기문 : 프로그램이 특정한 상황에 일을 할 지 / 하지 않고 넘길지
//   /// if / else || switch
//
//   /// if 문 / if - else 문
//   /// if(조건식) {
//   /// 조건식이 참일 경우 실행 코드
//   /// }if else(조건식2){
//   ///  맨 처음 조건식이 거짓이지만 조건식 2가 참일 경우 실행
//   /// }else{
//   /// 조건식이 거짓일 경우 실행
//   /// }
//   int standard = 3;
//
//   if (standard < 0){
//     print('여긴 찍히지 않음');
//   } else if(standard == 4){
//     print('찍힘');
//   } else{
//     print('거짓');
//   }
//
//
//   /// switch문
//   /// Flutter 3.10 / Dart 3.0 버전 이상부터 변경 된 부분이 조금 있는 문법 중 하나.
//   /// 일단 예시에서는 3.10 / 3.0 버전 기준으로 설명을 드리겠지만
//   /// 중간중간에 구 버전 (3.7버전 이하)에서 사용하는 방법도 있다
//   ///
//   /// switch (비교 대상){
//   ///   case (조건 식 1) :
//   ///   case (조건 식 2) :
//   ///     break or return 3.7버전 이하
//   ///   case (조건 식 3) :
//   ///   case (조건 식 4) :
//   ///   default
//   /// }
//   int num = 6;
//
//   switch ( num ) {
//     case 1:
//       print('Switch $num');
//     case 2:
//       print('Switch $num');
//     case 3:
//       print('Switch $num');
//     case 4:
//       print('Switch $num');
//     case 5:
//       print('Switch $num');
//       print('Answer');
//     case > 100:
//       print('Wow Big Number !! $num');
//     default:
//       print('Not 1 ~ 5');
//   }
// }

// void main(){
//   /// 반복문 : 특정한 코드의 반복을 컴퓨터에게 지시 할 때 사용하는 프로그래밍 문법
//   /// for / for in / while / do - while
//   /// continue / break
//   ///
//   /// for (기존 변수; 조건식; 가변치){
//   ///   조건식이 참 일 경우 반복할 코드
//   /// }
//
//   for (int i = 0; i < 10; i++){
//     print('Running For $i');
//   }
//
//   /// for (단일 변수 in 컬렉션(List / Set / Map){
//   ///   컬렉션 내에 요소들의 수 만큼 사용 될 반복문
//   /// }
//   List<int> indexs = [1,3,5,7,9];
//   for (final i in indexs){
//     print('number $i');
//   }
//
//   /// while (조건식){
//   /// 조건식이 참일 경우 실행 될 반복문
//   /// }
//   bool isRunning = true;
//   int count = 0;
//   while(isRunning){
//     if (count >= 5){
//       isRunning = false;
//     }
//     count++;
//     print('while is Running');
//   }
//
//   /// do - while
//   /// do {
//   ///   선행 진행 될 코드
//   ///
//   /// } while(조건);
//
//   int num = 0;
//
//   do {
//     num++;
//     if (num == 4){
//       continue;
//     }
//     print('While $num');
//   }while (num < 10);
//
// }

// void main(){
//   /// 예외처리 : 프로그램이 진행 중일 때 의도하였거나 / 의도하지 않은 상황에 대해서
//   /// 프로그램적으로 오류가 발생했을 때, 대처하는 방법
//   /// try - catch 문 : 가장 기본적인 예외처리문 / 많이 쓰이는 예외처리 문이기도 함.
//   /// finally 문 :
//   /// on 문
//   /// throw / rethrow
//
//
//   // try {
//   //   // 예외가 발생할 것으로 예상되는 코드
//   //   print(10 ~/ 0);
//   // }catch(error, stack){
//   //   /// 예외가 발생했을 때 실행 하고자 하는 코드
//   //   print(error);
//   //   print(stack);
//   // } finally{
//   //   /// 예외가 발생 했던, 하지 않았던, try 문 / catch 문 이후에 실행하고자 하는 코드
//   //   print('예외처리 문을 지나쳤습니다');
//   // }
//   // print('위의 에러 때문에 동작을 하지 않습니다');
//
//   int? num;
//   try{
//     throw Exception('Unknown Error');
//   } on UnsupportedError catch(e,s){
//     print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
//   } on TypeError catch(e,s){
//     print('Null 값이 참조 되었습니다.');
//   } catch(e,s){
//     rethrow;
//   }
//   print('위의 에러 때문에 동작을 하지 않습니다');
// }

import 'dart:async';

void main(){
  /// 비동기 프로그래밍
  /// 동기성 / 비동기성
  /// 동기 : 모든 코드가 순차적으로 진행되는 형태
  /// 비동기 : 코드가 동시다발적으로 실행되서, 순차적으로 보장을 할 수 없는 형태
  /// async / await / Future : 1회만 응답을 돌려받는 경우


  // Future<void> todo(int second) async {
  //   await Future.delayed(Duration(seconds: second));
  //   print('TODO Done in $second seconds');
  // }
  // todo(3);
  // todo(1);
  // todo(5);

  /// async* / yield / Stream : 지속적으로 응답을 돌려받는 경우

  Stream<int> todo() async*{
    int counter = 0;
    while(counter <= 10) {
      counter++;
      await Future.delayed(Duration(seconds: 1));
      print('TODO is Running $counter');
      yield counter;
    }

    print('TODO is Done');
  }
  todo().listen((event){});

}