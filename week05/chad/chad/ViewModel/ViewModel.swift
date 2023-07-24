//
//  ViewModel.swift
//  chad
//
//  Created by 077tech on 2023/07/04.
//

import SwiftUI

class ViewModel: ObservableObject, Identifiable {
    
    struct WebtoonComponent {
        var webtoonImg: String
        var webtoonName: String
        var webtoonAuthor: String
        var webtoonRating: String
    }
    
    @Published var mondayWebtoonView: [WebtoonComponent] = []
    @Published var tuesdayWebtoonView: [WebtoonComponent] = []
    @Published var wednesdayWebtoonView: [WebtoonComponent] = []
    @Published var thursdayWebtoonView: [WebtoonComponent] = []
    @Published var fridayWebtoonView: [WebtoonComponent] = []
    @Published var saturdayWebtoonView: [WebtoonComponent] = []
    @Published var sundayWebtoonView: [WebtoonComponent] = []
    @Published var newWebtoonView: [WebtoonComponent] = []
    
    init(){
        setupWebtoonMondayViews()
        setupWebtoonTuesdayViews()
        setupWebtoonWednesdayViews()
        setupWebtoonThursdayViews()
        setupWebtoonFridayViews()
        setupWebtoonSaturdayViews()
        setupWebtoonSundayViews()
        setupWebtoonNewViews()
    }

    
    private func setupWebtoonMondayViews() {
        mondayWebtoonView = [
            WebtoonComponent(webtoonImg: "ImgContentMon01", webtoonName: "그냥 선생님", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon02", webtoonName: "멸망급 ADA의 선생님", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon03", webtoonName: "엠케이가 간다!", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon04", webtoonName: "아이들의 엠선생님", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon05", webtoonName: "엠케이의 교실", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon06", webtoonName: "공부의 결과", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon07", webtoonName: "공부를 뇌에서 뽑으면", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon08", webtoonName: "공부하기 좋은 날", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon09", webtoonName: "초월자 학원의 수강생이 되었다.", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon10", webtoonName: "애플까지 걸어서 1분", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon11", webtoonName: "스터디 그룹", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentMon12", webtoonName: "지금 우리 학교는", webtoonAuthor: "엠케이", webtoonRating: "★9.99")
            ]
    }
    private func setupWebtoonTuesdayViews() {
        tuesdayWebtoonView = [
            WebtoonComponent(webtoonImg: "ImgContentTue01", webtoonName: "놓았다! 정신줄!", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue02", webtoonName: "외모지하주의", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue03", webtoonName: "하남자", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue04", webtoonName: "광마회귀", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue05", webtoonName: "절대복종", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue06", webtoonName: "나혼자 쪼렙", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue07", webtoonName: "개(를) 빻았다", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue08", webtoonName: "선을 넘은 김래원", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue09", webtoonName: "이십팔세기.", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue10", webtoonName: "아카데미 탈출일지", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue11", webtoonName: "유쾌한 왕따", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentTue12", webtoonName: "세기말 풋사과 보습학원", webtoonAuthor: "김래원", webtoonRating: "★9.78")
            ]
    }
    private func setupWebtoonWednesdayViews() {
        wednesdayWebtoonView = [
            WebtoonComponent(webtoonImg: "ImgContentWed01", webtoonName: "근육귀환", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed02", webtoonName: "성스러운 헬창생활", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed03", webtoonName: "전지적 채드기준", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed04", webtoonName: "근육연애", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed05", webtoonName: "내가 키운 근육들", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed06", webtoonName: "시한부 만들뻔 했어요!", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed07", webtoonName: "근육을 훔친이는 누구인가", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed08", webtoonName: "백세트", webtoonAuthor: "엠케머슬러닝이", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed09", webtoonName: "내가 운동을 결심한 것은", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed10", webtoonName: "맞짱깔래?", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed11", webtoonName: "66666년 만에 환생한 흑마법사", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentWed12", webtoonName: "헬창2", webtoonAuthor: "머슬러닝", webtoonRating: "★9.78")
            ]
    }
    private func setupWebtoonThursdayViews() {
        thursdayWebtoonView = [
            WebtoonComponent(webtoonImg: "ImgContentThu01", webtoonName: "시대장", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu02", webtoonName: "마루는 강쥐", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu03", webtoonName: "하루만 시즈가 되고싶어", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu04", webtoonName: "유사연애", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu05", webtoonName: "내가 짜온 개발코드", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu06", webtoonName: "시한부인 줄 알았어요!", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu07", webtoonName: "사신소년", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu08", webtoonName: "대학원 탈출일지", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu09", webtoonName: "한림 체육관", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu10", webtoonName: "멸망 이후의 세계", webtoonAuthor: "김시즈", webtoonRating: "★9.9839")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu11", webtoonName: "올가미", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ,
            WebtoonComponent(webtoonImg: "ImgContentThu12", webtoonName: "하북팽가 막내아들", webtoonAuthor: "김시즈", webtoonRating: "★9.83")
            ]
    }
    private func setupWebtoonFridayViews() {
        fridayWebtoonView = [
            WebtoonComponent(webtoonImg: "ImgContentFri01", webtoonName: "버림받은 왕녀의 은밀한 침실", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri02", webtoonName: "제이의 세계", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri03", webtoonName: "백수 세끼", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri04", webtoonName: "뷰티풀 군바리", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri05", webtoonName: "알고지상주의", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri06", webtoonName: "물어보는 사이", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri07", webtoonName: "개발신의탑", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri08", webtoonName: "똑닮은딸", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri09", webtoonName: "윈드 브레이커", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri10", webtoonName: "장씨세가 호위무사", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri11", webtoonName: "순정말고 순종", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ,
            WebtoonComponent(webtoonImg: "ImgContentFri12", webtoonName: "신화급 귀속 아이템을 손에 넣었다", webtoonAuthor: "꽃사슴보이", webtoonRating: "★9.99")
            ]
    }
    private func setupWebtoonSaturdayViews() {
        saturdayWebtoonView = [
            WebtoonComponent(webtoonImg: "ImgContentSat01", webtoonName: "잪집에는 로꼬 살고있다", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat02", webtoonName: "알고 일기", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat03", webtoonName: "페페를 죽여줘요", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat04", webtoonName: "알고머신", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat05", webtoonName: "촉법소년", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat06", webtoonName: "재벌집 막내아들", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat07", webtoonName: "수학을 삼킨 너에게", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat08", webtoonName: "뮤즈 온 유명", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat09", webtoonName: "코딩 테스트", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat10", webtoonName: "가족같은 XX", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat11", webtoonName: "순수한 동거생활", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSat12", webtoonName: "나 혼자 네크로맨서", webtoonAuthor: "로꼬", webtoonRating: "★9.78")
            ]
    }
    private func setupWebtoonSundayViews() {
        sundayWebtoonView = [
            WebtoonComponent(webtoonImg: "ImgContentSun01", webtoonName: "김다빈형님", webtoonAuthor: "김다빈", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun02", webtoonName: "숙제 안해오면 몽둥이", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun03", webtoonName: "김다빈, 전설이 되다", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun04", webtoonName: "나랑 Xcode 할래?", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun05", webtoonName: "세레나", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun06", webtoonName: "프리드로우", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun07", webtoonName: "흑화한 김다빈는 무섭다", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun08", webtoonName: "망나니 소교주로 환생했다", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun09", webtoonName: "작전명 순정", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun10", webtoonName: "마도 전생기", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun11", webtoonName: "대충 해도 코딩잘함", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ,
            WebtoonComponent(webtoonImg: "ImgContentSun12", webtoonName: "나를 바꿔줘", webtoonAuthor: "엠케이", webtoonRating: "★9.88")
            ]
    }
    private func setupWebtoonNewViews() {
        newWebtoonView = [
            WebtoonComponent(webtoonImg: "ImgContentNew01", webtoonName: "신혼 일기", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew02", webtoonName: "싸움못함", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew03", webtoonName: "퇴학용병", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew04", webtoonName: "약한하명관", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew05", webtoonName: "치매전쟁", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew06", webtoonName: "투신 잔챙이", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew07", webtoonName: "사형하명관", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew08", webtoonName: "일타강사 하사부", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew09", webtoonName: "소녀재판", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew10", webtoonName: "무직백수 하 명 관", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew11", webtoonName: "사랑받는 시집살이", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ,
            WebtoonComponent(webtoonImg: "ImgContentNew12", webtoonName: "고백 받을 수 있긴 하나?", webtoonAuthor: "하명관", webtoonRating: "★9.78")
            ]
    }

    
}


