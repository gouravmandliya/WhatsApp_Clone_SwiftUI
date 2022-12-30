//
//  Countries.swift
//  WhatsUp
//
//  Created by GOURAVM on 29/12/22.
//

import UIKit

class Countries {
    
    static var countries: [Country] = {
        var countries: [Country] = []
        
        countries.append(Country(countryCode: "AF", phoneExtension: "93"))
        countries.append(Country(countryCode: "AL", phoneExtension: "355"))
        countries.append(Country(countryCode: "DZ", phoneExtension: "213"))
        countries.append(Country(countryCode: "AS", phoneExtension: "1"))
        countries.append(Country(countryCode: "AD", phoneExtension: "376"))
        countries.append(Country(countryCode: "AO", phoneExtension: "244"))
        countries.append(Country(countryCode: "AI", phoneExtension: "1"))
        countries.append(Country(countryCode: "AQ", phoneExtension: "672"))
        countries.append(Country(countryCode: "AG", phoneExtension: "1"))
        countries.append(Country(countryCode: "AR", phoneExtension: "54"))
        countries.append(Country(countryCode: "AM", phoneExtension: "374"))
        countries.append(Country(countryCode: "AW", phoneExtension: "297"))
        countries.append(Country(countryCode: "AU", phoneExtension: "61"))
        countries.append(Country(countryCode: "AT", phoneExtension: "43"))
        countries.append(Country(countryCode: "AZ", phoneExtension: "994"))
        
        
        countries.append(Country(countryCode: "BS", phoneExtension: "1"))
        countries.append(Country(countryCode: "BH", phoneExtension: "973"))
        countries.append(Country(countryCode: "BD", phoneExtension: "880"))
        countries.append(Country(countryCode: "BB", phoneExtension: "1"))
        countries.append(Country(countryCode: "BY", phoneExtension: "375"))
        countries.append(Country(countryCode: "BE", phoneExtension: "32"))
        countries.append(Country(countryCode: "BZ", phoneExtension: "501"))
        countries.append(Country(countryCode: "BJ", phoneExtension: "229"))
        countries.append(Country(countryCode: "BM", phoneExtension: "1"))
        countries.append(Country(countryCode: "BT", phoneExtension: "975"))
        countries.append(Country(countryCode: "BO", phoneExtension: "591"))
        countries.append(Country(countryCode: "BA", phoneExtension: "387"))
        countries.append(Country(countryCode: "BW", phoneExtension: "267"))
        countries.append(Country(countryCode: "BR", phoneExtension: "55"))
        countries.append(Country(countryCode: "IO", phoneExtension: "246"))
        countries.append(Country(countryCode: "VG", phoneExtension: "1"))
        countries.append(Country(countryCode: "BN", phoneExtension: "673"))
        countries.append(Country(countryCode: "BG", phoneExtension: "359"))
        countries.append(Country(countryCode: "BF", phoneExtension: "226"))
        countries.append(Country(countryCode: "BI", phoneExtension: "257"))
        countries.append(Country(countryCode: "KH", phoneExtension: "855"))
        countries.append(Country(countryCode: "CM", phoneExtension: "237"))
        countries.append(Country(countryCode: "CA", phoneExtension: "1"))
        countries.append(Country(countryCode: "CV", phoneExtension: "238"))
        
        countries.append(Country(countryCode: "KY", phoneExtension: "1"))
        countries.append(Country(countryCode: "CF", phoneExtension: "236"))
        countries.append(Country(countryCode: "TD", phoneExtension: "235"))
        countries.append(Country(countryCode: "CL", phoneExtension: "56"))
        countries.append(Country(countryCode: "CN", phoneExtension: "86"))
        countries.append(Country(countryCode: "CX", phoneExtension: "61"))
        countries.append(Country(countryCode: "CC", phoneExtension: "61"))
        countries.append(Country(countryCode: "CO", phoneExtension: "57"))
        countries.append(Country(countryCode: "KM", phoneExtension: "269"))
        countries.append(Country(countryCode: "CK", phoneExtension: "682"))
        countries.append(Country(countryCode: "CR", phoneExtension: "506"))
        countries.append(Country(countryCode: "HR", phoneExtension: "385"))
        countries.append(Country(countryCode: "CU", phoneExtension: "53"))
        countries.append(Country(countryCode: "CW", phoneExtension: "599"))
        countries.append(Country(countryCode: "CY", phoneExtension: "357"))
        countries.append(Country(countryCode: "CZ", phoneExtension: "420"))
        countries.append(Country(countryCode: "CD", phoneExtension: "243"))
        
        countries.append(Country(countryCode: "DK", phoneExtension: "45"))
        countries.append(Country(countryCode: "DJ", phoneExtension: "253"))
        countries.append(Country(countryCode: "DM", phoneExtension: "1"))
        countries.append(Country(countryCode: "DO", phoneExtension: "1"))
        
        countries.append(Country(countryCode: "TL", phoneExtension: "670"))
        countries.append(Country(countryCode: "EC", phoneExtension: "593"))
        countries.append(Country(countryCode: "EG", phoneExtension: "20"))
        countries.append(Country(countryCode: "SV", phoneExtension: "503"))
        countries.append(Country(countryCode: "GQ", phoneExtension: "240"))
        countries.append(Country(countryCode: "ER", phoneExtension: "291"))
        countries.append(Country(countryCode: "EE", phoneExtension: "372"))
        countries.append(Country(countryCode: "ET", phoneExtension: "251"))
        
        countries.append(Country(countryCode: "FK", phoneExtension: "500"))
        countries.append(Country(countryCode: "FO", phoneExtension: "298"))
        countries.append(Country(countryCode: "FJ", phoneExtension: "679"))
        countries.append(Country(countryCode: "FI", phoneExtension: "358"))
        countries.append(Country(countryCode: "FR", phoneExtension: "33"))
        countries.append(Country(countryCode: "PF", phoneExtension: "689"))
        
        countries.append(Country(countryCode: "GA", phoneExtension: "241"))
        countries.append(Country(countryCode: "GM", phoneExtension: "220"))
        countries.append(Country(countryCode: "GE", phoneExtension: "995"))
        countries.append(Country(countryCode: "DE", phoneExtension: "49"))
        countries.append(Country(countryCode: "GH", phoneExtension: "233"))
        countries.append(Country(countryCode: "GI", phoneExtension: "350"))
        countries.append(Country(countryCode: "GR", phoneExtension: "30"))
        countries.append(Country(countryCode: "GL", phoneExtension: "299"))
        countries.append(Country(countryCode: "GD", phoneExtension: "1"))
        countries.append(Country(countryCode: "GU", phoneExtension: "1"))
        countries.append(Country(countryCode: "GT", phoneExtension: "502"))
        countries.append(Country(countryCode: "GG", phoneExtension: "44"))
        countries.append(Country(countryCode: "GN", phoneExtension: "224"))
        countries.append(Country(countryCode: "GW", phoneExtension: "245"))
        countries.append(Country(countryCode: "GY", phoneExtension: "592"))
        
        countries.append(Country(countryCode: "HT", phoneExtension: "509"))
        countries.append(Country(countryCode: "HN", phoneExtension: "504"))
        countries.append(Country(countryCode: "HK", phoneExtension: "852"))
        countries.append(Country(countryCode: "HU", phoneExtension: "36"))
        
        countries.append(Country(countryCode: "IS", phoneExtension: "354"))
        countries.append(Country(countryCode: "IN", phoneExtension: "91"))
        countries.append(Country(countryCode: "ID", phoneExtension: "62"))
        countries.append(Country(countryCode: "IR", phoneExtension: "98"))
        countries.append(Country(countryCode: "IQ", phoneExtension: "964"))
        countries.append(Country(countryCode: "IE", phoneExtension: "353"))
        countries.append(Country(countryCode: "IM", phoneExtension: "44"))
        countries.append(Country(countryCode: "IL", phoneExtension: "972"))
        countries.append(Country(countryCode: "IT", phoneExtension: "39"))
        countries.append(Country(countryCode: "CI", phoneExtension: "225"))
        
        countries.append(Country(countryCode: "JM", phoneExtension: "1"))
        countries.append(Country(countryCode: "JP", phoneExtension: "81"))
        countries.append(Country(countryCode: "JE", phoneExtension: "44"))
        countries.append(Country(countryCode: "JO", phoneExtension: "962"))
        
        countries.append(Country(countryCode: "KZ", phoneExtension: "7"))
        countries.append(Country(countryCode: "KE", phoneExtension: "254"))
        countries.append(Country(countryCode: "KI", phoneExtension: "686"))
        countries.append(Country(countryCode: "XK", phoneExtension: "383"))
        countries.append(Country(countryCode: "KW", phoneExtension: "965"))
        countries.append(Country(countryCode: "KG", phoneExtension: "996"))
        
        countries.append(Country(countryCode: "LA", phoneExtension: "856"))
        countries.append(Country(countryCode: "LV", phoneExtension: "371"))
        countries.append(Country(countryCode: "LB", phoneExtension: "961"))
        countries.append(Country(countryCode: "LS", phoneExtension: "266"))
        countries.append(Country(countryCode: "LR", phoneExtension: "231"))
        countries.append(Country(countryCode: "LY", phoneExtension: "218"))
        countries.append(Country(countryCode: "LI", phoneExtension: "423"))
        countries.append(Country(countryCode: "LT", phoneExtension: "370"))
        countries.append(Country(countryCode: "LU", phoneExtension: "352"))
        
        countries.append(Country(countryCode: "MO", phoneExtension: "853"))
        countries.append(Country(countryCode: "MK", phoneExtension: "389"))
        countries.append(Country(countryCode: "MG", phoneExtension: "261"))
        countries.append(Country(countryCode: "MW", phoneExtension: "265"))
        countries.append(Country(countryCode: "MY", phoneExtension: "60"))
        countries.append(Country(countryCode: "MV", phoneExtension: "960"))
        countries.append(Country(countryCode: "ML", phoneExtension: "223"))
        countries.append(Country(countryCode: "MT", phoneExtension: "356"))
        countries.append(Country(countryCode: "MH", phoneExtension: "692"))
        countries.append(Country(countryCode: "MR", phoneExtension: "222"))
        countries.append(Country(countryCode: "MU", phoneExtension: "230"))
        countries.append(Country(countryCode: "YT", phoneExtension: "262"))
        countries.append(Country(countryCode: "MX", phoneExtension: "52"))
        countries.append(Country(countryCode: "FM", phoneExtension: "691"))
        countries.append(Country(countryCode: "MD", phoneExtension: "373"))
        countries.append(Country(countryCode: "MC", phoneExtension: "377"))
        countries.append(Country(countryCode: "MN", phoneExtension: "976"))
        countries.append(Country(countryCode: "ME", phoneExtension: "382"))
        countries.append(Country(countryCode: "MS", phoneExtension: "1"))
        countries.append(Country(countryCode: "MA", phoneExtension: "212"))
        countries.append(Country(countryCode: "MZ", phoneExtension: "258"))
        countries.append(Country(countryCode: "MM", phoneExtension: "95"))
        
        countries.append(Country(countryCode: "NA", phoneExtension: "264"))
        countries.append(Country(countryCode: "NR", phoneExtension: "674"))
        countries.append(Country(countryCode: "NP", phoneExtension: "977"))
        countries.append(Country(countryCode: "NL", phoneExtension: "31"))
        countries.append(Country(countryCode: "AN", phoneExtension: "599"))
        countries.append(Country(countryCode: "NC", phoneExtension: "687"))
        countries.append(Country(countryCode: "NZ", phoneExtension: "64"))
        countries.append(Country(countryCode: "NI", phoneExtension: "505"))
        countries.append(Country(countryCode: "NE", phoneExtension: "227"))
        countries.append(Country(countryCode: "NG", phoneExtension: "234"))
        countries.append(Country(countryCode: "NU", phoneExtension: "683"))
        countries.append(Country(countryCode: "KP", phoneExtension: "850"))
        countries.append(Country(countryCode: "MP", phoneExtension: "1"))
        countries.append(Country(countryCode: "NO", phoneExtension: "47"))
        
        countries.append(Country(countryCode: "OM", phoneExtension: "968"))
        
        countries.append(Country(countryCode: "PK", phoneExtension: "92"))
        countries.append(Country(countryCode: "PW", phoneExtension: "680"))
        countries.append(Country(countryCode: "PS", phoneExtension: "970"))
        countries.append(Country(countryCode: "PA", phoneExtension: "507"))
        countries.append(Country(countryCode: "PG", phoneExtension: "675"))
        countries.append(Country(countryCode: "PY", phoneExtension: "595"))
        countries.append(Country(countryCode: "PE", phoneExtension: "51"))
        countries.append(Country(countryCode: "PH", phoneExtension: "63"))
        countries.append(Country(countryCode: "PN", phoneExtension: "64"))
        countries.append(Country(countryCode: "PL", phoneExtension: "48"))
        countries.append(Country(countryCode: "PT", phoneExtension: "351"))
        countries.append(Country(countryCode: "PR", phoneExtension: "1"))
        
        countries.append(Country(countryCode: "QA", phoneExtension: "974"))
        
        countries.append(Country(countryCode: "CG", phoneExtension: "242"))
        countries.append(Country(countryCode: "RE", phoneExtension: "262"))
        countries.append(Country(countryCode: "RO", phoneExtension: "40"))
        countries.append(Country(countryCode: "RU", phoneExtension: "7"))
        countries.append(Country(countryCode: "RW", phoneExtension: "250"))
        
        countries.append(Country(countryCode: "BL", phoneExtension: "590"))
        countries.append(Country(countryCode: "SH", phoneExtension: "290"))
        countries.append(Country(countryCode: "KN", phoneExtension: "1"))
        countries.append(Country(countryCode: "LC", phoneExtension: "1"))
        countries.append(Country(countryCode: "MF", phoneExtension: "590"))
        countries.append(Country(countryCode: "PM", phoneExtension: "508"))
        
        countries.append(Country(countryCode: "VC", phoneExtension: "1"))
        countries.append(Country(countryCode: "WS", phoneExtension: "685"))
        countries.append(Country(countryCode: "SM", phoneExtension: "378"))
        countries.append(Country(countryCode: "ST", phoneExtension: "239"))
        countries.append(Country(countryCode: "SA", phoneExtension: "966"))
        countries.append(Country(countryCode: "SN", phoneExtension: "221"))
        countries.append(Country(countryCode: "RS", phoneExtension: "381"))
        countries.append(Country(countryCode: "SC", phoneExtension: "248"))
        countries.append(Country(countryCode: "SL", phoneExtension: "232"))
        countries.append(Country(countryCode: "SG", phoneExtension: "65"))
        countries.append(Country(countryCode: "SX", phoneExtension: "1"))
        countries.append(Country(countryCode: "SK", phoneExtension: "421"))
        countries.append(Country(countryCode: "SI", phoneExtension: "386"))
        countries.append(Country(countryCode: "SB", phoneExtension: "677"))
        countries.append(Country(countryCode: "SO", phoneExtension: "252"))
        countries.append(Country(countryCode: "ZA", phoneExtension: "27"))
        countries.append(Country(countryCode: "KR", phoneExtension: "82"))
        countries.append(Country(countryCode: "SS", phoneExtension: "211"))
        countries.append(Country(countryCode: "ES", phoneExtension: "34"))
        countries.append(Country(countryCode: "LK", phoneExtension: "94"))
        countries.append(Country(countryCode: "SD", phoneExtension: "249"))
        countries.append(Country(countryCode: "SR", phoneExtension: "597"))
        countries.append(Country(countryCode: "SJ", phoneExtension: "47"))
        countries.append(Country(countryCode: "SZ", phoneExtension: "268"))
        countries.append(Country(countryCode: "SE", phoneExtension: "46"))
        countries.append(Country(countryCode: "CH", phoneExtension: "41"))
        countries.append(Country(countryCode: "SY", phoneExtension: "963"))
        
        countries.append(Country(countryCode: "TW", phoneExtension: "886"))
        countries.append(Country(countryCode: "TJ", phoneExtension: "992"))
        countries.append(Country(countryCode: "TZ", phoneExtension: "255"))
        countries.append(Country(countryCode: "TH", phoneExtension: "66"))
        countries.append(Country(countryCode: "TG", phoneExtension: "228"))
        countries.append(Country(countryCode: "TK", phoneExtension: "690"))
        countries.append(Country(countryCode: "TO", phoneExtension: "676"))
        countries.append(Country(countryCode: "TT", phoneExtension: "1"))
        countries.append(Country(countryCode: "TN", phoneExtension: "216"))
        countries.append(Country(countryCode: "TR", phoneExtension: "90"))
        countries.append(Country(countryCode: "TM", phoneExtension: "993"))
        countries.append(Country(countryCode: "TC", phoneExtension: "1"))
        countries.append(Country(countryCode: "TV", phoneExtension: "688"))
        
        countries.append(Country(countryCode: "VI", phoneExtension: "1"))
        countries.append(Country(countryCode: "UG", phoneExtension: "256"))
        countries.append(Country(countryCode: "UA", phoneExtension: "380"))
        countries.append(Country(countryCode: "AE", phoneExtension: "971"))
        countries.append(Country(countryCode: "GB", phoneExtension: "44"))
        countries.append(Country(countryCode: "US", phoneExtension: "1"))
        countries.append(Country(countryCode: "UY", phoneExtension: "598"))
        countries.append(Country(countryCode: "UZ", phoneExtension: "998"))
        
        countries.append(Country(countryCode: "VU", phoneExtension: "678"))
        countries.append(Country(countryCode: "VA", phoneExtension: "379"))
        countries.append(Country(countryCode: "VE", phoneExtension: "58"))
        countries.append(Country(countryCode: "VN", phoneExtension: "84"))
        
        countries.append(Country(countryCode: "WF", phoneExtension: "681"))
        countries.append(Country(countryCode: "EH", phoneExtension: "212"))
        
        countries.append(Country(countryCode: "YE", phoneExtension: "967"))
        
        countries.append(Country(countryCode: "ZM", phoneExtension: "260"))
        countries.append(Country(countryCode: "ZW", phoneExtension: "263"))
        
        return countries
    }()
}
public class Country: Identifiable,ObservableObject {
    
    
    public var id = UUID()
    public var countryCode: String
    public var phoneExtension: String
    
    public var name: String {
        let current = Locale(identifier: "en_US")
        return current.localizedString(forRegionCode: countryCode) ?? ""
    }
    
    public var flag: String? {
        return flag(country: countryCode)
    }
    
    init(countryCode: String, phoneExtension: String) {
        self.countryCode = countryCode
        self.phoneExtension = phoneExtension
    }
    
    private func flag(country:String) -> String {
        let base : UInt32 = 127397
        var s = ""
        for v in country.unicodeScalars {
            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return String(s)
    }
    
}

