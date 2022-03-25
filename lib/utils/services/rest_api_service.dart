import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

/**
 *  We do call the rest API to get, store data on a remote database
 *  for that we need to write the rest API call at a single place and
 *  need to return the data if the rest call is a success or need
 *  to return custom error exception on the basis of 4xx, 5xx status code.
 *  We can make use of http(https://pub.dev/packages/http) package to make the rest API call in the flutter
 */



initializeBack4AppApi() async{
 WidgetsFlutterBinding.ensureInitialized();
  final keyApplicationId = 'qSBRSRrG7NEwSeTdlBjCSxeUMw94ziE1M5Z2oWtc';
  final keyClientKey = 'H4BR20297e0mbo1WkmJT8N3PEu8UU5P5LPuxX4Yc';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);
}