import 'package:dio/dio.dart';
import 'package:quran30/models/reciterModel.dart';

class RecitersService {
  Future<List<ReciterModel>> getallReciters() async {
    try {
      Response response = await Dio().get('https://quranicaudio.com/api/qaris');
      List<dynamic> data = response.data;
      List<ReciterModel> Reciters = [];
      for (var reciter in data) {
        ReciterModel model = ReciterModel.fromJson(reciter);
        Reciters.add(model);
      }
      return Reciters;
    } catch (e) {
      print(
        "====================================================================================================================",
      );
      print(e.toString());
      return [];
    }
  }
}
