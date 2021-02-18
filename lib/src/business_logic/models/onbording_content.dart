import 'package:letstravel/src/presentation/util/icons_path.dart';
import 'package:letstravel/src/presentation/util/images_path.dart';

class OnbordingContent {
  String image;
  String title;
  String discription;

  OnbordingContent({this.image, this.title, this.discription});
}

List<OnbordingContent> contents = [
  OnbordingContent(
      title: "Let's Travel",
      image: INTRO_IMAGE,
      discription: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab alias at atque aut commodi cupiditate ea eum facilis fugit... "
  ),
  OnbordingContent(
      title: "Let's Travel",
      image: INTRO_SECOND_IMAGE,
      discription: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab alias at atque aut commodi cupiditate ea eum facilis fugit..."
  ),
];