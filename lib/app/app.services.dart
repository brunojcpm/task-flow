import 'package:projects2/app/app.services.dart';

export '../data/services/contracts/http.service.contract.dart';
export '../data/services/dio_http.service.dart';
export 'app.services.dart';

class AppServices {
  final HttpService httpService;

  AppServices({required this.httpService});
}
