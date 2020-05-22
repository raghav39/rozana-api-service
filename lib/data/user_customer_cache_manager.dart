import 'package:rozana_api_service/data/model/dto/user_customer.dart';

class UserCustomerCacheManager {
  Map<int, UserCustomer> _userCustomers;
  DateTime _lastUpdated;

  /// time in millis to define validity of cache after refresh
  int cacheValidity;

  UserCustomerCacheManager(this.cacheValidity) : _lastUpdated = DateTime.now();

  UserCustomer getUserCustomer({int customerId}) {
    if (_lastUpdated.millisecondsSinceEpoch + cacheValidity <
        DateTime.now().millisecondsSinceEpoch) {
      _userCustomers = null;
    }
    if (_userCustomers == null) {
      return null;
    }
    int index = customerId ?? 0;
    return _userCustomers[index];
  }

  List<UserCustomer> getAllUserCustomers() {
    if (_lastUpdated.millisecondsSinceEpoch + cacheValidity <
        DateTime.now().millisecondsSinceEpoch) {
      _userCustomers = null;
    }
    if (_userCustomers == null) {
      return null;
    }
    return List.from(_userCustomers.values);
  }

  void updateUserCustomer(UserCustomer userCustomer) {
    if (_userCustomers == null) {
      _userCustomers = Map();
    }
    _userCustomers.update(
      userCustomer.customer.id,
      (UserCustomer userCustomer) {
        return userCustomer;
      },
      ifAbsent: () {
        return userCustomer;
      },
    );
    _lastUpdated = DateTime.now();
  }

  void updateUserCustomers(List<UserCustomer> userCustomers) {
    userCustomers.forEach((userCustomer) {
      updateUserCustomer(userCustomer);
    });
  }
}
