//
// AccountHolderGroupsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class AccountHolderGroupsAPI {
    /**
     List account holder groups

     - parameter count: (query) Number of resources to retrieve. (optional, default to 10)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountholdergroups(count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, completion: @escaping ((_ data: AccountHolderGroupListResponse?,_ error: Error?) -> Void)) {
        getAccountholdergroupsWithRequestBuilder(count: count, startIndex: startIndex, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List account holder groups
     - GET /accountholdergroups

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "name" : "name",
    "config" : {
      "real_time_fee_group_token" : "real_time_fee_group_token",
      "is_reloadable" : false,
      "kyc_required" : "ALWAYS",
      "pre_kyc_controls" : {
        "enable_non_program_loads" : false,
        "cash_access_enabled" : false,
        "international_enabled" : false,
        "balance_max" : 0.6127456183070403,
        "is_reloadable_pre_kyc" : false
      }
    },
    "token" : "token"
  }, {
    "name" : "name",
    "config" : {
      "real_time_fee_group_token" : "real_time_fee_group_token",
      "is_reloadable" : false,
      "kyc_required" : "ALWAYS",
      "pre_kyc_controls" : {
        "enable_non_program_loads" : false,
        "cash_access_enabled" : false,
        "international_enabled" : false,
        "balance_max" : 0.6127456183070403,
        "is_reloadable_pre_kyc" : false
      }
    },
    "token" : "token"
  } ],
  "start_index" : 5,
  "count" : 0,
  "end_index" : 1
}}]
     - parameter count: (query) Number of resources to retrieve. (optional, default to 10)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -lastModifiedTime)

     - returns: RequestBuilder<AccountHolderGroupListResponse> 
     */
    open class func getAccountholdergroupsWithRequestBuilder(count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil) -> RequestBuilder<AccountHolderGroupListResponse> {
        let path = "/accountholdergroups"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<AccountHolderGroupListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Retrieve account holder group

     - parameter token: (path) Unique identifier of the account holder group. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountholdergroupsToken(token: String, completion: @escaping ((_ data: AccountHolderGroupResponse?,_ error: Error?) -> Void)) {
        getAccountholdergroupsTokenWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve account holder group
     - GET /accountholdergroups/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "config" : {
    "real_time_fee_group_token" : "real_time_fee_group_token",
    "is_reloadable" : false,
    "kyc_required" : "ALWAYS",
    "pre_kyc_controls" : {
      "enable_non_program_loads" : false,
      "cash_access_enabled" : false,
      "international_enabled" : false,
      "balance_max" : 0.6127456183070403,
      "is_reloadable_pre_kyc" : false
    }
  },
  "token" : "token"
}}]
     - parameter token: (path) Unique identifier of the account holder group. 

     - returns: RequestBuilder<AccountHolderGroupResponse> 
     */
    open class func getAccountholdergroupsTokenWithRequestBuilder(token: String) -> RequestBuilder<AccountHolderGroupResponse> {
        var path = "/accountholdergroups/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AccountHolderGroupResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Create account holder group

     - parameter body: (body) Account holder group object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAccountholdergroups(body: AccountHolderGroupRequest, completion: @escaping ((_ data: AccountHolderGroupResponse?,_ error: Error?) -> Void)) {
        postAccountholdergroupsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create account holder group
     - POST /accountholdergroups

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "config" : {
    "real_time_fee_group_token" : "real_time_fee_group_token",
    "is_reloadable" : false,
    "kyc_required" : "ALWAYS",
    "pre_kyc_controls" : {
      "enable_non_program_loads" : false,
      "cash_access_enabled" : false,
      "international_enabled" : false,
      "balance_max" : 0.6127456183070403,
      "is_reloadable_pre_kyc" : false
    }
  },
  "token" : "token"
}}]
     - parameter body: (body) Account holder group object 

     - returns: RequestBuilder<AccountHolderGroupResponse> 
     */
    open class func postAccountholdergroupsWithRequestBuilder(body: AccountHolderGroupRequest) -> RequestBuilder<AccountHolderGroupResponse> {
        let path = "/accountholdergroups"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AccountHolderGroupResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Update account holder group

     - parameter body: (body) Account holder group update object 
     - parameter token: (path) Unique identifier of the account holder group. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putAccountholdergroupsToken(body: AccountHolderGroupUpdateRequest, token: String, completion: @escaping ((_ data: AccountHolderGroupResponse?,_ error: Error?) -> Void)) {
        putAccountholdergroupsTokenWithRequestBuilder(body: body, token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update account holder group
     - PUT /accountholdergroups/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "config" : {
    "real_time_fee_group_token" : "real_time_fee_group_token",
    "is_reloadable" : false,
    "kyc_required" : "ALWAYS",
    "pre_kyc_controls" : {
      "enable_non_program_loads" : false,
      "cash_access_enabled" : false,
      "international_enabled" : false,
      "balance_max" : 0.6127456183070403,
      "is_reloadable_pre_kyc" : false
    }
  },
  "token" : "token"
}}]
     - parameter body: (body) Account holder group update object 
     - parameter token: (path) Unique identifier of the account holder group. 

     - returns: RequestBuilder<AccountHolderGroupResponse> 
     */
    open class func putAccountholdergroupsTokenWithRequestBuilder(body: AccountHolderGroupUpdateRequest, token: String) -> RequestBuilder<AccountHolderGroupResponse> {
        var path = "/accountholdergroups/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AccountHolderGroupResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}