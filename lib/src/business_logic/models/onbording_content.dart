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
      title: 'FIRST SCREEN',
      image: INTRO_IMAGE,
      discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "
  ),
  OnbordingContent(
      title: 'SECOND SCREEN',
      image: INTRO_SECOND_IMAGE,
      discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "
  ),
];