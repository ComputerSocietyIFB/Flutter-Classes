// Lista de imagens para os posts
import 'dart:math';

import 'model/post.dart';

// Lista de imagens
List images = [
  'https://cdn.pixabay.com/photo/2020/04/24/10/23/pier-5086290__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/26/08/28/soil-5342049__340.jpg',
  'https://cdn.pixabay.com/photo/2020/04/13/17/16/netherlands-5039354__340.jpg',
  'https://cdn.pixabay.com/photo/2020/04/09/11/42/dogs-5021084__340.jpg',
  'https://cdn.pixabay.com/photo/2017/03/03/09/43/macro-2113633__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/26/14/42/architect-5342907__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/28/08/50/eastern-grey-kangaroo-5348449__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/27/05/27/squirrel-5344700__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/25/21/03/dog-5340892__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/23/08/05/conqueror-5331783__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/24/14/24/collared-5336405__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/25/16/01/cat-5340083__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/21/14/20/wolf-5325060__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/18/17/08/sunset-5314319_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/06/16/12/23/girl-5305455__340.jpg',
  'https://cdn.pixabay.com/photo/2020/06/25/16/57/snowy-owl-5340192__340.jpg',
];

// Lista de autores
List authors = List.generate(15, (index) => 'Author ${index + 1}');

// Lista de posts
List posts = List.generate(
  35,
  (index) => Post(
    id: index + 1,
    author: authors[Random().nextInt(authors.length)],
    imgUrl: images[Random().nextInt(images.length)],
  ),
)..add(
    Post(
      id: 300,
      author: 'Thiago Silva',
      imgUrl:
          'https://avatars1.githubusercontent.com/u/37230912?s=400&u=ff6b0f67a00b6342e2e427de0a43788dccab6581&v=4',
    ),
  );
