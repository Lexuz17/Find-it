//
//  TreatmentDashboardView.swift
//  find-it
//
//  Created by Elyssa Davina Giovanni on 14/05/23.
//

import SwiftUI

struct TreatmentDashboardView: View {
    var body: some View {
        let images = ["DepressionTreatment", "AnxietyTreatment", "PTSDTreatment"]
        let treatments = ["Depression", "Anxiety", "Bipolar", "PTSD", "Youth Mental Health", "Pychosis & Scizorphernia", "Eating Disorder", "Addiction"]
        let colors = [
            Color(red: 29 / 255, green: 32 / 255, blue: 99 / 255, opacity: 1.0),
            Color(red: 113 / 255, green: 204 / 255, blue: 86 / 255, opacity: 1.0),
            Color(red: 209 / 255, green: 76 / 255, blue: 59 / 255, opacity: 1.0)
        ]
        ScrollView {
            VStack (alignment: .leading) {
                HStack {
                    Text("Treatments")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("575DB0"))
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 25.0)
                
                ForEach(Array(treatments.enumerated()), id: \.element) { (index, treatment) in
                    NavigationLink(destination: TestDetailView()) {
                        if treatment == "PTSD" || treatment == "Addiction" {
                            ZStack {
                                VStack {
                                    ZStack {
                                        Image(images[index % 3])
                                            .resizable()
                                            .frame(height: 100)
                                        VStack {
                                            Spacer()
                                            HStack {
                                                Text("0% Done")
                                                    .frame(width: 130.0, height: 25.0)
                                                    .font(.caption)
                                                    .foregroundColor(.white)
                                                    .background(
                                                        Rectangle()
                                                            .fill(Color("575DB0"))
                                                            .frame(width: 130.0, height: 25.0)
                                                    )
                                                Spacer()
                                            }
                                        }
                                    }
                                    .padding(.horizontal, 10.0)
                                    .padding(.top, 15.0)
                                    
                                    VStack {
                                        HStack {
                                            Text(treatment + " Treatment")
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                        Spacer()
                                            .frame(height: 5.0)
                                        HStack {
                                            Text("20 Activities")
                                                .font(.caption)
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                        Spacer()
                                            .frame(height: 15.0)
                                        HStack {
                                            Image(systemName: "target")
                                            Text("Set Goals")
                                                .font(.caption)
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                    }
                                    .padding(.horizontal, 10)
                                    .padding(.bottom, 15)
                                }
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.black)
                                    .shadow(radius: 1)
                                    .opacity(0.4)
                                
                                VStack {
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Image(systemName: "lock")
                                            .foregroundColor(.white)
                                            .background(
                                                RoundedRectangle(cornerRadius: 18)
                                                    .fill(Color("575DB0"))
                                                    .frame(width: 36.0, height: 36.0)
                                            )
                                        Spacer()
                                            .frame(width: 15.0)
                                    }
                                    Spacer()
                                        .frame(height: 15.0)
                                }
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(colors[index % 3])
                                    .shadow(radius: 2)
                            )
                        } else if treatment == "Depression" || treatment == "Anxiety" {
                            ZStack {
                                VStack {
                                    ZStack {
                                        Image(images[index % 3])
                                            .resizable()
                                            .frame(height: 100)
                                        VStack {
                                            Spacer()
                                            HStack {
                                                Text("20% Done")
                                                    .frame(width: 130.0, height: 25.0)
                                                    .font(.caption)
                                                    .foregroundColor(.white)
                                                    .background(
                                                        Rectangle()
                                                            .fill(Color("575DB0"))
                                                            .frame(width: 130.0, height: 25.0)
                                                    )
                                                Spacer()
                                            }
                                        }
                                    }
                                    .padding(.horizontal, 10.0)
                                    .padding(.top, 15.0)
                                    
                                    VStack {
                                        HStack {
                                            Text(treatment + " Treatment")
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                        Spacer()
                                            .frame(height: 5.0)
                                        HStack {
                                            Text("20 Activities")
                                                .font(.caption)
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                        Spacer()
                                            .frame(height: 15.0)
                                        HStack {
                                            Image(systemName: "target")
                                                .foregroundColor(Color.white)
                                            Text("Set Goals")
                                                .font(.caption)
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                    }
                                    .padding(.horizontal, 10)
                                    .padding(.bottom, 15)
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                    .fill(colors[index % 3])
                                    .shadow(radius: 2)
                                )
                                
                                VStack {
                                    Spacer()
                                        .frame(height: 30.0)
                                    HStack {
                                        Spacer()
                                        Text("Recommended")
                                            .frame(width: 120, height: 25)
                                            .font(.caption)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .background(
                                                Rectangle()
                                                    .fill(Color(red: 1, green: 107 / 255, blue: 0, opacity: 1))
                                            )
                                    }
                                    Spacer()
                                }
                            }
                        } else {
                            VStack {
                                ZStack {
                                    Image(images[index % 3])
                                        .resizable()
                                        .frame(height: 100)
                                    VStack {
                                        Spacer()
                                        HStack {
                                            Text("0% Done")
                                                .frame(width: 130.0, height: 25.0)
                                                .font(.caption)
                                                .foregroundColor(.white)
                                                .background(
                                                    Rectangle()
                                                        .fill(Color("575DB0"))
                                                        .frame(width: 130.0, height: 25.0)
                                                )
                                            Spacer()
                                        }
                                    }
                                }
                                .padding(.horizontal, 10.0)
                                .padding(.top, 15.0)
                                
                                VStack {
                                    HStack {
                                        Text(treatment + " Treatment")
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    Spacer()
                                        .frame(height: 5.0)
                                    HStack {
                                        Text("20 Activities")
                                            .font(.caption)
                                            .fontWeight(.regular)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                    Spacer()
                                        .frame(height: 15.0)
                                    HStack {
                                        Image(systemName: "target")
                                            .foregroundColor(Color.white)
                                        Text("Set Goals")
                                            .font(.caption)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                }
                                .padding(.horizontal, 10)
                                .padding(.bottom, 15)
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                .fill(colors[index % 3])
                                .shadow(radius: 2)
                            )
                        }
                    }
                        
                    Spacer()
                        .frame(height: 20.0)
                }
            }
            .padding(.all, 40.0)
            .frame(maxHeight: .infinity)
        }
        .background(
            LinearGradient(colors: [.white, Color("E7E8FF")], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct TreatmentDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentDashboardView()
    }
}
