import SwiftUI

struct ContentView: View {
    @EnvironmentObject var alarmData: AlarmData
    @State private var isAddAlarmViewPresented = false
    @State private var selectedAlarm: Alarm?
    
    let coloredNavAppearance = UINavigationBarAppearance()
    
    var sortedAlarmIndices: [Int] {
        alarmData.alarms.indices.sorted(by: { alarmData.alarms[$0].date < alarmData.alarms[$1].date })
    }
    
    init() {
        configureNavigationBarAppearance()
        configureTableViewAppearance()
    }
    
    var body: some View {
        NavigationView {
            List {
                sleepWakeSection
                if !alarmData.alarms.isEmpty {
                    otherSection
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("알람")
            .navigationBarItems(trailing: addButton)
        }
        .sheet(isPresented: $isAddAlarmViewPresented) {
            AddAlarmView(alarm: selectedAlarm, isPresented: $isAddAlarmViewPresented)
                .environmentObject(alarmData)
        }
    }
    
    private func configureNavigationBarAppearance() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color("ColorFontWhite"))]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color("ColorFontWhite"))]
        
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }
    
    private func configureTableViewAppearance() {
        UITableView.appearance().backgroundColor = UIColor(Color("ColorBgBlack"))
    }
    
    private var sleepWakeSection: some View {
        Section(header: HStack {
            Image(systemName: "bed.double.fill")
            Text("수면 | 기상")
                .font(.system(size: 17))
        }) {
            HStack(spacing: 0) {
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
                        .cornerRadius(30)
                }
            }
        }
        .foregroundColor(Color("ColorFontWhite"))
        .listRowBackground(Color.clear)
        .listRowSeparatorTint(.white)
    }
    
    private var otherSection: some View {
        Section(header: Text("기타").font(.system(size: 17))) {
            ForEach(sortedAlarmIndices, id: \.self) { index in
                Button {
                    selectedAlarm = alarmData.alarms[index]
                    isAddAlarmViewPresented = true
                } label: {
                    HStack {
                        Text("\(DateFormatter.timeOnly.string(from: alarmData.alarms[index].date))")
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
    
    private var addButton: some View {
        Button(action: {
            isAddAlarmViewPresented = true
        }) {
            Image(systemName: "plus")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
