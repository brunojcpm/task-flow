import 'package:projects2/data/services/services.module.dart';
import 'package:provider/provider.dart';

List<Provider> appModule() {
  return [
    ...servicesModule(),
  ];
}
