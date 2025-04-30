sealed class CustomerEntity {
  final String id;
  final String name;
  final String email;

  CustomerEntity({
    required this.id,
    required this.name,
    required this.email,
  });
}

class LoggedCustomerEntity extends CustomerEntity {
  final String token;

  LoggedCustomerEntity({
    required super.id,
    required this.token,
    required super.name,
    required super.email,
  });
}

class NotLoggedCustomerEntity extends CustomerEntity {
  NotLoggedCustomerEntity({
    required super.id,
    required super.name,
    required super.email,
  });
}
