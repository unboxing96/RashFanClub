//
//  SheetWheelDatePickerView.swift
//  week3
//
//  Created by kimpepe on 2023/06/02.
//

import SwiftUI

struct AddAlarmView: View {
    @EnvironmentObject var alarmData: AlarmData
    @Binding var isPresented: Bool  // Add this binding property
    @StateObject private var alarm: Alarm
    
    @State private var isTimeChanged = false
    
    @State private var isAlarmOn: Bool = false
    
    init(alarm: Alarm? = nil, isPresented: Binding<Bool>) {  // Modify the initializer
        _alarm = StateObject(wrappedValue: alarm ?? Alarm(date: Date(), isActive: true))
        _isPresented = isPresented
    }
    
    var body: some View {
        HStack {
            
            NavigationView {
                Form {
                    DatePicker("Time", selection: $alarm.date, displayedComponents: .hourAndMinute)
                        .datePickerStyle(WheelDatePickerStyle())
                        .onChange(of: alarm.date) { newValue in
                            isTimeChanged = true
                        }
                }
                .navigationBarTitle("Add Alarm", displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    isPresented = false  // Close the AddAlarmView
                }, label: {
                    Text("취소")
                }), trailing:
                                        Button(action: {
                    if let index = alarmData.alarms.firstIndex(where: { $0.id == alarm.id }) {
                        if !alarm.isActive {
                            if isTimeChanged {
                                alarm.isActive = true
                            }
                        } else {
                            alarm.isActive = true
                        }
                        alarmData.alarms[index] = alarm
                    } else {
                        alarm.isActive = true
                        alarmData.alarms.append(alarm)
                    }
                    isPresented = false  // Close the AddAlarmView
                }) {
                    Text("저장")
                })
            }
        }
        
        List {
            NavigationLink(destination: EmptyView()) {
                VStack {
                    HStack {
                        Text("반복")
                        Spacer()
                        Text("안 함")
                    }
                }
            }
            
            HStack {
                Text("레이블")
                Spacer()
                Text("알람")
            }
            
            NavigationLink(destination: EmptyView()) {
                VStack {
                    HStack {
                        Text("사운드")
                        Spacer()
                        Text("전파 탐지기")
                    }
                }
            }
            
            HStack {
                Text("다시 알림")
                Spacer()
                Toggle("", isOn: $isAlarmOn)
            }
        }
        .listStyle(PlainListStyle()) // Set listStyle to PlainListStyle
    }
}



//
//
//struct AddAlarmView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddAlarmView()
//    }
//}
