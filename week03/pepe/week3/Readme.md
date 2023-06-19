# 구현 계획

## ContentView

ZStack -> ColorBgBlack, padding(.leading, 16)
AddSheetView(): 컴포넌트X, NaviagationView + .toolbar로 -> HStack { Spacer(), Button }
AlarmHeaderView(): 컴포넌트X, NaviagationView + .toolbar로
SumyeonGisangView(): 컴포넌트X, List?
AlarmSettingView(): HStack { Text, Button }: 컴포넌트X
AlarmItemView(): HStack { VStack{}, ToggleButton }


## SheetView

SheetCancelSaveView(): HStack { Button, Text, Button }
SheetWheelDatePickerView(): DatePicker, WheelDatePicker
SheetSettingView(): List?
