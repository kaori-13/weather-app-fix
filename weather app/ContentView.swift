//
//  ContentView.swift
//  weather app
//
//  Created by Fanny on 2025/9/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.night)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            ScrollView(.horizontal){
                HStack{
                    第一頁view()
                    第二頁view()
                }
            }
        }
    }
}
    
    struct 第一頁view: View {
        var body: some View {
            VStack{
                    住家溫度View()
                        .padding(.top, 100)
                        .foregroundStyle(.white)
                ScrollView(.vertical){
                    最高最低溫View()
                    體感溫度View()
                    Spacer(minLength: 50)
                    不同時段溫度View()
                    不同天溫度View()
                }
                .foregroundStyle(.white)
                .padding(.bottom, 40)
            }
            .contentMargins(10)
        }
    }
                
                
   struct 第二頁view: View {
    var body: some View {
            VStack{
                三重區溫度View()
                    .padding(.top, 100)
                    .foregroundStyle(.white)
                ScrollView(.vertical){
                三重區最高最低溫View()
                三重區體感溫度View()
                    Spacer(minLength: 50)
                三重區不同時段溫度View()
                三重區不同天溫度View()
            }
            .foregroundStyle(.white)
            .padding(.bottom, 40)
        }
        .contentMargins(10)
    }
}
    
    struct 住家溫度View: View {
        var body: some View {
            VStack(spacing: 5){
                HStack {
                    Image(systemName: "paperplane.fill")
                    Text("住家")
                        .font(.system(size: 20))
                }
                Text("大安區")
                    .font(.system(size: 35))
                Text("27°")
                    .font(.system(size: 90))
            }
        }
    }
    struct 最高最低溫View: View {
        var body: some View {
                HStack {
                    VStack {
                        Text("最")
                        Text("高")
                    }
                    .font(.system(size: 20))
                    Text("33°")
                        .font(.system(size: 50))
                    VStack {
                        Text("最")
                        Text("低")
                    }
                    .font(.system(size: 20))
                    Text("27°")
                        .font(.system(size: 50))
                }
        }
    }

struct 體感溫度View: View {
    var body: some View {
        Text("體感溫度：25°")
            .font(.system(size: 20))
            .bold()
            .opacity(0.6)
    }
}


struct 不同時段溫度View: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("預計大約01:00局部多雲。陣風風速高達")
            Text("26公里/每小時。")
            HStack(alignment: .bottom) {
                HrTemp(time: "現在", icon: "moon.stars.fill", tem: "27°")
                    .frame(maxWidth: .infinity)
                HrTemp(time: "11時", icon: "moon.stars.fill", tem: "27°")
                    .frame(maxWidth: .infinity)
                HrTemp(time: "12時", icon: "moon.stars.fill", tem: "27°")
                    .frame(maxWidth: .infinity)
                HrTemp(time: "0時", icon: "moon.stars.fill", tem: "26°")
                    .frame(maxWidth: .infinity)
                HrTemp(time: "1時", icon: "cloud.moon.fill", tem: "26°")
                    .frame(maxWidth: .infinity)
                HrTemp(time: "2時", icon: "moon.stars.fill", tem: "26°")
                    .frame(maxWidth: .infinity)
            }
            .padding(.top, 12)
        }
        .font(.system(size: 20))
        .bold()
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 44/255, green: 46/255, blue: 67/255),
                            Color(red: 43/255, green: 49/255, blue: 74/255)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        )
    }
}

struct 不同天溫度View: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "calendar")
                    Text("10天天氣預報")
                        .font(.system(size: 18))
                        .opacity(0.5)
                }
                中線view()
            }
            VStack(alignment: .leading) {
                DayTemp(time: "今天", icon: "moon.stars.fill", temlow: "27°", temhigh: "33°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週日", icon: "cloud.rain.fill", temlow: "26°", temhigh: "32°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週一", icon: "cloud.rain.fill", temlow: "26°", temhigh: "30°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週二", icon: "cloud.rain.fill", temlow: "27°", temhigh: "33°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週三", icon: "cloud.rain.fill", temlow: "27°", temhigh: "32°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週四", icon: "sun.max.fill", temlow: "25°", temhigh: "33°", color: .yellow)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週五", icon: "sun.max.fill", temlow: "26°", temhigh: "33°", color: .yellow)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週六", icon: "cloud.sun.fill", temlow: "26°", temhigh: "32°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週日", icon: "cloud.sun.fill", temlow: "26°", temhigh: "32°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週一", icon: "sun.max.fill", temlow: "25°", temhigh: "31°", color: .yellow)
                    .frame(maxWidth: .infinity)
            }
        }
        .font(.system(size: 20))
        .bold()
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 44/255, green: 46/255, blue: 67/255),
                            Color(red: 43/255, green: 49/255, blue: 74/255)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        )
    }
}


struct 三重區溫度View: View {
    var body: some View {
        VStack(spacing: 5){
            Text("三重區")
                .font(.system(size: 35))
            Text("30°")
                .font(.system(size: 90))
        }
    }
}

struct 三重區最高最低溫View: View {
    var body: some View {
            HStack {
                VStack {
                    Text("最")
                    Text("高")
                }
                .font(.system(size: 20))
                Text("33°")
                    .font(.system(size: 50))
                VStack {
                    Text("最")
                    Text("低")
                }
                .font(.system(size: 20))
                Text("26°")
                    .font(.system(size: 50))
            }
    }
}

struct 三重區體感溫度View: View {
    var body: some View {
        Text("體感溫度：28°")
            .font(.system(size: 20))
            .bold()
            .opacity(0.6)
    }
}

struct 三重區不同時段溫度View: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("預計大約01:00局部多雲。陣風風速高達")
            Text("27公里/每小時。")
            HStack(alignment: .bottom) {
                HrTemp(time: "現在", icon: "moon.stars.fill", tem: "30°")
                    .frame(maxWidth: .infinity)
                HrTemp(time: "11時", icon: "moon.stars.fill", tem: "30°")
                    .frame(maxWidth: .infinity)
                HrTemp(time: "12時", icon: "moon.stars.fill", tem: "30°")
                    .frame(maxWidth: .infinity)
                HrTemp(time: "0時", icon: "moon.stars.fill", tem: "29°")
                    .frame(maxWidth: .infinity)
                HrTemp(time: "1時", icon: "cloud.moon.fill", tem: "28°")
                    .frame(maxWidth: .infinity)
                HrTemp(time: "2時", icon: "moon.stars.fill", tem: "27°")
                    .frame(maxWidth: .infinity)
            }
            .padding(.top, 12)
        }
        .font(.system(size: 20))
        .bold()
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 44/255, green: 46/255, blue: 67/255),
                            Color(red: 43/255, green: 49/255, blue: 74/255)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        )
    }
}

struct 三重區不同天溫度View: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "calendar")
                    Text("10天天氣預報")
                        .font(.system(size: 18))
                        .opacity(0.5)
                }
                中線view()
            }
            VStack(alignment: .leading) {
                DayTemp(time: "今天", icon: "moon.stars.fill", temlow: "26°", temhigh: "33°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週日", icon: "cloud.rain.fill", temlow: "26°", temhigh: "33°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週一", icon: "cloud.rain.fill", temlow: "26°", temhigh: "30°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週二", icon: "cloud.rain.fill", temlow: "27°", temhigh: "30°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週三", icon: "cloud.rain.fill", temlow: "27°", temhigh: "34°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週四", icon: "sun.max.fill", temlow: "25°", temhigh: "34°", color: .yellow)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週五", icon: "cloud.fill", temlow: "27°", temhigh: "33°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週六", icon: "cloud.sun.fill", temlow: "27°", temhigh: "33°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週日", icon: "cloud.sun.fill", temlow: "26°", temhigh: "33°", color: .white)
                    .frame(maxWidth: .infinity)
                中線view()
                    .frame(maxWidth: .infinity)
                DayTemp(time: "週一", icon: "cloud.rain.fill", temlow: "26°", temhigh: "32°", color: .white)
                    .frame(maxWidth: .infinity)
            }
        }
        .font(.system(size: 20))
        .bold()
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 44/255, green: 46/255, blue: 67/255),
                            Color(red: 43/255, green: 49/255, blue: 74/255)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        )
    }
}


//通用的中線和橘線
struct 中線view: View {
    var body: some View {
        Rectangle()
                    .frame(height: 0.5)
            .foregroundStyle(.white)
            .opacity(0.5)
    }
}

struct 溫度橘線view: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .frame(width: 90, height: 5)
            .foregroundStyle(.orange)
    }
}
//可調整的數字定義
//每小時天氣
struct HrTemp: View {
    let time: String
    let icon: String
    let tem: String
    
    var body: some View {
        VStack{
            Text(time)
            Image(systemName: icon)
                .imageScale(.large)
                .padding(.vertical, 4)
            Text(tem)
        }
        .foregroundStyle(.white)
    }
}
//每天天氣
struct DayTemp: View {
    let time: String
    let icon: String
    let temlow: String
    let temhigh: String
    let color: Color
    
    var body: some View {
        HStack{
            Text(time)
            Spacer()
            Image(systemName: icon)
                .imageScale(.large)
                .foregroundStyle(color)
            Spacer()
            Text(temlow)
                .opacity(0.5)
            溫度橘線view()
            Text(temhigh)
        }
    }
}

#Preview {
    ContentView()
}
