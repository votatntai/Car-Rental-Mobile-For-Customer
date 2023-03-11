String baseUrl =
    'https://8087-2001-ee0-4f01-8d50-d904-2b8d-ba40-aa70.ap.ngrok.io/api/';
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
