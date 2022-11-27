//
//  ContentView.swift
//  PerfumeDemo-SwiftUI
//
//  Created by Hager Elsayed on 24/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isDetailsSideBarOpened = true
    let description = """
Please add a right description here, Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no
"""
    
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "arrowshape.turn.up.left.fill")
                    .font(.title)
                    .foregroundColor(Color.perfumePrimaryColor)
                    .padding(.horizontal, 24)
                
                Spacer()
                
            }
            .padding(.top, 40)
            ScrollView {
                VStack {
                    VStack(alignment: .leading) {
                        Text("Fratelli Diamanti - Milano")
                            .foregroundColor(Color.perfumeGrayText)
                            .fontWeight(.medium)
                            .font(.system(size: 20))
                            .padding(.vertical, 20)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                        HStack {
                            HStack {
                                VStack(spacing: 33) {
                                    DetailItem(title: "For", value: "women")
                                    DetailItem(title: "Size", value: "300 ml")
                                    DetailItem(title: "Brand", value: "Fratelli")
                                    
                                }
                                
                            }
                            .padding()
                            .background(Color.perfumePrimaryColor)
                            .cornerRadius(20, corners:  [.topRight, .bottomRight])
                            .offset(x: isDetailsSideBarOpened ?  0 : -95)
                            
                            if isDetailsSideBarOpened {
                                Image(systemName: "arrowshape.turn.up.left.2.fill")
                                    .foregroundColor(.white)
                                    .offset(x: -20)
                                    .onTapGesture {
                                        withAnimation {
                                            isDetailsSideBarOpened.toggle()
                                        }
                                    }
                            } else {
                                Image(systemName: "arrowshape.zigzag.forward.fill")
                                    .foregroundColor(.perfumePrimaryColor)
                                    .offset(x: -110)
                                    .font(.title)
                                    .onTapGesture {
                                        withAnimation {
                                            isDetailsSideBarOpened.toggle()
                                        }
                                        
                                    }
                            }
                            
                            VStack(spacing: 0) {
                                Image("perfume")
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .zIndex(1)
                                
                                Ellipse()
                                    .foregroundColor(.white)
                                    .frame(width: 177, height: 58)
                                    .offset(y: -100)
                                    .shadow(color: .perfumeGrayText, radius: 6, x: 0, y: 8)
                                    .padding()
                                
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            .offset(x: isDetailsSideBarOpened ? 0 : -90)
                            
                        }
                        
                        HStack {
                            Text("$120")
                                .fontWeight(.bold)
                                .font(.title2)
                                .foregroundColor(.perfumeBlackText)
                            
                            Spacer()
                            
                            //PerfumeAmountView
                            AmountView()
                        }
                        .padding(.horizontal, 24)
                        
                        Text("Description: ")
                            .fontWeight(.regular)
                            .font(.title3)
                            .padding(.vertical)
                            .padding(.horizontal, 24)
                        
                        Text(description)
                            .foregroundColor(.gray)
                            .fontWeight(.light)
                            .padding(.bottom, 20)
                            .padding(.horizontal, 24)
                        
                        
                        HStack {
                            FavButton()
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Text("Add to cart")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                            .padding()
                            .frame(width: UIScreen.main.bounds.width / 1.5)
                            .background(Color.perfumePrimaryColor)
                            .cornerRadius(20)
                        }
                        .padding(.horizontal, 24)
                        
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
