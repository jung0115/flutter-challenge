void main() {
  // 1.0 Hello World!-------------------------------------------------
  // Dart는 일부러 세미콜론을 안 쓸 때도 있음
  // 근데 그건 Dart의 기능이기 때문에 평소에는 세미콜론을 신경 쓸 것!
  print('Hello world!');

  // 1.1 Var Keyword -------------------------------------------------
  var name = '이름';
  name = 'name'; // 변수를 수정할 때는 같은 타입으로!
  String name2 = '이름이올시다'; // 명시적으로도 타입 지정 가능
  // 관습적으로 아래의 방식을 따름!
  // 함수, 메소드 내부의 지역 변수: var
  // class에서 변수, property 선언: 명시적 타입 지정

  // 1.2 Dynamic Type -------------------------------------------------
  // dynamic: 여러가지 타입을 가질 수 있는 변수에 지정되는 키워드
  var test; // 변수를 지정해주지 않았기 때문에 dynamic 타입
  test = '문자';
  test = 1;
  test = true; // 오류가 안 남
  dynamic dyn; // 명시적으로 dynamic이라고 지정 가능
  if (dyn is String) {
    // 내부에서는 dyn이 String이라는 것을 앎. String일 수밖에 없음.
  } else if (dyn is int) {
    // 여기서는 dyn이 int
  }
  // dynamic은 진짜 필요할 때만 사용할 것
}

// 1.3 Nullable Variables ----------------------------------------------
// Not Null Satety
bool isEmpty1(String string) => string.length == 0;

void test1() {
  //isEmpty1(null); // 에러
}
// 기본적으로 변수들은 Not Nullable

// Null Safety
bool isEmpty2(String? string) => string?.length == 0;
// string?.length에서 ?는 값이 존재하는지 확인하고 실행하게 함.

void test2() {
  isEmpty2(null); // 에러 사라짐.
}

// 1.4 Final Variables -------------------------------------------------
// 수정 불가능한 변수. 상수
final String one = '단 하나';
//one = '두 개'; // 상수를 수정하려고 하면 에러 발생

// 1.5 Late Variables --------------------------------------------------
void test_late() {
  late final String title;
  // api로 값 받아오던가 뭐 할 거 하고...
  title = '제목이다';
}

// 1.6 Constant Variables ----------------------------------------------
void test_const() {
  // final이랑 비슷함
  const yoyo = "요요";
  //yoyo = "요우"; // 에러. 값 변경 불가.

  // 중요! const는 compile-time에 알고 있는 값이어야 함.
  // API 요청으로 받아올 정보는 저장 불가. -> 이 경우 final을 이용할 것.
  // 스토어에 올리기 전에 값을 알고 있다면? const
}
