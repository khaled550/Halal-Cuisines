import 'package:firebase_database/firebase_database.dart';
import 'package:halal_cuisines/models/recipe.dart';

class Dao {
  final DatabaseReference _recipesRef =
      FirebaseDatabase.instance.reference().child('recipes');

  void saveMessage(Recipe recipe) {
    _recipesRef.push().set(recipe.toJson());
  }

  Query getMessageQuery() {
    return _recipesRef;
  }
}
