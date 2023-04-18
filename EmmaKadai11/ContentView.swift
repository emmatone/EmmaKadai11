//
//  ContentView.swift
//  EmmaKadai11
//
//  Created by Emma
//

import SwiftUI

struct ContentView: View {
    @State var isPresented: Bool = false
    @State var selectedPrefecture: String?

    var body: some View {
        NavigationStack {
            VStack(spacing: 0){
                Text("47都道府県を選択するアプリ")
                    .font(.headline)
                    .padding(.top, 40)
                HStack(spacing:15){
                    Text("都道府県")
                        .font(.headline)
                    Text(selectedPrefecture ?? "未選択")
                        .frame(width:90)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.pink))
                    Button("変更"){
                        isPresented = true
                    }
                    .padding(10)
                    .background(.pink.opacity(0.7))
                    .foregroundColor(.white)
                    .font(.headline)
                    .cornerRadius(10)
                    .fullScreenCover(isPresented: $isPresented) {
                        PrefecturesView(selectedPrefecture: $selectedPrefecture)
                    }
                }
                .frame(width:320 ,height: 150)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.pink).opacity(0.2)
                )
                .padding(.top, 40)
                Spacer()
            }
            .ignoresSafeArea(edges: [.leading, .trailing])
            .navigationTitle("課題11")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.pink.opacity(0.6), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
