import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Omlet App"),
      ),
      body: ListView(
        children: <Widget>[
          omlet_cover(),
          infor(),
          profileomlet(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ratings(),
          ),
          line(),
          describe(),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: material_cover(),
          ),
        ],
      ),
    );
  }

// img
  Image omlet_cover() => Image.asset('images/omlet_cover.jpg');
  Image material_cover() => Image.asset('images/omlet_material.jpg');

  Widget infor() {
    return Container(
      padding: EdgeInsets.only(right: 25, top: 27, left: 25, bottom: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'วิธีทำ “ออมเลตชีส” เมนูไข่เนื้อนุ่ม ชีสเยิ้ม อิ่มท้องง่าย ๆ ในยามเช้า!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "แจกสูตรอาหารเช้าง่าย ๆ ออมเลตชีส เมนูไข่ของโปรดทุกรุ่นทุกวัย เนื้อไข่นุ่มมมละมุนลิ้น แถมชีสเยิ้ม ๆ ยั่วใจ ทำตามกันได้ที่บ้านเลย ขนาดนี้ต้องลองทำแล้ว!",
            style: TextStyle(fontSize: 16, height: 1.4, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget profileomlet() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        radius: 53,
        backgroundColor: Colors.black38,
        child: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              'https://scontent.fhdy4-1.fna.fbcdn.net/v/t1.6435-9/66389968_2500998303455630_1232085465633390592_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeG5Vul4hnqfEfFLxmJfaQdpJrQageMdYDQmtBqB4x1gNB8JtEgm7bNOHwnBRWFG7iFfkDp3BQsz-RSrvM53XvB2&_nc_ohc=NHIuWBsZawwAX9P61MV&_nc_ht=scontent.fhdy4-1.fna&oh=00_AT9KWAjH1SF4I3IzGAGLiijhuR1YLSr-DmtGLpIrxI9iow&oe=61EFCCC0'),
        ),
      ),
    );
  }

  Widget ratings() => Container(
        padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Color(0xFFf3f4f5),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.timer, color: Colors.blue[500]),
                const Text('เตรียมเวลา'),
                const Text('15 นาที'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.orange[500]),
                const Text('เวลาปรุง'),
                const Text('20 นาที'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.local_fire_department, color: Colors.red[500]),
                const Text('แคลอรี่'),
                const Text('300 Kcal/เสิร์ฟ'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.person, color: Colors.blue[500]),
                const Text('สำหรับ'),
                const Text('1 เสิร์ฟ'),
              ],
            ),
          ],
        ),
      );

  Widget line() => Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              padding:
                  EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 10),
              child: Divider(color: Colors.grey.shade600, thickness: 1),
            )),
            Text(
              'เกรินเล็กน้อย',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.grey.shade600, thickness: 1),
            )),
          ],
        ),
      );

  Widget describe() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "ใครคิดว่า “ออมเลตชีส” ทำยาก เห็นสูตรนี้ต้องเปลี่ยนใจแล้ว! อีกหนึ่งเมนูไข่ทำง่าย ๆ อารมณ์ดี๊ดี ไว้สำหรับเป็นอาหารเช้าในวันสบาย ๆ ที่อยากทำอาหารเช้ากินเอง หรือจะทำให้เด็ก ๆ กินก็ได้นะ รับรองว่าเป็นที่ถูกอกถูกใจแน่นอน เพราะมีทั้งไข่ออมเลตนุ่ม ๆ และชีสสุดยืดด ของโปรด ถ้าพร้อมแล้วไปเข้าครัวดูวิธีทำออมเลตกันเลย ",
            style: TextStyle(
              fontSize: 16,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
