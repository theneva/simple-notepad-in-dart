import 'dart:html';

class Notepad {
  TextAreaElement notepadTextArea;
  ButtonElement turnTextPinkButton;

  bool _isTextPink = false;

  Notepad() {
    notepadTextArea = querySelector('#notepadArea');
    notepadTextArea.onInput.listen(invalidateText);

    turnTextPinkButton = querySelector('#pinkTextButton');
    turnTextPinkButton.onClick.listen(turnTextPink);
  }

  void turnTextPink(Event e) {
    notepadTextArea.style.color = 'pink';
    _isTextPink = true;
  }

  void invalidateText(Event e) {
    notepadTextArea.style.color = 'blue';
    _isTextPink = false;
  }
}
