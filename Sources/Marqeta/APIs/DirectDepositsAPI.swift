//
// DirectDepositsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class DirectDepositsAPI {
    /**
     * enum for parameter directDepositState
     */
    public enum DirectDepositState_getDirectdeposits: String { 
        case pending = "PENDING"
        case applied = "APPLIED"
        case reversed = "REVERSED"
        case rejected = "REJECTED"
    }

    /**
     Retrieves a list of all direct deposit records for your program.

     - parameter count: (query) The number of direct deposit records to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Start index (optional, default to 0)
     - parameter reversedAfterGracePeriod: (query) Reversed after grace period (optional)
     - parameter userToken: (query) User token (optional)
     - parameter businessToken: (query) Business token (optional)
     - parameter directDepositState: (query) Comma-delimited list of direct deposit states to display e.g. PENDING | REVERSED | APPLIED | REJECTED  (optional)
     - parameter startSettlementDate: (query) Start Settlement Date (optional)
     - parameter endSettlementDate: (query) End Settlement Date (optional)
     - parameter sortBy: (query) Sort order (optional, default to -lastModifiedTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDirectdeposits(count: Int? = nil, startIndex: Int? = nil, reversedAfterGracePeriod: Bool? = nil, userToken: String? = nil, businessToken: String? = nil, directDepositState: DirectDepositState_getDirectdeposits? = nil, startSettlementDate: String? = nil, endSettlementDate: String? = nil, sortBy: String? = nil, completion: @escaping ((_ data: DirectDepositListResponse?,_ error: Error?) -> Void)) {
        getDirectdepositsWithRequestBuilder(count: count, startIndex: startIndex, reversedAfterGracePeriod: reversedAfterGracePeriod, userToken: userToken, businessToken: businessToken, directDepositState: directDepositState, startSettlementDate: startSettlementDate, endSettlementDate: endSettlementDate, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieves a list of all direct deposit records for your program.
     - GET /directdeposits
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "company_discretionary_data" : "company_discretionary_data",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "amount" : 6.027456183070403,
    "state_reason" : "state_reason",
    "business_token" : "business_token",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "settlement_date" : "2000-01-23T04:56:07.000+00:00",
    "individual_name" : "individual_name",
    "company_identification" : "company_identification",
    "type" : "CREDIT",
    "individual_identification_number" : "individual_identification_number",
    "standard_entry_class_code" : "standard_entry_class_code",
    "token" : "token",
    "direct_deposit_account_token" : "direct_deposit_account_token",
    "company_name" : "company_name",
    "state_reason_code" : "state_reason_code",
    "company_entry_description" : "company_entry_description",
    "state" : "PENDING",
    "user_token" : "user_token"
  }, {
    "company_discretionary_data" : "company_discretionary_data",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "amount" : 6.027456183070403,
    "state_reason" : "state_reason",
    "business_token" : "business_token",
    "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
    "settlement_date" : "2000-01-23T04:56:07.000+00:00",
    "individual_name" : "individual_name",
    "company_identification" : "company_identification",
    "type" : "CREDIT",
    "individual_identification_number" : "individual_identification_number",
    "standard_entry_class_code" : "standard_entry_class_code",
    "token" : "token",
    "direct_deposit_account_token" : "direct_deposit_account_token",
    "company_name" : "company_name",
    "state_reason_code" : "state_reason_code",
    "company_entry_description" : "company_entry_description",
    "state" : "PENDING",
    "user_token" : "user_token"
  } ],
  "start_index" : 5,
  "count" : 0,
  "end_index" : 1
}}]
     - parameter count: (query) The number of direct deposit records to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Start index (optional, default to 0)
     - parameter reversedAfterGracePeriod: (query) Reversed after grace period (optional)
     - parameter userToken: (query) User token (optional)
     - parameter businessToken: (query) Business token (optional)
     - parameter directDepositState: (query) Comma-delimited list of direct deposit states to display e.g. PENDING | REVERSED | APPLIED | REJECTED  (optional)
     - parameter startSettlementDate: (query) Start Settlement Date (optional)
     - parameter endSettlementDate: (query) End Settlement Date (optional)
     - parameter sortBy: (query) Sort order (optional, default to -lastModifiedTime)

     - returns: RequestBuilder<DirectDepositListResponse> 
     */
    open class func getDirectdepositsWithRequestBuilder(count: Int? = nil, startIndex: Int? = nil, reversedAfterGracePeriod: Bool? = nil, userToken: String? = nil, businessToken: String? = nil, directDepositState: DirectDepositState_getDirectdeposits? = nil, startSettlementDate: String? = nil, endSettlementDate: String? = nil, sortBy: String? = nil) -> RequestBuilder<DirectDepositListResponse> {
        let path = "/directdeposits"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "reversed_after_grace_period": reversedAfterGracePeriod, 
                        "user_token": userToken, 
                        "business_token": businessToken, 
                        "direct_deposit_state": directDepositState?.rawValue, 
                        "start_settlement_date": startSettlementDate, 
                        "end_settlement_date": endSettlementDate, 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<DirectDepositListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Returns an account and routing number which can be used for direct deposit

     - parameter userOrBusinessToken: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDirectdepositsAccountsUserorbusinesstoken(userOrBusinessToken: String, completion: @escaping ((_ data: DepositAccount?,_ error: Error?) -> Void)) {
        getDirectdepositsAccountsUserorbusinesstokenWithRequestBuilder(userOrBusinessToken: userOrBusinessToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns an account and routing number which can be used for direct deposit
     - GET /directdeposits/accounts/{user_or_business_token}
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "account_number" : "account_number",
  "business_token" : "business_token",
  "allow_immediate_credit" : false,
  "user_token" : "user_token",
  "routing_number" : "routing_number",
  "token" : "token"
}}]
     - parameter userOrBusinessToken: (path)  

     - returns: RequestBuilder<DepositAccount> 
     */
    open class func getDirectdepositsAccountsUserorbusinesstokenWithRequestBuilder(userOrBusinessToken: String) -> RequestBuilder<DepositAccount> {
        var path = "/directdeposits/accounts/{user_or_business_token}"
        let userOrBusinessTokenPreEscape = "\(userOrBusinessToken)"
        let userOrBusinessTokenPostEscape = userOrBusinessTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{user_or_business_token}", with: userOrBusinessTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DepositAccount>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Returns a direct deposit entry

     - parameter token: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDirectdepositsToken(token: String, completion: @escaping ((_ data: DepositDepositResponse?,_ error: Error?) -> Void)) {
        getDirectdepositsTokenWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a direct deposit entry
     - GET /directdeposits/{token}
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "company_discretionary_data" : "company_discretionary_data",
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "amount" : 6.027456183070403,
  "state_reason" : "state_reason",
  "business_token" : "business_token",
  "last_modified_time" : "2000-01-23T04:56:07.000+00:00",
  "settlement_date" : "2000-01-23T04:56:07.000+00:00",
  "individual_name" : "individual_name",
  "company_identification" : "company_identification",
  "type" : "CREDIT",
  "individual_identification_number" : "individual_identification_number",
  "standard_entry_class_code" : "standard_entry_class_code",
  "token" : "token",
  "direct_deposit_account_token" : "direct_deposit_account_token",
  "company_name" : "company_name",
  "state_reason_code" : "state_reason_code",
  "company_entry_description" : "company_entry_description",
  "state" : "PENDING",
  "user_token" : "user_token"
}}]
     - parameter token: (path)  

     - returns: RequestBuilder<DepositDepositResponse> 
     */
    open class func getDirectdepositsTokenWithRequestBuilder(token: String) -> RequestBuilder<DepositDepositResponse> {
        var path = "/directdeposits/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DepositDepositResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Returns a list of direct deposit transitions

     - parameter count: (query) Number of direct deposit transitions to retrieve (optional, default to 5)
     - parameter userToken: (query) User token (optional)
     - parameter businessToken: (query) Business token (optional)
     - parameter directDepositToken: (query) Direct deposit token (optional)
     - parameter startIndex: (query) Start index (optional, default to 0)
     - parameter sortBy: (query) Sort order (optional, default to -createdTime)
     - parameter states: (query) Comma-delimited list of direct deposit states to display e.g. PENDING | REVERSED | APPLIED | REJECTED  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDirectdepositsTransitions(count: Int? = nil, userToken: String? = nil, businessToken: String? = nil, directDepositToken: String? = nil, startIndex: Int? = nil, sortBy: String? = nil, states: String? = nil, completion: @escaping ((_ data: DirectDepositTransitionListResponse?,_ error: Error?) -> Void)) {
        getDirectdepositsTransitionsWithRequestBuilder(count: count, userToken: userToken, businessToken: businessToken, directDepositToken: directDepositToken, startIndex: startIndex, sortBy: sortBy, states: states).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a list of direct deposit transitions
     - GET /directdeposits/transitions
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "direct_deposit_token" : "direct_deposit_token",
    "reason_code" : "reason_code",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "direct_deposit_account_token" : "direct_deposit_account_token",
    "reason" : "reason",
    "channel" : "API",
    "state" : "PENDING",
    "type" : "type",
    "transaction_token" : "transaction_token",
    "token" : "token"
  }, {
    "direct_deposit_token" : "direct_deposit_token",
    "reason_code" : "reason_code",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "direct_deposit_account_token" : "direct_deposit_account_token",
    "reason" : "reason",
    "channel" : "API",
    "state" : "PENDING",
    "type" : "type",
    "transaction_token" : "transaction_token",
    "token" : "token"
  } ],
  "start_index" : 1,
  "count" : 0,
  "end_index" : 6
}}]
     - parameter count: (query) Number of direct deposit transitions to retrieve (optional, default to 5)
     - parameter userToken: (query) User token (optional)
     - parameter businessToken: (query) Business token (optional)
     - parameter directDepositToken: (query) Direct deposit token (optional)
     - parameter startIndex: (query) Start index (optional, default to 0)
     - parameter sortBy: (query) Sort order (optional, default to -createdTime)
     - parameter states: (query) Comma-delimited list of direct deposit states to display e.g. PENDING | REVERSED | APPLIED | REJECTED  (optional)

     - returns: RequestBuilder<DirectDepositTransitionListResponse> 
     */
    open class func getDirectdepositsTransitionsWithRequestBuilder(count: Int? = nil, userToken: String? = nil, businessToken: String? = nil, directDepositToken: String? = nil, startIndex: Int? = nil, sortBy: String? = nil, states: String? = nil) -> RequestBuilder<DirectDepositTransitionListResponse> {
        let path = "/directdeposits/transitions"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "user_token": userToken, 
                        "business_token": businessToken, 
                        "direct_deposit_token": directDepositToken, 
                        "start_index": startIndex?.encodeToJSON(), 
                        "sort_by": sortBy, 
                        "states": states
        ])


        let requestBuilder: RequestBuilder<DirectDepositTransitionListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Returns a direct deposit transition

     - parameter token: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDirectdepositsTransitionsToken(token: String, completion: @escaping ((_ data: DirectDepositTransitionResponse?,_ error: Error?) -> Void)) {
        getDirectdepositsTransitionsTokenWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a direct deposit transition
     - GET /directdeposits/transitions/{token}
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "direct_deposit_token" : "direct_deposit_token",
  "reason_code" : "reason_code",
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "direct_deposit_account_token" : "direct_deposit_account_token",
  "reason" : "reason",
  "channel" : "API",
  "state" : "PENDING",
  "type" : "type",
  "transaction_token" : "transaction_token",
  "token" : "token"
}}]
     - parameter token: (path)  

     - returns: RequestBuilder<DirectDepositTransitionResponse> 
     */
    open class func getDirectdepositsTransitionsTokenWithRequestBuilder(token: String) -> RequestBuilder<DirectDepositTransitionResponse> {
        var path = "/directdeposits/transitions/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DirectDepositTransitionResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Creates a direct deposit transition

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDirectdepositsTransitions(body: DirectDepositTransitionRequest? = nil, completion: @escaping ((_ data: DirectDepositTransitionResponse?,_ error: Error?) -> Void)) {
        postDirectdepositsTransitionsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates a direct deposit transition
     - POST /directdeposits/transitions
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "direct_deposit_token" : "direct_deposit_token",
  "reason_code" : "reason_code",
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "direct_deposit_account_token" : "direct_deposit_account_token",
  "reason" : "reason",
  "channel" : "API",
  "state" : "PENDING",
  "type" : "type",
  "transaction_token" : "transaction_token",
  "token" : "token"
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<DirectDepositTransitionResponse> 
     */
    open class func postDirectdepositsTransitionsWithRequestBuilder(body: DirectDepositTransitionRequest? = nil) -> RequestBuilder<DirectDepositTransitionResponse> {
        let path = "/directdeposits/transitions"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DirectDepositTransitionResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Updates a specific direct deposit account

     - parameter body: (body) Deposit account update request 
     - parameter userOrBusinessToken: (path) User or business token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putDirectdepositsAccountsUserorbusinesstoken(body: DepositAccountUpdateRequest, userOrBusinessToken: String, completion: @escaping ((_ data: DepositAccount?,_ error: Error?) -> Void)) {
        putDirectdepositsAccountsUserorbusinesstokenWithRequestBuilder(body: body, userOrBusinessToken: userOrBusinessToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Updates a specific direct deposit account
     - PUT /directdeposits/accounts/{user_or_business_token}
     - 

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "account_number" : "account_number",
  "business_token" : "business_token",
  "allow_immediate_credit" : false,
  "user_token" : "user_token",
  "routing_number" : "routing_number",
  "token" : "token"
}}]
     - parameter body: (body) Deposit account update request 
     - parameter userOrBusinessToken: (path) User or business token 

     - returns: RequestBuilder<DepositAccount> 
     */
    open class func putDirectdepositsAccountsUserorbusinesstokenWithRequestBuilder(body: DepositAccountUpdateRequest, userOrBusinessToken: String) -> RequestBuilder<DepositAccount> {
        var path = "/directdeposits/accounts/{user_or_business_token}"
        let userOrBusinessTokenPreEscape = "\(userOrBusinessToken)"
        let userOrBusinessTokenPostEscape = userOrBusinessTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{user_or_business_token}", with: userOrBusinessTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DepositAccount>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}