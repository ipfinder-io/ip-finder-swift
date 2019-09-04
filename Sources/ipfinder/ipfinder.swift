import Foundation
import Just
import SwiftyJSON

/*
 * Copyright 2019 Mohamed Benrebia <mohamed@ipfinder.io>
 *
 * Licensed under the Apache License, Version 2.0 (the License);
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an AS IS BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * @author    Mohamed Benrebia <mohamed@ipfinder.io>
 * @copyright 2019 Mohamed Benrebia
 * @license   https://opensource.org/licenses/Apache-2.0 Apache License, Version 2.0
 * @link      https://ipfinder.io
 */

public class Ipfinder {

	/// DEFAULT BASE URL
	let DEFAULT_BASE_URL = "https://api.ipfinder.io/v1/"

	///  The free token
	let  DEFAULT_API_TOKEN = "free"

	/// DEFAULT FORMAT
	let  FORMAT = "json"

	/// service status path
	let  STATUS_PATH = "info"

	///  IP Address Ranges path
	let  RANGES_PATH = "ranges/"

	/// Firewall path
	let  FIREWALL_PATH = "firewall/"

	/// Get Domain IP path
	let  DOMAIN_PATH = "domain/"

	/// Get Domain IP history path
	let  DOMAIN_H_PATH = "domainhistory/"

	/// Domain By ASN, Country,Ranges path
	let  DOMAIN_BY_PATH = "domainby/"
    

    var token: String?

    var baseUrl: String?

    var format: String?


	/// Constructor
	///
	/// - parameter token|nil: requested size of the poo
	/// - parameter baseUrl|nil: requested size of the poo
    public init(_ token: String? = nil, baseUrl: String? = nil) {

    	 if token != nil {

    	 	Tokenvalidation.validate(token)
    	 	self.token = token

    	 } else {

    	 	self.token = DEFAULT_API_TOKEN

    	 }

    	 if baseUrl != nil {

    	 	self.baseUrl = baseUrl

    	 } else {

    	 	self.baseUrl = DEFAULT_BASE_URL

    	 }
    }

	/// call to server
	///
	/// - parameter path: requested size of the poo
	/// - parameter format|nil: requested size of the poo
	/// - returns:  data
    public func call(_ path: String,format: String? = nil) -> Any {

    	 if format != nil {

    	 	self.format = format

    	 } else {

    	 	self.format = FORMAT

    	 }

    	let endpoint = (self.baseUrl ?? "") + "" + path

    	 let header = ["user-agent": "IPfinder swift-client-v1.0.0", "Content-Type": "application/json"]

		let r = Just.post(
			endpoint, 
			json:["token":self.token,"format":self.format],
			headers: header
			)

		let json = JSON(r.json)

		let data_f = r.content

    	 if format != nil {

    	 	return data_f

    	 } else {

    	 	return json

    	 }
    }


	/// Get details for an Your IP address.
	///
	/// - returns: string representation of the poo
    public func Authentication() -> Any {
    	return call("")
    }

	/// Get details for an IP address.
	///
	/// - parameter path: requested size of the poo
	/// - returns: string representation of the poo
    public func getAddressInfo(_ path: String) -> Any {
    	Ipvalidation.validate(path)
    	return call(path)
    }

	/// Get details for an AS number.
	///
	/// - parameter path: requested size of the poo
	/// - returns: string representation of the poo
    public func getAsn(_ path: String) -> Any {
    	Asnvalidation.validate(path)
    	return call(path)
    }

	/// Get details for an API Token .
	///
	/// - returns: string representation of the poo
    public func getStatus() -> Any {
    	return call(STATUS_PATH)
    }

	/// Get details for an Organization name.
	///
	/// - parameter path: requested size of the poo
	/// - returns: string representation of the poo
    public func getRanges(_ path: String) -> Any {
    	let escapedString = path.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)
    	return call(RANGES_PATH + "" + (escapedString ?? ""))
    }

	/// Get Firewall data.
	///
	/// - parameter path: requested size of the poo
	/// - parameter format: requested size of the poo
	/// - returns: string representation of the poo
    public func getFirewall(_ path: String,format: String) -> Any {

    	Firewallvalidation.validate(path,format:format)

    	return call(FIREWALL_PATH + path,format:format)
    }

	/// Get Domain IP.
	///
	/// - parameter path: requested size of the poo
	/// - returns: string representation of the poo
    public func getDomain(_ path: String) -> Any {
    	Domainvalidation.validate(path)
    	return call(DOMAIN_PATH + path)
    }

	/// Get Domain History IP.
	///
	/// - parameter path: requested size of the poo
	/// - returns: string representation of the poo
    public func getDomainHistory(_ path: String) -> Any {
    	Domainvalidation.validate(path)
    	return call(DOMAIN_H_PATH + path)
    }

	/// Get list Domain By ASN, Country,Ranges.
	///
	/// - parameter by: requested size of the poo
	/// - returns: string representation of the poo
    public func getDomainBy(_ by: String) -> Any {
    	return call(DOMAIN_BY_PATH + by)
    }
}


