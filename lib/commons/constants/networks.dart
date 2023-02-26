String baseUrl =
    'https://a594-2001-ee0-4f00-abd0-b08d-920a-519d-17a4.ap.ngrok.io';
const int connectTimeout = 15000;
const int receiveTimeout = 15000;
const int sendTimeout = 15000;

mixin StatusCodes {
  static const int status200OK = 200;
  static const int status201Created = 201;
  static const int status204NoContent = 204;
  static const int status400BadRequest = 400;
  static const int status401Unauthorized = 401;
  static const int status403Forbidden = 403;
  static const int status404NotFound = 404;
}
