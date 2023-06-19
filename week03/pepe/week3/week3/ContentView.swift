//
//  ContentView.swift
//  week3
//
//  Created by kimpepe on 2023/06/01.
//


import SwiftUI


struct ContentView: View {
    @EnvironmentObject var alarmData: AlarmData
    @State private var isAddAlarmViewPresented = false
    @State private var selectedAlarm : Alarm?
    
    let coloredNavAppearance = UINavigationBarAppearance()
    
    var sortedAlarms: [Alarm] {
        alarmData.alarms.sorted(by: { $0.date < $1.date })
    }
    
    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color("ColorFontWhite"))]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color("ColorFontWhite"))]
        
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
        
        UITableView.appearance().backgroundColor = UIColor(Color("ColorBgBlack"))
    }
    
    var body: some View {
        NavigationView {
            List {
                Section(header: HStack{
                    Image(systemName: "bed.double.fill")
                    Text("수면 | 기상")
                        .font(.system(size: 17))
                }) {
                    HStack (spacing: 0) {
                        Text("알람 없음")
                            .font(.system(size: 15))
                            .padding(.vertical, 10)
                        Spacer()
                        Button {
                            print("설정")
                        } label: {
                           Text("설정")
                                .padding(.horizontal, 9)
                                .padding(.vertical, 6)
                                .font(.system(size: 13))
                                .foregroundColor(Color("ColorFontOrange"))
                                .background(Color("ColorBgGray"))
                        }
                        .cornerRadius(30)
                    }
                }
                .foregroundColor(Color("ColorFontWhite"))
                .listRowBackground(Color.clear)
                .listRowSeparatorTint(.white)
                
                // alarmArray에 원소가 있을 때만 기타 section이 보이게
                if sortedAlarms.count != 0 {
                    Section(header: Text("기타").font(.system(size: 17))) {
                        ForEach(sortedAlarms.indices, id: \.self) { index in
                                
                            Button {
                                selectedAlarm = alarmData.alarms[index]
                                isAddAlarmViewPresented = true
                            } label: {
                                HStack {
                                    Text("\(DateFormatter.timeOnly.string(from: sortedAlarms[index].date))")
                                    Spacer()
                                    Toggle("", isOn: $alarmData.alarms[index].isActive)
                                }
                            }
                        }
                    }
                    .foregroundColor(Color("ColorFontWhite"))
                    .listRowBackground(Color.clear)
                    .listRowSeparatorTint(.white)
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("알람")
            .navigationBarItems(trailing:
                Button(action: {
                    isAddAlarmViewPresented = true
                }) {
                    Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $isAddAlarmViewPresented) {
            AddAlarmView(alarm: selectedAlarm, isPresented: $isAddAlarmViewPresented)
                .environmentObject(alarmData)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
