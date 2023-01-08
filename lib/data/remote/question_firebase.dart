import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertrivialp/data/entities/Results.dart';
import 'package:fluttertrivialp/data/repositories/question_repository.dart';
import 'package:intl/intl.dart';

class QuestionFirebase {
  static final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static QuestionFirebase? _instance;

  static late final CollectionReference<Results> _questionRef;

  QuestionFirebase._();

  static QuestionFirebase getInstance() {
    if (_instance == null) {
      _questionRef = _firebaseFirestore.collection('questionOfTheDay').withConverter(
          fromFirestore: (snapshot, _) => Results.fromJson(snapshot.data()!),
          toFirestore: (Question, _) => Question.toJson());
      _instance = QuestionFirebase._();
    }
    return _instance!;
  }

  Future<void> insertQuestion(Results question) async {
    DateTime today = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    String dateToday = formatter.format(today);
    QuerySnapshot<Results> questions = await _questionRef.get();
    await _questionRef.doc(dateToday).set(question);
  }

  Future<QuerySnapshot<Results>> getQuestions() async {
    return await _questionRef.get();
  }

  Future<void> deleteQuestion() async {
    QuerySnapshot<Results> questions = await _questionRef.get();
    return _questionRef.doc(questions.docs.first.id).delete();
  }
}