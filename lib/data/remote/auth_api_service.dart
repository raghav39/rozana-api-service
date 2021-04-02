import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/jwt_token.dart';
import 'package:rozana_api_service/data/model/dto/login_vm.dart';
import 'package:rozana_api_service/data/model/dto/user_customer.dart';

part 'auth_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class AuthApiService extends ChopperService {

  static AuthApiService create([ChopperClient? client]) => _$AuthApiService(client);

  @Post(path: "register")
  Future<Response<void>> registerCustomer(@Body() UserCustomer userCustomer);

  @Get(path: "activate")
  Future<Response<void>> activateCustomer(
      @Query() String key, @Query() String login);

  @Post(path: "authenticate")
  Future<Response<JWTToken>> authenticateUser(@Body() LoginVm loginVm);
}
