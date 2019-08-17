import 'package:flutter_hooks_web/flutter_hooks_web.dart';

import '../../views/components/parts/post_checkbox.dart';
import '../../views/components/parts/remove_post.dart';
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
              PostCheckBox(),
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
              RemovePostIconButton(
                postId: 0,
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

class SortPostDropDown extends HookWidget {
  const SortPostDropDown({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var selectedMenu = useState();
    return DropdownButton<int>(
      value: selectedMenu.value,
      items: [
        DropdownMenuItem(
          child: Text('최신순'),
          value: 1,
        ),
        DropdownMenuItem(
          child: Text('오래된 순'),
          value: 2,
        ),
        DropdownMenuItem(
          child: Text('제목순'),
          value: 3,
        ),
        DropdownMenuItem(
          child: Text('제목 역순'),
          value: 4,
        ),
      ],
      onChanged: (value) {
        selectedMenu.value = value;
      },
      hint: Text(
        '정렬 순서',
        textAlign: TextAlign.end,
      ),
    );
  }
}
