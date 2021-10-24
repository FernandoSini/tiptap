import 'package:youtube_api/youtube_api.dart';

const API_KEY = "AIzaSyCGqaNqW2N7cEM1ufSkwf3ZE2Ff5q_Gbgg";
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
