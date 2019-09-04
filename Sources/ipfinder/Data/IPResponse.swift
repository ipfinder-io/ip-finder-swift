import Foundation

// MARK: - IPResponse
struct IPResponse {
    let status, statusMessage, ip, type: String
    let continentCode, continentName, countryCode, countryName: String
    let countryNativeName, regionName, city, latitude: String
    let longitude: String
    let location: Location
    let timeZone: TimeZone
    let currency: Currency
    let languages: Languages
    let connection: Connection
    let security: Security
    let header: Header
}

// MARK: - Connection
struct Connection {
    let asn, organization, domain, type: String
}

// MARK: - Currency
struct Currency {
    let name, symbol, symbolNative: String
}

// MARK: - Header
struct Header {
    let totalUserAgent: Int
    let listUserAgent: [ListUserAgent]
}

// MARK: - ListUserAgent
struct ListUserAgent {
    let userAgent: String
    let browserName, osName: String?
    let deviceType: String
}

// MARK: - Languages
struct Languages {
    let code, name, nameNative: String
}

// MARK: - Location
struct Location {
    let capital: String
    let countryFlag: String
    let flagPNG, countryFlagEmoji, countryFlagEmojiUnicode, callingCode: String
    let toplevelDomain, alpha3Code, population: String
    let isEu, isAr: Bool
}

// MARK: - Security
struct Security {
    let isProxy, proxyType, isTor, isSpam: Bool
    let threatLevel: String
}

// MARK: - TimeZone
struct TimeZone {
    let id, utc: String
    let gmtOffset: Int
    let currentTime: String
}
