class SampleModel {
  static final items = [
    Item(
        id: 1,
        month: "1st of july",
        details: "Aswick - Airtel",
        account: "1006983669874123",
        amount: "12499.00",
        image:
            "https://is4-ssl.mzstatic.com/image/thumb/Purple112/v4/d9/d0/21/d9d0217b-9720-f5d5-1e73-a1a2a7bc1290/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/434x0w.webp"),
    Item(
        id: 1,
        month: "20th of August",
        details: "Aswick - JIO",
        account: "1006983669874173",
        amount: "1000.00",
        image:
            "http://www.pngimagesfree.com/LOGO/J/Jio/Reliance-Jio-Logo-PNG-HD.png"),
    Item(
        id: 1,
        month: "2nd of Septemper",
        details: "Aswick - TNEB",
        account: "1006984566974123",
        amount: "10080.00",
        image:
            "https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Tamil_Nadu_Electricity_Board_%28emblem%29.jpg/270px-Tamil_Nadu_Electricity_Board_%28emblem%29.jpg"),
    Item(
        id: 1,
        month: "10th of December",
        details: "Aswick - BSNL",
        account: "1009983669874123",
        amount: "100450.00",
        image:
            "https://4.bp.blogspot.com/-aEu_Y9121Aw/TkKgwHoKsEI/AAAAAAAAANo/8C5E6ZmCQhk/s320/bsnl-logo.jpg")
  ];
}

class Item {
  final int id;
  final String month;
  final String details;
  final String account;
  final String amount;
  final String image;

  Item(
      {required this.id,
      required this.month,
      required this.details,
      required this.account,
      required this.amount,
      required this.image});
}
