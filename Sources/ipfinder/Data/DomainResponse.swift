import Foundation

// MARK: - DomainResponse
struct DomainResponse {
    let status, statusMessage, ip, domain: String
    let domainStatus: Bool
    let continentCode, continentName, countryCode, countryName: String
    let countryNativeName, regionName, city, latitude: String
    let longitude, asn, organization: String
}
