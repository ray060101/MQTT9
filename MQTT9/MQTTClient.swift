//
//  MQTTClient.swift
//  MQTT9
//
//  Created by 林宇瑞 on 2023/8/29.
//

import Foundation
import CocoaMQTT

class MQTTClient: CocoaMQTTDelegate {
    let mqtt: CocoaMQTT
    
    let host = "18.198.102.231"
    let username = "powerglow"
    let password = "aeg54160469"
    
    
    init() {
        let clientID = "CocoaMQTT-" + String(ProcessInfo().processIdentifier)
        mqtt = CocoaMQTT(clientID: clientID, host: host, port: 1883)
        mqtt.username = username
        mqtt.password = password
        mqtt.keepAlive = 60
        mqtt.delegate = self
    }
    
    func connect() {
        mqtt.connect()
    }
    
    func mqtt(_ mqtt: CocoaMQTT, didConnectAck ack: CocoaMQTTConnAck) {
        print("didConnectAck: \(ack)")
    }
    
    func mqtt(_ mqtt: CocoaMQTT, didPublishMessage message: CocoaMQTTMessage, id: UInt16) {
        print("didPublishMessage with message: \(message.string!)")
    }
    
    func mqtt(_ mqtt: CocoaMQTT, didPublishAck id: UInt16) {
        print("didPublishAck with id: \(id)")
    }
    
    func mqtt(_ mqtt: CocoaMQTT, didReceiveMessage message: CocoaMQTTMessage, id: UInt16 ) {
        print("didReceiveMessage with message: \(message.string!)")
    }
    
    func mqtt(_ mqtt: CocoaMQTT, didUnsubscribeTopics topics: [String]) {
        print("didUnsubscribeTopics to \(topics)")
    }


    func mqtt(_ mqtt: CocoaMQTT, didUnsubscribeTopic topic: String) {
        print("didUnsubscribeTopic to \(topic)")
    }
    
    func mqttDidPing(_ mqtt: CocoaMQTT) {
        print("mqttDidPing")
    }
    
    func mqttDidReceivePong(_ mqtt: CocoaMQTT) {
        print("mqttDidReceivePong")
    }
    
    func mqttDidDisconnect(_ mqtt: CocoaMQTT, withError err: Error?) {
        print("mqttDidDisconnect")
    }
    
    func mqtt(_ mqtt: CocoaMQTT, didSubscribeTopic topic: String) {
        print("didSubscribeTopic to \(topic)")
    }

}

/*
 @Published var receivedMessage: String = "y"
 let host = "18.198.102.231"
 let username = "powerglow"
 let password = "aeg54160469"
 let topic = "topic/powerglow"  // 要發佈訊息的主題
 let payload = "測試訊息ray"   // 訊息內容
 
 let clientID = "CocoaMQTT-" + String(ProcessInfo().processIdentifier)
 var mqtt: CocoaMQTT!
 */
