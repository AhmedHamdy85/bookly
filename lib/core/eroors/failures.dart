import 'package:dio/dio.dart';

abstract class Failuers {
  final String errMessage;

  Failuers(this.errMessage);
}

class ServerFailuers extends Failuers {
  ServerFailuers(super.errMessage);

  factory ServerFailuers.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailuers('connection time out with api service');

      case DioErrorType.sendTimeout:
        return ServerFailuers('send time out with api service');
      case DioErrorType.receiveTimeout:
        return ServerFailuers('recive time out with api service');
      case DioErrorType.badCertificate:
        return ServerFailuers('Bad Certificate time out with api service');
      case DioErrorType.badResponse:
        return ServerFailuers.fromResponce(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailuers('Your reqwiste Canseld ,Please try agine later!');
      case DioErrorType.connectionError:
        return ServerFailuers(
            'Your internet connection is not stable,Please try agine later!');
      case DioErrorType.unknown:
        return ServerFailuers('Unkone erorr,Please try agine later!');
      default:
        return ServerFailuers('Unkone erorr,Please try agine later!');
    }
  }

  factory ServerFailuers.fromResponce(int statusCode, dynamic responce) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuers(responce['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailuers('Your reqiste not found ,Please try agine later!');
    } else if (statusCode == 500) {
      return ServerFailuers('Internal Server Erorr ,Please try agine later!');
    } else {
      return ServerFailuers('Opss ther is un knone erorr');
    }
  }
}
