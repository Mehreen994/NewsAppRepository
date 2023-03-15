//
//  models.swift
//  NewsApp
//
//  Created by Mehreen Kanwal on 16.02.23.
//

import Foundation
class Models {
    
    var models :[model] = []
    var freiburgModel : model!
    var breisgauModel : model!
    var emmendingenModel : model!
    var kaiserstuhlModel : model!
    var loerrach_dreilandModel : model!
    var markgraeflerlandModel : model!
    var ortenauModels : model!
    var schwarzwaldModel : model!
    var waldshutModel : model!
    var baseUrl : String = ""
    var id : String = ""
    
    func gettingModels(){
        models.append(model.init(hiddenPushChannel: "edition_freiburg", id: "freiburg", isDefault: true, baseUrl: "https://www.badische-zeitung.de/bzs/freiburg/", loginBaseUrl: "https://sso.badische-zeitung.de/oauth/v2", logo: "baz", name: "Freiburg", loginPath: "/login", userPath: "/get_user_profile_prepublic", contentConfigPath: "/structure", ressortPath: "/getressort", epaperLinkStoreIOS: "https://mehr.bz/bzapp", epaperLinkStoreAndroid: "https://play.google.com/store/apps/details?id=at.apa.pdfwlclient.badische&hl=de", epaperDeeplinkIOS: "BadischeZeitung://", epaperDeeplinkAndroid: "badischeapp://"))
        freiburgModel = models[0]
        models.append(model.init(hiddenPushChannel:"edition_breisgau", id:"breisgau" , isDefault:  false, baseUrl: "https://www.badische-zeitung.de/bzs/breisgau/", loginBaseUrl: "https://sso.badische-zeitung.de/oauth/v2", logo: "baz", name:"Region Breisgau", loginPath: "/login", userPath: "/get_user_profile_prepublic", contentConfigPath: "/structure", ressortPath: "/getressort", epaperLinkStoreIOS: "https://mehr.bz/bzapp", epaperLinkStoreAndroid: "https://play.google.com/store/apps/details?id=at.apa.pdfwlclient.badische&hl=de", epaperDeeplinkIOS: "BadischeZeitung://", epaperDeeplinkAndroid: "badischeapp://"))
        breisgauModel = models[1]
        models.append(model.init(hiddenPushChannel: "edition_emmendingen", id: "emmendingen", isDefault: false, baseUrl: "https://www.badische-zeitung.de/bzs/emmendingen/", loginBaseUrl: "https://sso.badische-zeitung.de/oauth/v2", logo: "baz", name: "Region Emmendingen", loginPath: "/login", userPath: "/get_user_profile_prepublic", contentConfigPath: "/structure", ressortPath: "/getressort", epaperLinkStoreIOS: "https://mehr.bz/bzapp", epaperLinkStoreAndroid: "https://play.google.com/store/apps/details?id=at.apa.pdfwlclient.badische&hl=de", epaperDeeplinkIOS: "BadischeZeitung://", epaperDeeplinkAndroid: "badischeapp://"))
        emmendingenModel = models[2]
        models.append(model.init(hiddenPushChannel: "edition_kaiserstuhl", id: "kaiserstuhl", isDefault: false, baseUrl: "https://www.badische-zeitung.de/bzs/kaiserstuhl/", loginBaseUrl: "https://sso.badische-zeitung.de/oauth/v2", logo: "baz", name: "Region Kaiserstuhl", loginPath: "/login", userPath: "/get_user_profile_prepublic", contentConfigPath: "/structure", ressortPath: "/getressort", epaperLinkStoreIOS: "https://mehr.bz/bzapp", epaperLinkStoreAndroid: "https://play.google.com/store/apps/details?id=at.apa.pdfwlclient.badische&hl=de", epaperDeeplinkIOS: "BadischeZeitung://", epaperDeeplinkAndroid:"badischeapp://"))
        kaiserstuhlModel = models[3]
        models.append(model.init(hiddenPushChannel: "edition_loerrach_dreiland", id: "loerrach_dreiland", isDefault: false, baseUrl: "https://www.badische-zeitung.de/bzs/loerrach_dreiland/", loginBaseUrl: "https://sso.badische-zeitung.de/oauth/v2", logo: "baz", name: "Region Lörrach & Dreiland", loginPath: "/login", userPath: "/get_user_profile_prepublic", contentConfigPath: "/structure", ressortPath: "/getressort", epaperLinkStoreIOS: "https://mehr.bz/bzapp", epaperLinkStoreAndroid: "https://play.google.com/store/apps/details?id=at.apa.pdfwlclient.badische&hl=de", epaperDeeplinkIOS: "BadischeZeitung://", epaperDeeplinkAndroid: "badischeapp://"))
        loerrach_dreilandModel=models[4]
        models.append(model.init(hiddenPushChannel: "edition_markgraeflerland", id: "markgraeflerland", isDefault: false, baseUrl: "https://www.badische-zeitung.de/bzs/markgraeflerland/", loginBaseUrl: "https://sso.badische-zeitung.de/oauth/v2", logo: "baz", name: "Region Markgräflerland", loginPath: "/login", userPath: "/get_user_profile_prepublic", contentConfigPath: "/structure", ressortPath: "/getressort", epaperLinkStoreIOS: "https://mehr.bz/bzapp", epaperLinkStoreAndroid: "https://play.google.com/store/apps/details?id=at.apa.pdfwlclient.badische&hl=de", epaperDeeplinkIOS: "BadischeZeitung://", epaperDeeplinkAndroid: "badischeapp://"))
    markgraeflerlandModel = models[5]
        models.append(model.init(hiddenPushChannel: "edition_ortenau", id: "ortenau", isDefault: false, baseUrl: "https://www.badische-zeitung.de/bzs/ortenau/", loginBaseUrl: "https://sso.badische-zeitung.de/oauth/v2", logo: "baz", name: "Region Ortenau", loginPath: "/login", userPath: "/get_user_profile_prepublic", contentConfigPath: "/structure", ressortPath: "/getressort", epaperLinkStoreIOS: "https://mehr.bz/bzapp", epaperLinkStoreAndroid: "https://play.google.com/store/apps/details?id=at.apa.pdfwlclient.badische&hl=de", epaperDeeplinkIOS: "BadischeZeitung://", epaperDeeplinkAndroid: "badischeapp://"))
        ortenauModels = models[6]
        models.append(model.init(hiddenPushChannel: "edition_schwarzwald", id: "schwarzwald", isDefault: false, baseUrl: "https://www.badische-zeitung.de/bzs/schwarzwald/", loginBaseUrl: "https://sso.badische-zeitung.de/oauth/v2", logo: "baz", name: "Region Schwarzwald", loginPath: "/login", userPath: "/get_user_profile_prepublic", contentConfigPath: "/structure", ressortPath: "/getressort", epaperLinkStoreIOS: "https://mehr.bz/bzapp", epaperLinkStoreAndroid: "https://play.google.com/store/apps/details?id=at.apa.pdfwlclient.badische&hl=de", epaperDeeplinkIOS: "BadischeZeitung://", epaperDeeplinkAndroid: "badischeapp://"))
        schwarzwaldModel = models[7]
        models.append(model.init(hiddenPushChannel: "edition_waldshut", id: "waldshut", isDefault: false, baseUrl: "https://www.badische-zeitung.de/bzs/waldshut/", loginBaseUrl: "https://sso.badische-zeitung.de/oauth/v2", logo: "baz", name: "Region Waldshut", loginPath: "/login", userPath: "/get_user_profile_prepublic", contentConfigPath: "/structure", ressortPath: "/getressort", epaperLinkStoreIOS: "https://mehr.bz/bzapp", epaperLinkStoreAndroid: "https://play.google.com/store/apps/details?id=at.apa.pdfwlclient.badische&hl=de", epaperDeeplinkIOS: "BadischeZeitung://", epaperDeeplinkAndroid: "badischeapp://"))
        waldshutModel = models[8]
        models = [models[0],models[1],models[2],models[3],models[4],models[5],models[6],models[7],models[8]]
    }
    
    func requestForMenus() {
    let url = "\(baseUrl)v2/structure?version=354&os=android"
    URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
                    guard let data = data, error == nil else {
                        print("something went wrong")
                        return
                    }
    var json:ResponseData?
                    do {
                        print("json is decoding")
                        json = try JSONDecoder().decode(ResponseData.self, from: data)
                    }
                    catch {
                        print("error: \(error)")
                    }
    guard let result = json else {
                        return
                    }
                    DispatchQueue.main.async {
                        print(result)
                    }
                }).resume()
            }
    
    func requestForRessorts() {
    let url = "\(baseUrl)v2/getressort?id=suedwest&version=354&os=android"
    URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
                    guard let data = data, error == nil else {
                        print("something went wrong")
                        return
                    }
    var json:Data?
                    do {
                        print("json is decoding")
                        json = try JSONDecoder().decode(Data.self, from: data)
                    }
                    catch {
                        print("error: \(error)")
                    }
    guard let result = json else {
                        return
                    }
                    DispatchQueue.main.async {
                        print(result)
                    

                    }
                }).resume()
            }
}


struct model : Codable {
    let hiddenPushChannel : String
    let id : String
    let isDefault : Bool
    let baseUrl : String
    let loginBaseUrl : String
    let logo : String
    let name : String
    let loginPath : String
    let userPath : String
    let contentConfigPath : String
    let ressortPath : String
    let epaperLinkStoreIOS : String
    let epaperLinkStoreAndroid : String
    let epaperDeeplinkIOS : String
    let epaperDeeplinkAndroid : String
}

struct ResponseData : Codable  {
    let structure : structure
}
struct structure : Codable  {
    let menu : menu
    let topmenu : [topmenu]
}
struct menu : Codable {
    let ressorts : [ressorts]
    let links : [links]
}
struct ressorts : Codable {
    let id : String
    let title : String
//    let children : [children]
}
//struct children : Codable {
//    let id : String
//    let title : String
//    let parentId : String

//}
struct links : Codable {
    let id : String
    let title : String
    let url : String
    let openInApp : Bool
}
struct topmenu : Codable {
    let id : String
    let title : String
}

struct Data : Codable  {
    
    let ressorts : [Ressorts]
}

struct Ressorts : Codable {
    let id :String
    let title : String
    let adzone : String
    let ivw : String
    let articleCards : [articleCards]
}

struct articleCards : Codable {
    let id :Int
//    let pictureUrl :String
//    let pictureUrlWide :String
    let title :String
    let topic :String
    let teaserText :String
    let publishDate :String
    let updatedAt :String
    let articleId :Int
    let articleUrl : String
    let shareUrl : String
    let isPremium : Bool
    let teaserIcon : String?
    let label : String?
    let labelColor : String
    let viewType : String
    let characteristics : [characteristics]
    
}
struct characteristics : Codable {
    
}
enum codingKeys : String , CodingKey {
    case Ressorts = "ressorts"
}
