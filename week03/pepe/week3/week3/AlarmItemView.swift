//
//  AlarmItemView.swift
//  week3
//
//  Created by kimpepe on 2023/06/02.
//

import SwiftUI

struct AlarmItemView: View {
    @State var isOn: Bool
    
    let isPM: String
    let timeString: String
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 0) {
                HStack (alignment: .bottom, spacing: 0){
                    if isPM == "PM" {
                        Text("오후")
                            .font(.system(size: 35))
                    } else {
                        Text("오전")
                            .font(.system(size: 35))
                    }
                    Text(timeString)
                        .font(.system(size: 59))
                }
                Text("알람")
                    .font(.system(size: 12))
            }
            Spacer()
            Toggle(isOn: $isOn){}
                .frame(width: 16)
        }
    }
}

struct AlarmItemView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmItemView(isOn: true, isPM: "PM", timeString: "19:00")
    }
}
