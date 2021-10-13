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
}
