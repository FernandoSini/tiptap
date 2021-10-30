import 'package:youtube_api/youtube_api.dart';

const apiKey = "AIzaSyCGqaNqW2N7cEM1ufSkwf3ZE2Ff5q_Gbgg";
// const apiKey =
//     "AIzaSyAIjE4ffwo1gdqs3nmT7sXDfMz6TSZ6ZXM"; //essa api ja esgotou por hoje
// const apiKey = "";
const channelId = "UCj9R9rOhl81fhnKxBpwJ-yw";
const urlBase = "https://www.googleapis.com/youtube/v3/search";

class YoutubeServices {
  List<YouTubeVideo> videoList = [];
  Future<List<YouTubeVideo>?> getChannelVideos() async {
    //String? query = "podpah";
    try {
      YoutubeAPI ytApi = YoutubeAPI(
        apiKey,
      );
      videoList = await ytApi.channel(channelId);

      return videoList;
    } catch (e) {
      rethrow;
    }
  }
}
