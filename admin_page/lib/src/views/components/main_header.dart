import 'package:flutter_web/material.dart';

class MainPageHeader extends Container {
  MainPageHeader()
      : super(
          padding: EdgeInsets.fromLTRB(
            16.0,
            16.0,
            16.0,
            0.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // 모두 선택하기,
              Checkbox(
                onChanged: (checked) {},
                value: false,
              ),
              SizedBox(width: 16.0),
              // 정렬하기,
              SortPostDropDown(),
              // 태그 고르기,
              SizedBox(width: 16.0),
              DropdownButton<int>(
                items: [],
                onChanged: (value) {},
                hint: Text('태그'),
              ),
              SizedBox(width: 16.0),
              // 기간 고르기,
              FlatButton(
                padding: EdgeInsets.all(8.0),
                child: Text('기간'),
                onPressed: () {},
              ),
              // 선택된 항목 지우기,
              IconButton(
                icon: Icon(Icons.delete_forever),
                onPressed: () {},
              ),
              // 제일 끝에 검색하기
              Spacer(),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
        );
}

class SortPostDropDown extends StatelessWidget {
  const SortPostDropDown({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      items: [
        DropdownMenuItem(
          child: Text('최신'),
          value: 1,
        ),
        DropdownMenuItem(
          child: Text('예전'),
          value: 2,
        ),
        DropdownMenuItem(
          child: Text('제목'),
          value: 3,
        ),
      ],
      onChanged: (value) {},
      hint: Text(
        '정렬',
        textAlign: TextAlign.end,
      ),
    );
  }
}
