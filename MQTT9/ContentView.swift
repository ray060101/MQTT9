//
//  ContentView.swift
//  MQTT9
//
//  Created by 林宇瑞 on 2023/8/29.
//

import SwiftUI




struct ContentView: View {
    let mqttClient = MQTTClient()
    
    let topic = "topic/powerglow"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("MQTT9!")
            Button(action: {
                mqttClient.connect()
            }) {
                Text("Connect")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


