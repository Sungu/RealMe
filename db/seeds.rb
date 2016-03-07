Story.create(next_ok: true,speaker:"???",content:"일어났니?")
Story.create(next_ok: true,speaker:"???",content:"일단 내가 선생님을 모셔올게.")
Story.create(next_ok: true,speaker:"none",content:"여긴 어디? 나는 누구? ㅇㅅㅇ... 앞에 있는 중년 여성의 눈빛이 싸늘하다.")
Story.create(next_ok: true,speaker:"나",content:"누구시죠?")
Story.create(next_ok: true,speaker:"none",content:"앞에 있는 중년 여성의 표정이 살짝 일그러지는 듯 하더니, 병실 밖으로 나가버렸다.\n - _ -^")
Story.create(next_ok: true,speaker:"none",content:"머리가 아파와 다시 눈을 감았다.\n _ _ 코오")
Story.create(next_ok: true,speaker:"none",content:"당신은 당신과 관련된 기억을 모두 잃었습니다.")
Story.create(next_ok: true,speaker:"none",content:"당신은 고등학교 2학년이며, 당신이 기억을 잃었다는 것을 아는 사람은 당신과 부모님 뿐입니다.")
Story.create(next_ok: false,speaker:"none",content:"이제 당신이 생각하던 '나'가 진짜 인지 간단히 설명해드릴게요.")
Story.create(next_ok: true,speaker:"none",content:"오랜만에 학교를 갔다.\n기억은 안 나지만, 어쨌든 반 친구들이 나의 안부를 묻는다.")
Story.create(next_ok: true,speaker:"도모다찌",content:"하이루~!")
Story.create(next_ok: true,speaker:"나",content:"으응..~!")
Story.create(next_ok: true,speaker:"none",content:"첫 수업 시간이다. \n낮선 곳에 오니 기분이 어색하다.")
story_1 = Story.create(next_ok: true,speaker:"선생님",content:"신유정, 나와서 이거 설명 좀 해봐라.")
Story.create(next_ok: true,speaker:"도모다찌",content:"짝짝짝짝짝짝")
Story.create(next_ok: true,speaker:"선생님",content:"다음에는 꼭 하도록 해")
Story.create(next_ok: true,speaker:"도모다찌",content:"유정아, 너 답지 않게 왜 그래?")
story_2 = Story.create(next_ok: true,speaker:"none",content:"점심시간이다. \n누구랑 밥을 먹을까?")
story_3 = Story.create(next_ok: true,speaker:"none",content:"잘 먹었다. ㅇㅅㅇ 꺼억 \n남은 점심시간 동안 뭘 할까?")
Story.create(next_ok: true,speaker:"친구들",content:"(와글와글와글)\n유정아, 생일 축하해!")
Story.create(next_ok: true,speaker:"친구1",content:"생일 오메데또~★")
Story.create(next_ok: true,speaker:"나",content:"고아워!!! 근데 왜 두 개나 주는 거야?")


choices1 = {
1 => { "contnt"=> "당당하게 발표를 한다.", "next_story_id"=> 15 },
2 => { "contnt"=> "싫은데 어쩔 수 없지... 발표를 한다.", "next_story_id"=> 15 },
3 => { "contnt"=> "저 발표 못하겠어요.ㅠㅠㅠ", "next_story_id"=> 16 }
}

choices2 = {
1 => { "contnt"=> "친구들 옆에 가서 같이 먹자고 한다", "next_story_id"=> 19 },
2 => { "contnt"=> "같이 먹곤 싶지만 민망하다. 망설망설 두둠칫.", "next_story_id"=> 19 },
3 => { "contnt"=> "혼밥이 진리!", "next_story_id"=> 19 }
}

choices3 = {
1 => { "contnt"=> "매점에 간다", "next_story_id"=> 20 },
2 => { "contnt"=> "잠을 보충한다", "next_story_id"=> 20 },
3 => { "contnt"=> "친구들이랑 논다.", "next_story_id"=> 20 },
4 => { "contnt"=> "공부한다.(oㅅo)", "next_story_id"=> 20 }
}

Question.create(choices: choices1, story_id: story_1.id)
Question.create(choices: choices2, story_id: story_2.id)
Question.create(choices: choices3, story_id: story_3.id)