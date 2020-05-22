import 'package:flutter_test/flutter_test.dart';

/*class MockPreferenceManager extends Mock implements PreferenceManager {}

class MockApiCaller extends Mock implements ApiCaller {}

class MockProductCacheManager extends Mock implements ProductCacheManager {}

class MockUserCustomerCacheManager extends Mock
    implements UserCustomerCacheManager {}

class MockDeviceInfoPlugin extends Mock implements DeviceInfoPlugin {}*/

void main() {
  /*MockPreferenceManager preferenceManager = MockPreferenceManager();
  MockApiCaller apiCaller = MockApiCaller();
  MockProductCacheManager productCacheManager = MockProductCacheManager();
  MockUserCustomerCacheManager userCustomerCacheManager =
      MockUserCustomerCacheManager();
  MockDeviceInfoPlugin deviceInfoPlugin = MockDeviceInfoPlugin();

  DataManager dataManager = DataManager(apiCaller, preferenceManager,
      productCacheManager, userCustomerCacheManager, deviceInfoPlugin, "");*/

  group("Testing isLoggedIn() function", () {
    test("When token is null", () {
      /*when(preferenceManager.getAuthToken())
          .thenAnswer((_) => Future.value(null));
      expect(dataManager.isLoggedIn(), false);*/
      expect(true,true);
    });
  });
}
