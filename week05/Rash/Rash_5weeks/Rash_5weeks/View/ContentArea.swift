//
//  ContentArea.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/05.
//

import SwiftUI

struct ContentArea: View {
    let days = ["월","화","수","목","금","토","일","신작"]
    @State var selected = "월"
    @Namespace var namespace
    var body: some View {
        VStack{
            HStack{
                ForEach(days, id: \.self){ day in
                    Button {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.8)){
                            selected = day
                        }
                        print(selected)
                        
                    } label: {
                            Text(day)
                                .modifier(DayModifier())
                                .foregroundColor(selected == day ? colorFont.fontGreen.colorName:  colorFont.fontBlack.colorName)
                                .padding(.vertical, 12)
                                .padding(.horizontal, day != days.last ? 4.5 : 0)
                                .overlay(alignment: .bottom){
                                    if selected == day{
                                        Rectangle()
                                            .foregroundColor(colorFont.fontGreen.colorName)
                                            .frame(height: 2)
                                            .matchedGeometryEffect(id: "activeStroke", in: namespace)
                                        
                                    }
                                }
                        
                    }
                    if day != days.last {
                        Spacer()
                    }
                }
            }
            .padding([.leading,.trailing],15)
            .frame(maxWidth: .infinity)
            .background(colorBg.bgWhite100.colorName)
            
            TabView(selection: $selected){
                VStack{
                    WebtoonRow(webtoonImg1: mondayImage.a.somnail, webtoonImg2: mondayImage.b.somnail, webtoonImg3: mondayImage.c.somnail, webtoonName1: mondayImage.a.webtoonName, webtoonName2: mondayImage.b.webtoonName, webtoonName3: mondayImage.c.webtoonName, author: "강민경★9.99")
                        
                    WebtoonRow(webtoonImg1: mondayImage.d.somnail, webtoonImg2: mondayImage.e.somnail, webtoonImg3: mondayImage.f.somnail, webtoonName1: mondayImage.d.webtoonName, webtoonName2: mondayImage.e.webtoonName, webtoonName3: mondayImage.f.webtoonName, author: "강민경★9.99")
                    WebtoonRow(webtoonImg1: mondayImage.g.somnail, webtoonImg2: mondayImage.h.somnail, webtoonImg3: mondayImage.i.somnail, webtoonName1: mondayImage.g.webtoonName, webtoonName2: mondayImage.h.webtoonName, webtoonName3: mondayImage.i.webtoonName, author: "강민경★9.99")
                    WebtoonRow(webtoonImg1: mondayImage.j.somnail, webtoonImg2: mondayImage.k.somnail, webtoonImg3: mondayImage.l.somnail, webtoonName1: mondayImage.j.webtoonName, webtoonName2: mondayImage.k.webtoonName, webtoonName3: mondayImage.l.webtoonName, author: "강민경★9.99")
                }
                .tag("월")
                VStack{
                    WebtoonRow(webtoonImg1: tuesdayImage.a.somnail, webtoonImg2: tuesdayImage.b.somnail, webtoonImg3: tuesdayImage.c.somnail, webtoonName1: tuesdayImage.a.webtoonName, webtoonName2: tuesdayImage.b.webtoonName, webtoonName3: tuesdayImage.c.webtoonName, author: "김래원★9.78")
                        .padding(.top, 12)
                    WebtoonRow(webtoonImg1: tuesdayImage.d.somnail, webtoonImg2: tuesdayImage.e.somnail, webtoonImg3: tuesdayImage.f.somnail, webtoonName1: tuesdayImage.d.webtoonName, webtoonName2: tuesdayImage.e.webtoonName, webtoonName3: tuesdayImage.f.webtoonName, author: "김래원★9.78")
                    WebtoonRow(webtoonImg1: tuesdayImage.g.somnail, webtoonImg2: tuesdayImage.h.somnail, webtoonImg3: tuesdayImage.i.somnail, webtoonName1: tuesdayImage.g.webtoonName, webtoonName2: tuesdayImage.h.webtoonName, webtoonName3: tuesdayImage.i.webtoonName, author: "김래원★9.78")
                    WebtoonRow(webtoonImg1: tuesdayImage.j.somnail, webtoonImg2: tuesdayImage.k.somnail, webtoonImg3: tuesdayImage.l.somnail, webtoonName1: tuesdayImage.j.webtoonName, webtoonName2: tuesdayImage.k.webtoonName, webtoonName3: tuesdayImage.l.webtoonName, author: "김래원★9.78")
                }.tag("화")
                VStack{
                    WebtoonRow(webtoonImg1: wednesdayImage.a.somnail, webtoonImg2: wednesdayImage.b.somnail, webtoonImg3: wednesdayImage.c.somnail, webtoonName1: wednesdayImage.a.webtoonName, webtoonName2: wednesdayImage.b.webtoonName, webtoonName3: wednesdayImage.c.webtoonName, author: "머슬러닝★9.78")
                        .padding(.top, 12)
                    WebtoonRow(webtoonImg1: wednesdayImage.d.somnail, webtoonImg2: wednesdayImage.e.somnail, webtoonImg3: wednesdayImage.f.somnail, webtoonName1: wednesdayImage.d.webtoonName, webtoonName2: wednesdayImage.e.webtoonName, webtoonName3: wednesdayImage.f.webtoonName, author: "머슬러닝★9.78")
                    WebtoonRow(webtoonImg1: wednesdayImage.g.somnail, webtoonImg2: wednesdayImage.h.somnail, webtoonImg3: wednesdayImage.i.somnail, webtoonName1: wednesdayImage.g.webtoonName, webtoonName2: wednesdayImage.h.webtoonName, webtoonName3: wednesdayImage.i.webtoonName, author: "머슬러닝★9.78")
                    WebtoonRow(webtoonImg1: wednesdayImage.j.somnail, webtoonImg2: wednesdayImage.k.somnail, webtoonImg3: wednesdayImage.l.somnail, webtoonName1: wednesdayImage.j.webtoonName, webtoonName2: wednesdayImage.k.webtoonName, webtoonName3: wednesdayImage.l.webtoonName, author: "머슬러닝★9.78")
                }.tag("수")
                VStack{
                    WebtoonRow(webtoonImg1: thursdayImage.a.somnail, webtoonImg2: thursdayImage.b.somnail, webtoonImg3: thursdayImage.c.somnail, webtoonName1: thursdayImage.a.webtoonName, webtoonName2: thursdayImage.b.webtoonName, webtoonName3: thursdayImage.c.webtoonName, author: "김시즈★9.83")
                        .padding(.top, 12)
                    WebtoonRow(webtoonImg1: thursdayImage.d.somnail, webtoonImg2: thursdayImage.e.somnail, webtoonImg3: thursdayImage.f.somnail, webtoonName1: thursdayImage.d.webtoonName, webtoonName2: thursdayImage.e.webtoonName, webtoonName3: thursdayImage.f.webtoonName, author: "김시즈★9.83")
                    WebtoonRow(webtoonImg1: thursdayImage.g.somnail, webtoonImg2: thursdayImage.h.somnail, webtoonImg3: thursdayImage.i.somnail, webtoonName1: thursdayImage.g.webtoonName, webtoonName2: thursdayImage.h.webtoonName, webtoonName3: thursdayImage.i.webtoonName, author: "김시즈★9.83")
                    WebtoonRow(webtoonImg1: thursdayImage.j.somnail, webtoonImg2: thursdayImage.k.somnail, webtoonImg3: thursdayImage.l.somnail, webtoonName1: thursdayImage.j.webtoonName, webtoonName2: thursdayImage.k.webtoonName, webtoonName3: thursdayImage.l.webtoonName, author: "김시즈★9.83")
                }.tag("목")
                VStack{
                    WebtoonRow(webtoonImg1: fridayImage.a.somnail, webtoonImg2: fridayImage.b.somnail, webtoonImg3: fridayImage.c.somnail, webtoonName1: fridayImage.a.webtoonName, webtoonName2: fridayImage.b.webtoonName, webtoonName3: fridayImage.c.webtoonName, author: "꽃사슴보이★9.99")
                        .padding(.top, 12)
                    WebtoonRow(webtoonImg1: fridayImage.d.somnail, webtoonImg2: fridayImage.e.somnail, webtoonImg3: fridayImage.f.somnail, webtoonName1: fridayImage.d.webtoonName, webtoonName2: fridayImage.e.webtoonName, webtoonName3: fridayImage.f.webtoonName, author: "꽃사슴보이★9.99")
                    WebtoonRow(webtoonImg1: fridayImage.g.somnail, webtoonImg2: fridayImage.h.somnail, webtoonImg3: fridayImage.i.somnail, webtoonName1: fridayImage.g.webtoonName, webtoonName2: fridayImage.h.webtoonName, webtoonName3: fridayImage.i.webtoonName, author: "꽃사슴보이★9.99")
                    WebtoonRow(webtoonImg1: fridayImage.j.somnail, webtoonImg2: fridayImage.k.somnail, webtoonImg3: fridayImage.l.somnail, webtoonName1: fridayImage.j.webtoonName, webtoonName2: fridayImage.k.webtoonName, webtoonName3: fridayImage.l.webtoonName, author: "꽃사슴보이★9.99")
                }.tag("금")
                VStack{
                    WebtoonRow(webtoonImg1: saturdayImage.a.somnail, webtoonImg2: saturdayImage.b.somnail, webtoonImg3: saturdayImage.c.somnail, webtoonName1: saturdayImage.a.webtoonName, webtoonName2: saturdayImage.b.webtoonName, webtoonName3: saturdayImage.c.webtoonName, author: "로꼬★9.78")
                        .padding(.top, 12)
                    WebtoonRow(webtoonImg1: saturdayImage.d.somnail, webtoonImg2: saturdayImage.e.somnail, webtoonImg3: saturdayImage.f.somnail, webtoonName1: saturdayImage.d.webtoonName, webtoonName2: saturdayImage.e.webtoonName, webtoonName3: saturdayImage.f.webtoonName, author: "로꼬★9.78")
                    WebtoonRow(webtoonImg1: saturdayImage.g.somnail, webtoonImg2: saturdayImage.h.somnail, webtoonImg3: saturdayImage.i.somnail, webtoonName1: saturdayImage.g.webtoonName, webtoonName2: saturdayImage.h.webtoonName, webtoonName3: saturdayImage.i.webtoonName, author: "로꼬★9.78")
                    WebtoonRow(webtoonImg1: saturdayImage.j.somnail, webtoonImg2: saturdayImage.k.somnail, webtoonImg3: saturdayImage.l.somnail, webtoonName1: saturdayImage.j.webtoonName, webtoonName2: saturdayImage.k.webtoonName, webtoonName3: saturdayImage.l.webtoonName, author: "로꼬★9.78")
                }.tag("토")
                VStack{
                    WebtoonRow(webtoonImg1: sundayImage.a.somnail, webtoonImg2: sundayImage.b.somnail, webtoonImg3: sundayImage.c.somnail, webtoonName1: sundayImage.a.webtoonName, webtoonName2: sundayImage.b.webtoonName, webtoonName3: sundayImage.c.webtoonName, author: "김다빈★9.88")
                        .padding(.top, 12)
                    WebtoonRow(webtoonImg1: sundayImage.d.somnail, webtoonImg2: sundayImage.e.somnail, webtoonImg3: sundayImage.f.somnail, webtoonName1: sundayImage.d.webtoonName, webtoonName2: sundayImage.e.webtoonName, webtoonName3: sundayImage.f.webtoonName, author: "김다빈★9.88")
                    WebtoonRow(webtoonImg1: sundayImage.g.somnail, webtoonImg2: sundayImage.h.somnail, webtoonImg3: sundayImage.i.somnail, webtoonName1: sundayImage.g.webtoonName, webtoonName2: sundayImage.h.webtoonName, webtoonName3: sundayImage.i.webtoonName, author: "김다빈★9.88")
                    WebtoonRow(webtoonImg1: sundayImage.j.somnail, webtoonImg2: sundayImage.k.somnail, webtoonImg3: sundayImage.l.somnail, webtoonName1: sundayImage.j.webtoonName, webtoonName2: sundayImage.k.webtoonName, webtoonName3: sundayImage.l.webtoonName, author: "김다빈★9.88")
                }.tag("일")
                VStack{
                    WebtoonRow(webtoonImg1: newImage.a.somnail, webtoonImg2: newImage.b.somnail, webtoonImg3: newImage.c.somnail, webtoonName1: newImage.a.webtoonName, webtoonName2: newImage.b.webtoonName, webtoonName3: newImage.c.webtoonName, author: "하명관★9.78")
                        .padding(.top, 12)
                    WebtoonRow(webtoonImg1: newImage.d.somnail, webtoonImg2: newImage.e.somnail, webtoonImg3: newImage.f.somnail, webtoonName1: newImage.d.webtoonName, webtoonName2: newImage.e.webtoonName, webtoonName3: newImage.f.webtoonName, author: "하명관★9.78")
                    WebtoonRow(webtoonImg1: newImage.g.somnail, webtoonImg2: newImage.h.somnail, webtoonImg3: newImage.i.somnail, webtoonName1: newImage.g.webtoonName, webtoonName2: newImage.h.webtoonName, webtoonName3: newImage.i.webtoonName, author: "하명관★9.78")
                    WebtoonRow(webtoonImg1: newImage.j.somnail, webtoonImg2: newImage.k.somnail, webtoonImg3: newImage.l.somnail, webtoonName1: newImage.j.webtoonName, webtoonName2: newImage.k.webtoonName, webtoonName3: newImage.l.webtoonName, author: "하명관★9.78")
                }.tag("신작")
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
        }
        .background(colorBg.bgWhite100.colorName)
    }
}

struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea()
    }
}
