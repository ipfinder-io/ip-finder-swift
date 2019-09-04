Pod::Spec.new do |s|
  s.name         = "ipfinder"
  s.version      = "1.0.0"
  s.summary      = "Official Swift client library for IPfinder."
  s.description  = <<-DESC
                   Official Swift client library for IPfinder

                   Features includes:

                   -    IP address details (city, region, country, postal code, latitude and more ..)
                   -    ASN details (Organization name, registry,domain,comany_type, and more .. )
                   -    Firewall by supported formats details (apache_allow, nginx_deny, CIDR , and more ..)
                   -    IP Address Ranges by the Organization name details (list_asn, list_prefixes , and more ..)
                   -    service status details (queriesPerDay, queriesLeft, key_type, key_info)
                   -    Get Domain IP (asn, organization,country_code ....)
                   -    Get Domain IP history (total_ip, list_ip,organization,asn ....)
                   -    Get list Domain By ASN, Country,Ranges (select_by , total_domain , list_domain ....)
                   DESC

  s.homepage     = "https://ipfinder.io/"
  s.license      = 'Apache License, Version 2.0'
  s.author       = {'Mohamed Ben rebia' => 'mohamed@ipfinder.io'}
  s.source       = { :git => 'https://github.com/ipfinder-io/ip-finder-swift.git',  :tag => "#{s.version}"}
  s.source_files = 'Source/'
  s.requires_arc = true
  s.swift_version = "5.0"
end