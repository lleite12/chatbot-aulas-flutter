enum ChatMessageType { sent, received }

class ChatMessage {
  final String name;
  final String text;
  final ChatMessageType type;
  final String hoursMinute = getHourMinute();

  ChatMessage({
    this.name,
    this.text,
    this.type = ChatMessageType.sent,
  });

  static String getHourMinute() {
    var now = DateTime.now();

    int hours = now.hour;
    int minute = now.minute;

    return "${hours.toString()} : ${minute.toString()}";
  }
}