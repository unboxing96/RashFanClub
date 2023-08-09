//
//  Model.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/06.
//

import SwiftUI

struct ImageTitles : Identifiable{
    let id = UUID()
    var imageTitles : String
    var index : Int
}

let imageBanners = [
    ImageTitles(imageTitles: "ImgBanner01", index: 0),
    ImageTitles(imageTitles: "ImgBanner02", index: 1),
    ImageTitles(imageTitles: "ImgBanner03", index: 2),
    ImageTitles(imageTitles: "ImgBanner04", index: 3),
    ImageTitles(imageTitles: "ImgBanner05", index: 4),
    ImageTitles(imageTitles: "ImgBanner06", index: 5),
    ImageTitles(imageTitles: "ImgBanner07", index: 6),
    ImageTitles(imageTitles: "ImgBanner08", index: 7)
]

let imageLineBanners = [
    ImageTitles(imageTitles: "ImgLineBanner01", index: 0),
    ImageTitles(imageTitles: "ImgLineBanner02", index: 1),
    ImageTitles(imageTitles: "ImgLineBanner03", index: 2),
    ImageTitles(imageTitles: "ImgLineBanner04", index: 3),
    ImageTitles(imageTitles: "ImgLineBanner05", index: 4),
    ImageTitles(imageTitles: "ImgLineBanner06", index: 5),
    ImageTitles(imageTitles: "ImgLineBanner07", index: 6),
    ImageTitles(imageTitles: "ImgLineBanner08", index: 7)]


struct WebtoonInfo {
    //    @Binding var currentIndex : Int
    var id : UUID = UUID()
    var imageName : String
    var title : String
    var author : String
    var rate : String
}

let webtoonInfoMon = [
    WebtoonInfo(imageName: "ImgContentMon01", title: "그냥 선생님", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon02", title: "멸망급 ADA의 선생님", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon03", title: "엠케이가 간다!", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon04", title: "아이들의 엠선생님", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon05", title: "강민경의 교실", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon06", title: "공부의 결과", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon07", title: "공부를 뇌에서 뽑으면", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon08", title: "공부하기 좋은 날", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon09", title: "초월자 학원의 수강생이 되었다.", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon10", title: "애플까지 걸어서 1분", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon11", title: "스터디 그룹", author: "강민경", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentMon12", title: "지금 우리 학교는", author: "강민경", rate: "9.99")]

// 화요일

let webtoonInfoTue = [
    WebtoonInfo(imageName: "ImgContentTue01", title: "놓았다! 정신줄!", author: "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue02", title: "외모지하주의", author: "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue03", title: "하남자", author: "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue04", title: "광마회귀", author: "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue05", title: "절대복종", author: "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue06", title: "나혼자 쪼렙", author: "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue07", title: "개(를) 빻았다", author: "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue08", title: "선을 넘은 김래원", author: "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue09", title: "이십팔세기", author: "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue10", title: "아카데미 탈출일지", author: "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue11", title: "유쾌한 왕따", author : "김래원", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentTue12", title: "세기말 풋사과 보습학원", author: "김래원", rate: "9.78")
]

// 수요일
let webtoonInfoWed = [
    WebtoonInfo(imageName: "ImgContentWed01", title: "근육귀환", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed02", title: "성스러운 헬창생활", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed03", title: "전지적 채드기준", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed04", title: "근육연애", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed05", title: "내가 키운 근육들", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed06", title: "시한부 만들뻔 했어요!", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed07", title: "근육을 훔친이는 누구인가", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed08", title: "백세트", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed09", title: "내가 운동을 결심한 것은", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed10", title: "맞짱깔래?", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed11", title: "66666년 만에 환생한 흑마법사", author: "머슬러닝", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentWed12", title: "헬창2", author: "머슬러닝", rate: "9.78")
]

// 목요일
let webtoonInfoThu = [
    WebtoonInfo(imageName: "ImgContentThu01", title: "시대장", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu02", title: "마루는 강쥐", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu03", title: "하루만 시즈가 되고싶어", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu04", title: "유사연애", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu05", title: "내가 짜온 개발코드", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu06", title: "시한부인 줄 알았어요!", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu07", title: "사신소년", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu08", title: "대학원 탈출일지", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu09", title: "한림 체육관", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu10", title: "멸망 이후의 세계", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu11", title: "올가미", author: "김시즈", rate: "9.83"),
    WebtoonInfo(imageName: "ImgContentThu12", title: "하북팽가 막내아들", author: "김시즈", rate: "9.83")
]

//금요일
let webtoonInfoFri = [
    WebtoonInfo(imageName: "ImgContentFri01", title: "버림받은 왕녀의 은밀한 침실", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri02", title: "제이의 세계", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri03", title: "백수세끼", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri04", title: "뷰티풀 군바리", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri05", title: "알고지상주의", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri06", title: "물어보는 사이", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri07", title: "개발신의탑", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri08", title: "똑닮은딸", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri09", title: "윈드 브레이커", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri10", title: "장씨세가 호위무사", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri11", title: "순정말고 순종", author: "꽃사슴보이", rate: "9.99"),
    WebtoonInfo(imageName: "ImgContentFri12", title: "신화급 귀속 아이템을 손에 넣었다", author: "꽃사슴보이", rate: "9.99")
]

//토요일
let webtoonInfoSat = [
    WebtoonInfo(imageName: "ImgContentSat01", title: "잪집에는 로꼬 살고있다", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat02", title: "알고 일기", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat03", title: "페페를 죽여줘요", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat04", title: "알고머신", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat05", title: "촉법소년", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat06", title: "재벌집 막내아들", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat07", title: "수학을 삼킨 너에게", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat08", title: "뮤즈 온 유명", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat09", title: "코딩 테스트", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat10", title: "가족같은 XX", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat11", title: "순수한 동거생활", author: "로꼬", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentSat12", title: "나 혼자 네크로맨서", author: "로꼬", rate: "9.78")
]

//일요일
let webtoonInfoSun = [
    WebtoonInfo(imageName: "ImgContentSun01", title: "김다빈형님", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun02", title: "숙제 안해오면 몽둥이", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun03", title: "김다빈, 전설이 되다", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun04", title: "나랑 Xcode 할래?", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun05", title: "세레나", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun06", title: "프리드로우", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun07", title: "흑화한 김다빈는 무섭다", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun08", title: "망나니 소교주로 환생했다", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun09", title: "작전명 순정", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun10", title: "마도 전생기", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun11", title: "대충 해도 코딩잘함", author: "김다빈", rate: "9.88"),
    WebtoonInfo(imageName: "ImgContentSun12", title: "나를 바꿔줘", author: "김다빈", rate: "9.88")
]

//신작
let webtoonInfoNew = [
    WebtoonInfo(imageName: "ImgContentNew01", title: "신혼일기", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew02", title: "싸움못함", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew03", title: "퇴학용병", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew04", title: "약한하명관", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew05", title: "치매전쟁", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew06", title: "투신 잔챙이", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew07", title: "사형하명관", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew08", title: "일타강사 하사부", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew09", title: "소녀재판", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew10", title: "무직백수 하 명 관", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew11", title: "사랑받는 시집살이", author: "하명관", rate: "9.78"),
    WebtoonInfo(imageName: "ImgContentNew12", title: "고백 받을 수 있긴 하나?", author: "하명관", rate: "9.78")
]
