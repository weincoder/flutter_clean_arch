// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Home Page', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final appBarTextFinder = find.byValueKey('app-bar-title');
    final titleAlbumApiTextFinder = find.byValueKey('title-album-api');

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('evaluar que el titulo sea el esperado', () async {
      // Use the `driver.getText` method to verify the counter starts at 0.
      expect(await driver.getText(appBarTextFinder), "Arquitectura limpia");
    });

    test('respuesta del servicio', () async {
        String texto = await driver.getText(titleAlbumApiTextFinder);
        String expectedTitle = 'temporibus aliquam vel et consequuntur minima voluptate sunt';
        expect (texto,expectedTitle);
    });
  });
}
