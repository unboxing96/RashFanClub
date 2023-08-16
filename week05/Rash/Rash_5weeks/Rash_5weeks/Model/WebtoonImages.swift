//
//  WebtoonImages.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/12.
//
import Foundation
import SwiftUI

enum mondayImage: String,CaseIterable{
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    
    var somnail: Image{
        switch self{
        case .a:
            return Image("ImgContentMon01")
        case .b:
            return Image("ImgContentMon02")
        case .c:
            return Image("ImgContentMon03")
        case .d:
            return Image("ImgContentMon04")
        case .e:
            return Image("ImgContentMon05")
        case .f:
            return Image("ImgContentMon06")
        case .g:
            return Image("ImgContentMon07")
        case .h:
            return Image("ImgContentMon08")
        case .i:
            return Image("ImgContentMon09")
        case .j:
            return Image("ImgContentMon10")
        case .k:
            return Image("ImgContentMon11")
        case .l:
            return Image("ImgContentMon12")
        }
    }
    
    var webtoonName: String{
        switch self{
        case .a:
            return String("그냥 선생님")
        case .b:
            return String("멸망급 ADA의 선생님")
        case .c:
            return String("엠케이가 간다!")
        case .d:
            return String("아이들의 엠선생님")
        case .e:
            return String("강민경의 교실")
        case .f:
            return String("공부의 결과")
        case .g:
            return String("공부를 뇌에서 뽑으면")
        case .h:
            return String("공부하기 좋은 날")
        case .i:
            return String("초월자 학원의 수강생이 되었다.")
        case .j:
            return String("애플까지 걸어서 1분")
        case .k:
            return String("스터디 그룹")
        case .l:
            return String("지금 우리 학교는")
        }
    }
}

enum tuesdayImage: String,CaseIterable{
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    
    var somnail: Image{
        switch self{
        case .a:
            return Image("ImgContentTue01")
        case .b:
            return Image("ImgContentTue02")
        case .c:
            return Image("ImgContentTue03")
        case .d:
            return Image("ImgContentTue04")
        case .e:
            return Image("ImgContentTue05")
        case .f:
            return Image("ImgContentTue06")
        case .g:
            return Image("ImgContentTue07")
        case .h:
            return Image("ImgContentTue08")
        case .i:
            return Image("ImgContentTue09")
        case .j:
            return Image("ImgContentTue10")
        case .k:
            return Image("ImgContentTue11")
        case .l:
            return Image("ImgContentTue12")
        }
    }
    
    
    var webtoonName: String{
        switch self{
        case .a:
            return String("놓았다! 정신줄!")
        case .b:
            return String("외모지하주의")
        case .c:
            return String("하남자")
        case .d:
            return String("광마회귀")
        case .e:
            return String("절대복종")
        case .f:
            return String("나혼자 쪼렙")
        case .g:
            return String("개(를) 빻았다")
        case .h:
            return String("선을 넘은 김래원")
        case .i:
            return String("이십팔세기")
        case .j:
            return String("아카데미 탈출일지")
        case .k:
            return String("유쾌한 왕따")
        case .l:
            return String("세기말 풋사과 보습학원")
        }
        
    }
}

enum wednesdayImage: String,CaseIterable{
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    
    var somnail: Image{
        switch self{
        case .a:
            return Image("ImgContentWed01")
        case .b:
            return Image("ImgContentWed02")
        case .c:
            return Image("ImgContentWed03")
        case .d:
            return Image("ImgContentWed04")
        case .e:
            return Image("ImgContentWed05")
        case .f:
            return Image("ImgContentWed06")
        case .g:
            return Image("ImgContentWed07")
        case .h:
            return Image("ImgContentWed08")
        case .i:
            return Image("ImgContentWed09")
        case .j:
            return Image("ImgContentWed10")
        case .k:
            return Image("ImgContentWed11")
        case .l:
            return Image("ImgContentWed12")
        }
    }
    
    var webtoonName: String{
        switch self{
        case .a:
            return String("근육귀환")
        case .b:
            return String("성스러운 헬창생활")
        case .c:
            return String("전지적 채드기준")
        case .d:
            return String("근육연애")
        case .e:
            return String("내가 키운 근육들")
        case .f:
            return String("시한부 만들뻔 했어요!")
        case .g:
            return String("근육을 훔친이는 누구인가")
        case .h:
            return String("백세트")
        case .i:
            return String("내가 운동을 결심한 것은")
        case .j:
            return String("맞짱깔래?")
        case .k:
            return String("66666년 만에 환생한 흑마법사")
        case .l:
            return String("헬창2")
        }
        
    }
    
    
}

enum thursdayImage: String,CaseIterable{
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    
    var somnail: Image{
        switch self{
        case .a:
            return Image("ImgContentThu01")
        case .b:
            return Image("ImgContentThu02")
        case .c:
            return Image("ImgContentThu03")
        case .d:
            return Image("ImgContentThu04")
        case .e:
            return Image("ImgContentThu05")
        case .f:
            return Image("ImgContentThu06")
        case .g:
            return Image("ImgContentThu07")
        case .h:
            return Image("ImgContentThu08")
        case .i:
            return Image("ImgContentThu09")
        case .j:
            return Image("ImgContentThu10")
        case .k:
            return Image("ImgContentThu11")
        case .l:
            return Image("ImgContentThu12")
        }
        
    }
    
    var webtoonName: String{
        switch self{
        case .a:
            return String("시대장")
        case .b:
            return String("마루는 강쥐")
        case .c:
            return String("하루만 시즈가 되고싶어")
        case .d:
            return String("유사연애")
        case .e:
            return String("내가 짜온 개발코드")
        case .f:
            return String("시한부인 줄 알았어요!")
        case .g:
            return String("사신소년")
        case .h:
            return String("대학원 탈출일지")
        case .i:
            return String("한림 체육관")
        case .j:
            return String("멸망 이후의 세계")
        case .k:
            return String("올가미")
        case .l:
            return String("하북팽가 막내아들")
        }
        
    }
}


enum fridayImage: String,CaseIterable{
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    
    var somnail: Image{
        switch self{
        case .a:
            return Image("ImgContentFri01")
        case .b:
            return Image("ImgContentFri02")
        case .c:
            return Image("ImgContentFri03")
        case .d:
            return Image("ImgContentFri04")
        case .e:
            return Image("ImgContentFri05")
        case .f:
            return Image("ImgContentFri06")
        case .g:
            return Image("ImgContentFri07")
        case .h:
            return Image("ImgContentFri08")
        case .i:
            return Image("ImgContentFri09")
        case .j:
            return Image("ImgContentFri10")
        case .k:
            return Image("ImgContentFri11")
        case .l:
            return Image("ImgContentFri12")
        }
    }
    
    var webtoonName: String{
        switch self{
        case .a:
            return String("버림받은 왕녀의 은밀한 침실")
        case .b:
            return String("제이의 세계")
        case .c:
            return String("백수세끼")
        case .d:
            return String("뷰티풀 군바리")
        case .e:
            return String("알고지상주의")
        case .f:
            return String("물어보는 사이")
        case .g:
            return String("개발신의탑")
        case .h:
            return String("똑닯은딸")
        case .i:
            return String("윈드 브레이커")
        case .j:
            return String("장씨세가 호위무사")
        case .k:
            return String("순정말고 순종")
        case .l:
            return String("신화급 귀속 아이템을 손에 넣었다.")
        }
        
    }
}


enum saturdayImage: String,CaseIterable{
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    
    var somnail: Image{
        switch self{
        case .a:
            return Image("ImgContentSat01")
        case .b:
            return Image("ImgContentSat02")
        case .c:
            return Image("ImgContentSat03")
        case .d:
            return Image("ImgContentSat04")
        case .e:
            return Image("ImgContentSat05")
        case .f:
            return Image("ImgContentSat06")
        case .g:
            return Image("ImgContentSat07")
        case .h:
            return Image("ImgContentSat08")
        case .i:
            return Image("ImgContentSat09")
        case .j:
            return Image("ImgContentSat10")
        case .k:
            return Image("ImgContentSat11")
        case .l:
            return Image("ImgContentSat12")
        }
    }
    
    var webtoonName: String{
        switch self{
        case .a:
            return String("잪집에는 로꼬 살고있다.")
        case .b:
            return String("알고일기")
        case .c:
            return String("페페를 죽여줘요")
        case .d:
            return String("알고머신")
        case .e:
            return String("촉법소년")
        case .f:
            return String("재벌집 막내아들")
        case .g:
            return String("수학을 삼킨 너에게")
        case .h:
            return String("뮤즈 온 유명")
        case .i:
            return String("코딩 테스트")
        case .j:
            return String("가족같은 xx")
        case .k:
            return String("순수한 동거생활")
        case .l:
            return String("나 혼자 네크로맨서")
        }
        
    }
}

enum sundayImage: String,CaseIterable{
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    
    var somnail: Image{
        switch self{
        case .a:
            return Image("ImgContentSun01")
        case .b:
            return Image("ImgContentSun02")
        case .c:
            return Image("ImgContentSun03")
        case .d:
            return Image("ImgContentSun04")
        case .e:
            return Image("ImgContentSun05")
        case .f:
            return Image("ImgContentSun06")
        case .g:
            return Image("ImgContentSun07")
        case .h:
            return Image("ImgContentSun08")
        case .i:
            return Image("ImgContentSun09")
        case .j:
            return Image("ImgContentSun10")
        case .k:
            return Image("ImgContentSun11")
        case .l:
            return Image("ImgContentSun12")
        }
    }
    var webtoonName: String{
        switch self{
        case .a:
            return String("김다빈형님")
        case .b:
            return String("숙제 안해오면 몽둥이")
        case .c:
            return String("김다빈,전설이 되다")
        case .d:
            return String("나랑 Xcode 할래?")
        case .e:
            return String("세레나")
        case .f:
            return String("프리드로우")
        case .g:
            return String("흑화한 김다빈는 무섭다")
        case .h:
            return String("망나니 소교주로 환생했다")
        case .i:
            return String("작전명 순정")
        case .j:
            return String("마도 전생기")
        case .k:
            return String("대충 해도 코딩잘함")
        case .l:
            return String("나를 바꿔줘")
        }
        
    }
}

enum newImage: String{
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    
    var somnail: Image{
        switch self{
        case .a:
            return Image("ImgContentNew01")
        case .b:
            return Image("ImgContentNew02")
        case .c:
            return Image("ImgContentNew03")
        case .d:
            return Image("ImgContentNew04")
        case .e:
            return Image("ImgContentNew05")
        case .f:
            return Image("ImgContentNew06")
        case .g:
            return Image("ImgContentNew07")
        case .h:
            return Image("ImgContentNew08")
        case .i:
            return Image("ImgContentNew09")
        case .j:
            return Image("ImgContentNew10")
        case .k:
            return Image("ImgContentNew11")
        case .l:
            return Image("ImgContentNew12")
        }
    }
    
    var webtoonName: String{
        switch self{
        case .a:
            return String("신혼일기")
        case .b:
            return String("싸움못함")
        case .c:
            return String("퇴학용병")
        case .d:
            return String("약한하명관")
        case .e:
            return String("치매전쟁")
        case .f:
            return String("투신 잔챙이")
        case .g:
            return String("사형하명관")
        case .h:
            return String("일타강사 하사부")
        case .i:
            return String("소녀재판")
        case .j:
            return String("무직백수 하 명 관")
        case .k:
            return String("사랑받는 시집살이")
        case .l:
            return String("고백 받을 수 있긴 하나?")
        }
        
    }
}
