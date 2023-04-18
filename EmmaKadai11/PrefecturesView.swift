//
//  PrefecturesView.swift
//  EmmaKadai11
//
//  Created by Emma
//

import SwiftUI

struct PrefecturesView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selectedPrefecture: String?

    private let prefectures: [String] = [
        "北海道",
        "青森県",
        "岩手県",
        "宮城県",
        "秋田県",
        "山形県",
        "福島県",
        "茨城県",
        "栃木県",
        "群馬県",
        "埼玉県",
        "千葉県",
        "東京都",
        "神奈川県",
        "新潟県",
        "富山県",
        "石川県",
        "福井県",
        "山梨県",
        "長野県",
        "岐阜県",
        "静岡県",
        "愛知県",
        "三重県",
        "滋賀県",
        "京都府",
        "大阪府",
        "兵庫県",
        "奈良県",
        "和歌山県",
        "鳥取県",
        "島根県",
        "岡山県",
        "広島県",
        "山口県",
        "徳島県",
        "香川県",
        "愛媛県",
        "高知県",
        "福岡県",
        "佐賀県",
        "長崎県",
        "熊本県",
        "大分県",
        "宮崎県",
        "鹿児島県",
        "沖縄県"
    ]

    private let rowColors: [Color] = [
        Color.pink.opacity(0.1),
        Color.green.opacity(0.1),
        Color.mint.opacity(0.2)
    ]
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                List(prefectures.indices, id: \.self){ index in
                    Button(action: {
                        selectedPrefecture = prefectures[index]
                        dismiss()
                    }) {
                        Text("\(prefectures[index])")
                    }
                    .padding(.leading, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .listRowBackground(rowColors[index % rowColors.count])
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            }
            .ignoresSafeArea(edges: [.leading, .trailing] )
            .navigationTitle("都道府県")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        dismiss()
                    }){
                        Image(systemName: "multiply.circle")
                            .foregroundColor(.white)
                            .font(Font.system(size:20))
                            .padding(.horizontal)
                    }
                }
            }
            .toolbarBackground(.pink.opacity(0.6), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct PrefecturesView_Previews: PreviewProvider {
    static var previews: some View {
        PrefecturesView(selectedPrefecture: .constant("沖縄県"))
    }
}
