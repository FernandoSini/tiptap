import 'package:youtube_api/youtube_api.dart';

// const API_KEY = "AIzaSyCGqaNqW2N7cEM1ufSkwf3ZE2Ff5q_Gbgg"; //essa api ja esgotou por hoje
const API_KEY = "AIzaSyAIjE4ffwo1gdqs3nmT7sXDfMz6TSZ6ZXM";
const CHANNEL_ID = "UCj9R9rOhl81fhnKxBpwJ-yw";
const URL_BASE = "https://www.googleapis.com/youtube/v3/search";

class YoutubeServices {
  List<YouTubeVideo> videoList = [];
  Future<List<YouTubeVideo>?> getChannelVideos() async {
    //String? query = "podpah";
    try {
      YoutubeAPI ytApi = YoutubeAPI(
        API_KEY,
      );
      videoList = await ytApi.channel(CHANNEL_ID);

      return videoList;
    } catch (e) {
      rethrow;
    }
  }
}
