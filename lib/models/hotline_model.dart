//สร้าง Class โครงสร้างข้อมูลหลัก
class Hotline {
  final String name;
  final String phoneDisplay;
  final String imageName;

  Hotline({
    required this.name,
    required this.phoneDisplay,
    required this.imageName,
  });
}

// A: สอบถามข้อมูลการเดินทาง
List<Hotline> travelList = [
  Hotline(name: 'กรมทางหลวงชนบท', phoneDisplay: '1146', imageName: '1146.png'),
  Hotline(name: 'ตำรวจท่องเที่ยว', phoneDisplay: '1155', imageName: '1155.png'),
  Hotline(name: 'ตำรวจทางหลวง', phoneDisplay: '1193', imageName: '1193.png'),
  Hotline(name: 'ข้อมูลจราจร', phoneDisplay: '1197', imageName: '1197.png'),
  Hotline(name: 'ขสมก.', phoneDisplay: '1348', imageName: '1348.png'),
  Hotline(name: 'บขส.', phoneDisplay: '1490', imageName: '1490.png'),
  Hotline(
      name: 'เส้นทางบนทางด่วน', phoneDisplay: '1543', imageName: '1543.png'),
  Hotline(name: 'กรมทางหลวง', phoneDisplay: '1586', imageName: '1586.png'),
  Hotline(
      name: 'การรถไฟแห่งประเทศไทย',
      phoneDisplay: '1690',
      imageName: '1690.png'),
];

//B: แจ้งอุบัติเหตุ-เหตุฉุกเฉิน
List<Hotline> accidentList = [
  Hotline(name: 'เหตุด่วนเหตุร้าย', phoneDisplay: '191', imageName: '191.png'),
  Hotline(
      name: 'แจ้งไฟไหม้ สัตว์เข้าบ้าน',
      phoneDisplay: '199',
      imageName: '199.png'),
  Hotline(name: 'สายด่วนรถหาย', phoneDisplay: '1192', imageName: '1192.png'),
  Hotline(
      name: 'อุบัติเหตุทางน้ำ', phoneDisplay: '1196', imageName: '1196.png'),
  Hotline(name: 'แจ้งคนหาย', phoneDisplay: '1300', imageName: '1300.png'),
  Hotline(
      name: 'ศูนย์ปลอดภัยคมนาคม', phoneDisplay: '1356', imageName: '1356.png'),
  Hotline(
      name: 'หน่วยแพทย์กู้ชีพ', phoneDisplay: '1554', imageName: '1554.png'),
  Hotline(name: 'ศูนย์เอราวัณ', phoneDisplay: '1646', imageName: '1646.png'),
  Hotline(name: 'เจ็บป่วยฉุกเฉิน', phoneDisplay: '1669', imageName: '1669.png'),
];

// ข้อมูลหมวด C: ธนาคาร
List<Hotline> bankList = [
  Hotline(name: 'ธนาคารกรุงเทพ', phoneDisplay: '1333', imageName: '1333.png'),
  Hotline(name: 'ธนาคารออมสิน', phoneDisplay: '1115', imageName: '1115.png'),
  Hotline(
      name: 'ธนาคารกสิกรไทย',
      phoneDisplay: '02 888 8888',
      imageName: '028888888.png'),
  Hotline(
      name: 'ธนาคารกรุงไทย',
      phoneDisplay: '02 111 1111',
      imageName: '021111111.png'),
  Hotline(name: 'ธนาคารกรุงศรี', phoneDisplay: '1572', imageName: '1572.png'),
  Hotline(
      name: 'ทีเอ็มบีธนชาต (ttb)', phoneDisplay: '1428', imageName: '1428.png'),
  Hotline(name: 'Citibank', phoneDisplay: '1588', imageName: '1588.png'),
  Hotline(name: 'LH BANK', phoneDisplay: '1372', imageName: '1372.png'),
  Hotline(
      name: 'ธอส. GH BANK',
      phoneDisplay: '02 645 9000',
      imageName: '026459000.png'),
  Hotline(
      name: 'ไทยพาณิชย์ SCB',
      phoneDisplay: '02 777 7777',
      imageName: '027777777.png'),
  Hotline(
      name: 'เกียรตินาคินภัทร',
      phoneDisplay: '02 165 5555',
      imageName: '021655555.png'),
  Hotline(
      name: 'ธนาคารไทยเครดิต',
      phoneDisplay: '02 697 5454',
      imageName: '026975454.png'),
  Hotline(name: 'UOB', phoneDisplay: '02 285 1555', imageName: '022851555.png'),
  Hotline(
      name: 'TISCO', phoneDisplay: '02 633 6000', imageName: '026336000.png'),
  Hotline(
      name: 'ธนาคารอิสลามฯ',
      phoneDisplay: '02 204 2766',
      imageName: '022042766.png'),
  Hotline(
      name: 'CIMB THAI',
      phoneDisplay: '02 626 7777',
      imageName: '026267777.png'),
];

// ข้อมูลหมวด D: สาธารณูปโภค และ เครือข่าย
List<Hotline> utilityList = [
  Hotline(name: 'ไฟฟ้านครหลวง', phoneDisplay: '1130', imageName: '1130.png'),
  Hotline(
      name: 'ไฟฟ้าส่วนภูมิภาค', phoneDisplay: '1129', imageName: '1129.png'),
  Hotline(name: 'ไฟฟ้าฝ่ายผลิต', phoneDisplay: '1416', imageName: '1416.png'),
  Hotline(name: 'การประปานครหลวง', phoneDisplay: '1125', imageName: '1125.png'),
  Hotline(
      name: 'การประปาส่วนภูมิภาค', phoneDisplay: '1662', imageName: '1662.png'),
  Hotline(name: 'True', phoneDisplay: '1242', imageName: '1242.png'),
  Hotline(name: 'dtac', phoneDisplay: '1678', imageName: '1678.png'),
  Hotline(name: 'AIS', phoneDisplay: '1175', imageName: '1175.png'),
  Hotline(name: 'TOT', phoneDisplay: '1100', imageName: '1100.png'),
];
