# ClearentReportingApi\ReportingApi

All URIs are relative to https://reporting-sb.clearent.net.

Method | HTTP request | Description
------------- | ------------- | -------------
[**merchantClosedBatches()**](ReportingApi.md#merchantClosedBatches) | **GET** /data/api/v1/standard/merchantClosedBatches | 


## `merchantClosedBatches()`

```php
merchantClosedBatches($batch_status, $expected_funded_date, $merchant_number)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new ClearentReportingApi\Api\ReportingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$batch_status = 'batch_status_example'; // string
$expected_funded_date = 'expected_funded_date_example'; // string
$merchant_number = 'merchant_number_example'; // string

try {
    $apiInstance->merchantClosedBatches($batch_status, $expected_funded_date, $merchant_number);
} catch (Exception $e) {
    echo 'Exception when calling ReportingApi->merchantClosedBatches: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_status** | **string**|  | [optional]
 **expected_funded_date** | **string**|  | [optional]
 **merchant_number** | **string**|  | [optional]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
