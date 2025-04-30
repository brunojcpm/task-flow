import 'package:projects2/data/services/services.module.dart';
import 'package:provider/provider.dart';

export 'contracts/http.service.contract.dart';
export 'dio_http.service.dart';
export 'services.module.dart';

List<Provider> servicesModule() {
  return [
    Provider(
      create: (_) => DioHttpService(),
    ),
  ];
}
