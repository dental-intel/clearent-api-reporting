# ClearentReportingApi\ReportingApi

All URIs are relative to https://reporting-sb.clearent.net.

Method | HTTP request | Description
------------- | ------------- | -------------
[**merchantClosedBatches()**](ReportingApi.md#merchantClosedBatches) | **GET** /data/api/v1/standard/merchantClosedBatches | 


## `merchantClosedBatches()`

```php
merchantClosedBatches($batch_status, $expected_funded_date, $merchant_number, $page_number, $page_size, $sort_by): \ClearentReportingApi\Model\MerchantClosedBatchesResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: AccessKeyAuth
$config = ClearentReportingApi\Configuration::getDefaultConfiguration()->setApiKey('AccessKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = ClearentReportingApi\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AccessKey', 'Bearer');


$apiInstance = new ClearentReportingApi\Api\ReportingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$batch_status = 'batch_status_example'; // string
$expected_funded_date = 'expected_funded_date_example'; // string
$merchant_number = 6588000000999998; // string | Unique merchant number - MID Number.
$page_number = 1; // string | Allows a specific page to be returned from a result list.
$page_size = 10; // string | Allows setting of the number of results to be returned per page.
$sort_by = desc(MerchantNumber); // string | Allows sorting of the paginated result set, multiple order by allowed.

try {
    $result = $apiInstance->merchantClosedBatches($batch_status, $expected_funded_date, $merchant_number, $page_number, $page_size, $sort_by);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReportingApi->merchantClosedBatches: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_status** | **string**|  | [optional]
 **expected_funded_date** | **string**|  | [optional]
 **merchant_number** | **string**| Unique merchant number - MID Number. | [optional]
 **page_number** | **string**| Allows a specific page to be returned from a result list. | [optional]
 **page_size** | **string**| Allows setting of the number of results to be returned per page. | [optional]
 **sort_by** | **string**| Allows sorting of the paginated result set, multiple order by allowed. | [optional]

### Return type

[**\ClearentReportingApi\Model\MerchantClosedBatchesResponse**](../Model/MerchantClosedBatchesResponse.md)

### Authorization

[AccessKeyAuth](../../README.md#AccessKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
