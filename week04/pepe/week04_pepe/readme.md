# 설계를 해보자

## 전체적으로
- ScrollView로 전체 묶어줌
    - MainArea: TabView{ ZStack{ Image, VStack{ Text, Text, Button } } }
    - ContentArea: VStack { ZStack{ Image, Text } }
    - ProductArea: indicator 안 보이는 TabView인가..? ZStack { Image, VStack { Text, Button, Text } } 
    - ToastView: Rectangle { HStack { Text, Button } }

## View별로
1. MainView
    1. MainArea
    2. ContentArea
    3. ProductArea
    4. ToastView
