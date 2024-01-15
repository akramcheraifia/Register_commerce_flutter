
This file defines a `FirstScreen` class, which is a stateless widget in Flutter. It represents the first screen of an app and contains a registration form.


The child of the `Center` widget is a `Column` widget, which arranges its children in a vertical column. Inside the `Column`, there are several widgets:

1. A `Text` widget displaying the text "Registre Commerce \nMobile" with a font size of 30 and bold font weight. The text is centered using the `textAlign` property.

2. A `SizedBox` widget with a height of 100, creating a vertical space between the text and the buttons.

3. An `ElevatedButton` widget with the label "S'inscrire" (French for "Sign up"). When pressed, it navigates to the `SignupScreen` using the `Navigator.push` method.

4. Another `ElevatedButton` widget with the label "Se connecter" (French for "Log in"). When pressed, it navigates to the `LoginScreen` using the `Navigator.push` method.

5. A `TextButton` widget with the label "Mot de passe oublié?" (French for "Forgot password?"). It doesn't have an `onPressed` callback defined, so it doesn't perform any action when pressed.
