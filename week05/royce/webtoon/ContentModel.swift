//
//  ContentModel.swift
//  webtoon
//
//  Created by Jin Sang woo on 2023/07/16.
//

import SwiftUI

struct ContentItem: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let title: String
    let subtitle: String
}

// 월요일
let contentItemsMon: [[ContentItem]] = [
        [ContentItem(imageName: "ImgContentMon01", title: "그냥 선생님", subtitle: "강민경★9.99"),
         ContentItem(imageName: "ImgContentMon02", title: "멸망급 ADA의 선생님", subtitle: "강민경★9.99"),
         ContentItem(imageName: "ImgContentMon03", title: "강민경가 간다!", subtitle: "강민경★9.99")],
        
        [ContentItem(imageName: "ImgContentMon04", title: "아이들의 엠선생님", subtitle: "강민경★9.99"),
         ContentItem(imageName: "ImgContentMon05", title: "강민경의 교실", subtitle: "강민경★9.99"),
         ContentItem(imageName: "ImgContentMon06", title: "공부의 결과", subtitle: "강민경★9.99")],
        
        [ContentItem(imageName: "ImgContentMon07", title: "공부를 뇌에서 뽑으면", subtitle: "강민경★9.99"),
         ContentItem(imageName: "ImgContentMon08", title: "공부하기 좋은 날", subtitle: "강민경★9.99"),
         ContentItem(imageName: "ImgContentMon09", title: "초월자 학원의 수강생이 되었다.", subtitle: "강민경★9.99")],
        
        [ContentItem(imageName: "ImgContentMon10", title: "애플까지 걸어서 1분", subtitle: "강민경★9.99"),
         ContentItem(imageName: "ImgContentMon11", title: "스터디 그룹", subtitle: "강민경★9.99"),
         ContentItem(imageName: "ImgContentMon12", title: "지금 우리 학교는", subtitle: "강민경★9.99")]
    ]

// 화요일
let contentItemsTue: [[ContentItem]] = [
        [ContentItem(imageName: "ImgContentTue01", title: "놓았다! 정신줄!", subtitle: "김래원★9.78"),
         ContentItem(imageName: "ImgContentTue02", title: "외모지하주의", subtitle: "김래원★9.78"),
         ContentItem(imageName: "ImgContentTue03", title: "하남자", subtitle: "김래원★9.78")],
        
        [ContentItem(imageName: "ImgContentTue04", title: "광마회귀", subtitle: "김래원★9.78"),
         ContentItem(imageName: "ImgContentTue05", title: "절대복종", subtitle: "김래원★9.78"),
         ContentItem(imageName: "ImgContentTue06", title: "나혼자 쪼렙", subtitle: "김래원★9.78")],
        
        [ContentItem(imageName: "ImgContentTue07", title: "개(를) 빻았다", subtitle: "김래원★9.78"),
         ContentItem(imageName: "ImgContentTue08", title: "선을 넘은 김래원", subtitle: "김래원★9.78"),
         ContentItem(imageName: "ImgContentTue09", title: "이십팔세기", subtitle: "김래원★9.78")],
        
        [ContentItem(imageName: "ImgContentTue10", title: "아카데미 탈출일지", subtitle: "김래원★9.78"),
         ContentItem(imageName: "ImgContentTue11", title: "유쾌한 왕따", subtitle: "김래원 ★9.78"),
         ContentItem(imageName: "ImgContentTue12", title: "세기말 풋사과 보습학원", subtitle: "김래원★9.78")]
    ]

// 수요일
let contentItemsWeds: [[ContentItem]] = [
        [ContentItem(imageName: "ImgContentWed01", title: "근육귀환", subtitle: "머슬러닝 ★9.78"),
         ContentItem(imageName: "ImgContentWed02", title: "성스러운 헬창생활", subtitle: "머슬러닝 ★9.78"),
         ContentItem(imageName: "ImgContentWed03", title: "전지적 채드기준", subtitle: "머슬러닝 ★9.78")],
        
        [ContentItem(imageName: "ImgContentWed04", title: "근육연애", subtitle: "머슬러닝 ★9.78"),
         ContentItem(imageName: "ImgContentWed05", title: "내가 키운 근육들", subtitle: "머슬러닝 ★9.78"),
         ContentItem(imageName: "ImgContentWed06", title: "시한부 만들뻔 했어요!", subtitle: "머슬러닝 ★9.78")],
        
        [ContentItem(imageName: "ImgContentWed07", title: "근육을 훔친이는 누구인가", subtitle: "머슬러닝 ★9.78"),
         ContentItem(imageName: "ImgContentWed08", title: "백세트", subtitle: "머슬러닝 ★9.78"),
         ContentItem(imageName: "ImgContentWed09", title: "내가 운동을 결심한 것은", subtitle: "머슬러닝 ★9.78")],
        
        [ContentItem(imageName: "ImgContentWed10", title: "맞짱깔래?", subtitle: "머슬러닝 ★9.78"),
         ContentItem(imageName: "ImgContentWed11", title: "66666년 만에 환생한 흑마법사", subtitle: "머슬러닝 ★9.78"),
         ContentItem(imageName: "ImgContentWed12", title: "헬창2", subtitle: "머슬러닝 ★9.78")]
    ]

// 목요일
let contentItemsThurs: [[ContentItem]] = [
        [ContentItem(imageName: "ImgContentThu01", title: "시대장", subtitle: "김시즈 ★9.83"),
         ContentItem(imageName: "ImgContentThu02", title: "마루는 강쥐", subtitle: "김시즈 ★9.83"),
         ContentItem(imageName: "ImgContentThu03", title: "하루만 시즈가 되고싶어", subtitle: "김시즈 ★9.83")],
        
        [ContentItem(imageName: "ImgContentThu04", title: "유사연애", subtitle: "김시즈 ★9.83"),
         ContentItem(imageName: "ImgContentThu05", title: "내가 짜온 개발코드", subtitle: "김시즈 ★9.83"),
         ContentItem(imageName: "ImgContentThu06", title: "시한부인 줄 알았어요!", subtitle: "김시즈 ★9.83")],
        
        [ContentItem(imageName: "ImgContentThu07", title: "사신소년", subtitle: "김시즈 ★9.83"),
         ContentItem(imageName: "ImgContentThu08", title: "대학원 탈출일지", subtitle: "김시즈 ★9.83"),
         ContentItem(imageName: "ImgContentThu09", title: "한림 체육관", subtitle: "김시즈 ★9.83")],
        
        [ContentItem(imageName: "ImgContentThu10", title: "멸망 이후의 세계", subtitle: "김시즈 ★9.83"),
         ContentItem(imageName: "ImgContentThu11", title: "올가미", subtitle: "김시즈 ★9.83"),
         ContentItem(imageName: "ImgContentThu12", title: "하북팽가 막내아들", subtitle: "김시즈 ★9.83")]
    ]

// 금요일
let contentItemsFri: [[ContentItem]] = [
        [ContentItem(imageName: "ImgContentFri01", title: "버림받은 왕녀의 은밀한 침실", subtitle: "꽃사슴보이 ★9.99"),
         ContentItem(imageName: "ImgContentFri02", title: "제이의 세계", subtitle: "꽃사슴보이 ★9.99"),
         ContentItem(imageName: "ImgContentFri03", title: "백수세끼", subtitle: "꽃사슴보이 ★9.99")],
        
        [ContentItem(imageName: "ImgContentFri04", title: "뷰티풀 군바리", subtitle: "꽃사슴보이 ★9.99"),
         ContentItem(imageName: "ImgContentFri05", title: "알고지상주의", subtitle: "꽃사슴보이 ★9.99"),
         ContentItem(imageName: "ImgContentFri06", title: "물어보는 사이", subtitle: "꽃사슴보이 ★9.99")],
        
        [ContentItem(imageName: "ImgContentFri07", title: "개발신의탑", subtitle: "꽃사슴보이 ★9.99"),
         ContentItem(imageName: "ImgContentFri08", title: "똑닮은딸", subtitle: "꽃사슴보이 ★9.99"),
         ContentItem(imageName: "ImgContentFri09", title: "윈드 브레이커", subtitle: "꽃사슴보이 ★9.99")],
        
        [ContentItem(imageName: "ImgContentFri10", title: "장씨세가 호위무사", subtitle: "꽃사슴보이 ★9.99"),
         ContentItem(imageName: "ImgContentFri11", title: "순정말고 순종", subtitle: "꽃사슴보이 ★9.99"),
         ContentItem(imageName: "ImgContentFri12", title: "신화급 귀속 아이템을 손에 넣었다", subtitle: "꽃사슴보이 ★9.99")]
    ]

// 토요일
let contentItemsSat: [[ContentItem]] = [
        [ContentItem(imageName: "ImgContentSat01", title: "잪집에는 로꼬 살고있다", subtitle: "로꼬 ★9.78"),
         ContentItem(imageName: "ImgContentSat02", title: "알고 일기", subtitle: "로꼬 ★9.78"),
         ContentItem(imageName: "ImgContentSat03", title: "페페를 죽여줘요", subtitle: "로꼬 ★9.78")],
        
        [ContentItem(imageName: "ImgContentSat04", title: "알고머신", subtitle: "로꼬 ★9.78"),
         ContentItem(imageName: "ImgContentSat05", title: "촉법소년", subtitle: "로꼬 ★9.78"),
         ContentItem(imageName: "ImgContentSat06", title: "재벌집 막내아들", subtitle: "로꼬 ★9.78")],
        
        [ContentItem(imageName: "ImgContentSat07", title: "수학을 삼킨 너에게", subtitle: "로꼬 ★9.78"),
         ContentItem(imageName: "ImgContentSat08", title: "뮤즈 온 유명", subtitle: "로꼬 ★9.78"),
         ContentItem(imageName: "ImgContentSat09", title: "코딩 테스트", subtitle: "로꼬 ★9.78")],
        
        [ContentItem(imageName: "ImgContentSat10", title: "가족같은 XX", subtitle: "로꼬 ★9.78"),
         ContentItem(imageName: "ImgContentSat11", title: "순수한 동거생활", subtitle: "로꼬 ★9.78"),
         ContentItem(imageName: "ImgContentSat12", title: "나 혼자 네크로맨서", subtitle: "로꼬 ★9.78")]
    ]

// 일요일



let contentItemsSun: [[ContentItem]] = [
        [ContentItem(imageName: "ImgContentSun01", title: "김다빈형님", subtitle: "김다빈 ★9.88"),
         ContentItem(imageName: "ImgContentSun02", title: "숙제 안해오면 몽둥이", subtitle: "김다빈 ★9.88"),
         ContentItem(imageName: "ImgContentSun03", title: "김다빈, 전설이 되다", subtitle: "김다빈 ★9.88")],
        
        [ContentItem(imageName: "ImgContentSun04", title: "나랑 Xcode 할래?", subtitle: "김다빈 ★9.88"),
         ContentItem(imageName: "ImgContentSun05", title: "세레나", subtitle: "김다빈 ★9.88"),
         ContentItem(imageName: "ImgContentSun06", title: "프리드로우", subtitle: "김다빈 ★9.88")],
        
        [ContentItem(imageName: "ImgContentSun07", title: "나랑 Xcode 할래?", subtitle: "김다빈 ★9.88"),
         ContentItem(imageName: "ImgContentSun08", title: "세레나", subtitle: "김다빈 ★9.88"),
         ContentItem(imageName: "ImgContentSun09", title: "프리드로우", subtitle: "김다빈 ★9.88")],
        
        
        [ContentItem(imageName: "ImgContentSun10", title: "마도 전생기", subtitle: "김다빈 ★9.88"),
         ContentItem(imageName: "ImgContentNew11", title: "대충 해도 코딩잘함", subtitle: "김다빈 ★9.88"),
         ContentItem(imageName: "ImgContentNew12", title: "나를 바꿔줘", subtitle: "김다빈 ★9.88")]
    ]


let contentItemsNew: [[ContentItem]] = [
        [ContentItem(imageName: "ImgContentNew01", title: "신혼일기", subtitle: "하명관 ★9.78"),
         ContentItem(imageName: "ImgContentNew02", title: "싸움못함", subtitle: "하명관 ★9.78"),
         ContentItem(imageName: "ImgContentNew03", title: "퇴학용병", subtitle: "하명관 ★9.78")],
        
        [ContentItem(imageName: "ImgContentNew04", title: "약한하명관", subtitle: "하명관 ★9.78"),
         ContentItem(imageName: "ImgContentNew05", title: "치매전쟁", subtitle: "하명관 ★9.78"),
         ContentItem(imageName: "ImgContentNew06", title: "투신 잔챙이", subtitle: "하명관 ★9.78")],
        
        [ContentItem(imageName: "ImgContentNew07", title: "사형하명관", subtitle: "하명관 ★9.78"),
         ContentItem(imageName: "ImgContentNew08", title: "일타강사 하사부", subtitle: "하명관 ★9.78"),
         ContentItem(imageName: "ImgContentNew09", title: "소녀재판", subtitle: "하명관 ★9.78")],
        
        
        [ContentItem(imageName: "ImgContentNew10", title: "무직백수 하 명 관", subtitle: "하명관 ★9.78"),
         ContentItem(imageName: "ImgContentNew11", title: "사랑받는 시집살이", subtitle: "하명관 ★9.78"),
         ContentItem(imageName: "ImgContentNew12", title: "고백 받을 수 있긴 하나?", subtitle: "하명관 ★9.78")]
    ]
