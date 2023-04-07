// 5일차 코드 챌린지
// Use class
class Dictionary {
  Word words;

  Dictionary(this.words);

  // add: 단어를 추가함
  void add({
    required String term,
    required String definition,
  }) {
    words[term] = definition;
  }

  // get: 단어의 정의를 리턴함.
  String? get({required String term}) {
    return words[term];
  }

  // delete: 단어를 삭제함.
  void delete({required String term}) {
    words.remove(term);
  }

  // update: 단어를 업데이트 함.
  void update({
    required String term,
    required String definition,
  }) {
    words.update(term, (value) => definition);
  }

  // showAll: 사전 단어를 모두 보여줌.
  void showAll() {
    print(words);
  }

  // count: 사전 단어들의 총 갯수를 리턴함.
  int count() {
    return words.length;
  }

  // upsert 단어를 업데이트 함. 존재하지 않을시. 이를 추가함. (update + insert = upsert)
  void upsert({
    required String term,
    required String definition,
  }) {
    words[term] = definition;
  }

  // exists: 해당 단어가 사전에 존재하는지 여부를 알려줌
  bool exists({required String term}) {
    if (words[term] == null) return false;
    return true;
  }

  // Use List
  // bulkAdd: 여러개의 단어를 한번에 추가할 수 있게 해줌.
  void bulkAdd(List<Word> addWords) {
    addWords.forEach((word) {
      String term = word['term'] ?? 'null';
      String definition = word['definition'] ?? 'null';
      if (word['term'] != 'null' && word['definition'] != 'null')
        add(term: term, definition: definition);
    });
  }

  // bulkDelete: 여러개의 단어를 한번에 삭제할 수 있게 해줌.
  void bulkDelete(List<String> deleteWords) {
    deleteWords.forEach((word) {
      delete(term: word);
    });
  }
}

// Use typedef, Use Map
typedef Word = Map<String, String>;

void main() {
  var dictionary = Dictionary({});

  // add: 단어를 추가함.
  dictionary.add(
    term: "사과",
    definition: "맛있다.",
  );
  dictionary.add(
    term: "오이",
    definition: "길다.",
  );

  // get: 단어의 정의를 리턴함.
  print(dictionary.get(term: '사과'));

  // delete: 단어를 삭제함.
  dictionary.delete(term: '사과');

  // update: 단어를 업데이트 함.
  dictionary.update(term: '오이', definition: '초록색이다.');

  // showAll: 사전 단어를 모두 보여줌.
  dictionary.showAll();

  // count: 사전 단어들의 총 갯수를 리턴함.
  print(dictionary.count());

  // upsert 단어를 업데이트 함. 존재하지 않을시. 이를 추가함. (update + insert = upsert)
  dictionary.upsert(term: '오이', definition: '채소다.');
  dictionary.upsert(term: '오렌지', definition: '상큼하다.');

  // exists: 해당 단어가 사전에 존재하는지 여부를 알려줌
  print(dictionary.exists(term: '오이'));
  print(dictionary.exists(term: '고구마'));

  // bulkAdd: 여러개의 단어를 한번에 추가할 수 있게 해줌.
  dictionary.bulkAdd([
    {
      "term": "김치",
      "definition": "한국 음식",
    },
    {
      "term": "스시",
      "definition": "일본 음식",
    },
  ]);

  // bulkDelete: 여러개의 단어를 한번에 삭제할 수 있게 해줌.
  dictionary.bulkDelete(['김치', '스시']);
}
