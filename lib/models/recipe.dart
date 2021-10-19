import 'package:flutter/material.dart';

class Recipe {
  final String recipe_name,
      ingredients,
      preparation,
      video_url,
      language,
      recipe_imge;
  final int recipe_id,
      category_id,
      cuisine_id,
      calories,
      fats,
      carbohydrates,
      ppl_serve,
      preparation_time;
  final bool favorrite;

  Recipe(
      this.recipe_name,
      this.ingredients,
      this.preparation,
      this.video_url,
      this.language,
      this.recipe_imge,
      this.recipe_id,
      this.category_id,
      this.cuisine_id,
      this.calories,
      this.fats,
      this.carbohydrates,
      this.ppl_serve,
      this.preparation_time,
      this.favorrite);

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'recipe_name': recipe_name.toString(),
        'ingredients': ingredients.toString(),
        'preparation': preparation.toString(),
        'video_url': video_url.toString(),
        'language': language.toString(),
        'recipe_imge': recipe_imge.toString(),
        'recipe_id': recipe_id.toString(),
        'category_id': category_id.toString(),
        'cuisine_id': cuisine_id.toString(),
        'calories': calories.toString(),
        'fats': fats.toString(),
        'carbohydrates': carbohydrates.toString(),
        'ppl_serve': ppl_serve.toString(),
        'preparation_time': preparation_time.toString(),
        'favorrite': favorrite.toString(),
      };
}
