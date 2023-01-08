/// id : 0
/// score : 0
/// pseudo : "Alex"
/// avatar : "url"
/// games : 1

class TriviaUser {
  TriviaUser({
    String? id,
    int score = 0,
    String? pseudo,
    String? avatar,
    int? games,
    String? date,
  }) {
    _id = id;
    _score = score;
    _pseudo = pseudo;
    _avatar = avatar;
    _games = games;
    _date = date;
  }

  TriviaUser.fromJson(dynamic json) {
    _id = json['id'].toString();
    _score = json['score'];
    _pseudo = json['pseudo'];
    _avatar = json['avatar'];
    _games = json['games'];
    _date = json['date'];
  }

  String? _id;
  int _score = 0;
  String? _pseudo;
  String? _avatar;
  int? _games;
  String? _date;

  String? get id => _id;

  int get score => _score;

  String? get pseudo => _pseudo;

  String? get avatar => _avatar;

  int? get games => _games;

  String? get date => _date;

  void setScore(int score) {
    _score = score;
  }

  void setDate(String date){
  _date = date;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['score'] = _score;
    map['pseudo'] = _pseudo;
    map['avatar'] = _avatar;
    map['games'] = _games;
    map['date'] = _date;
    return map;
  }
}
