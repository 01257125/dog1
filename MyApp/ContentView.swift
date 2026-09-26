import SwiftUI
import Playgrounds

struct ContentView: View {
    var body: some View {
        //最外層的主容器
        ZStack{
            //背景
            Color("backgroundcolor")
                .ignoresSafeArea()
            //腳下陰影
            Ellipse()
                .frame(width: 250,height: 40)
                .foregroundStyle(.black.opacity(0.15))
                .offset(y:140)
            //大頭和白色嘴邊肉
            Circle()
                .frame(width: 250,height: 250)
                .foregroundStyle(Color("shibacolor"))
            Circle()
                .trim(from: 0.0,to: 0.5)
                .frame(width: 250,height: 250)
                .foregroundStyle(.white)
            //左右耳
            UnevenRoundedRectangle(topLeadingRadius: 30,bottomLeadingRadius: 0,bottomTrailingRadius: 0,topTrailingRadius: 30)
                .frame(width: 60,height: 80)
                .foregroundStyle(Color("shibacolor"))
                .rotationEffect(.degrees(30))
                .offset(x:80,y: -120)
            UnevenRoundedRectangle(topLeadingRadius: 30,bottomLeadingRadius: 0,bottomTrailingRadius: 0,topTrailingRadius: 30)
                .frame(width: 60,height: 80)
                .foregroundStyle(Color("shibacolor"))
                .rotationEffect(.degrees(-30))
                .offset(x:-80,y: -120)
            //五官
            Circle()
                .frame(width: 25,height: 25)
                .foregroundStyle(.black)
                .offset(x:-45,y: -20)
            Circle()
                .frame(width: 25,height: 25)
                .foregroundStyle(.black)
                .offset(x:45,y: -20)
            Circle()
                .frame(width: 35,height: 30)
                .foregroundStyle(.black)
                .offset(y:20)
            //右邊的劍
            ZStack{
                Capsule()
                    .frame(width: 20,height: 80)
                    .foregroundStyle(.brown)
                Rectangle()
                    .frame(width: 15,height: 150)
                    .foregroundStyle(.gray)
                    .offset(y:-90)
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 50,height: 15)
                    .foregroundStyle(.yellow)
                    .offset(y:-30)
            }
            .rotationEffect(.degrees(30))//轉成斜的
            .offset(x:130,y: 50)
            //左手的盾牌
            ZStack{
                Circle()
                    .stroke(lineWidth: 15)
                    .frame(width: 140,height: 140)
                    .foregroundStyle(.gray)
                Circle()
                    .frame(width: 130,height: 130)
                    .foregroundStyle(.red)
                Circle()
                    .frame(width: 40,height: 40)
                    .foregroundStyle(.yellow)
            }
            .offset(x:-120,y: 70)
            //兩隻小手
            Circle()
                .frame(width:60,height:60)
                .foregroundStyle(.white)
                .offset(x:100,y: 80)
            Circle()
                .frame(width: 60,height: 60)
                .foregroundStyle(.white)
                .offset(x:-80,y: 80)
        }
    }
    
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
