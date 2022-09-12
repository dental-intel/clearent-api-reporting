# ClearentReportingApi\ReportingApi

All URIs are relative to https://reporting.clearent.net, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**merchantClosedBatches()**](ReportingApi.md#merchantClosedBatches) | **GET** /data/api/v1/standard/merchantClosedBatches | A reporting endpoint. |


## `merchantClosedBatches()`

```php
merchantClosedBatches($expected_funded_date, $merchant_number, $page_number, $page_size, $sort_by): \ClearentReportingApi\Model\MerchantClosedBatches200Response
```

A reporting endpoint.

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
$expected_funded_date = 2022-09-09; // string
$merchant_number = 6588000000999998; // string
$page_number = 1; // string
$page_size = 50; // string
$sort_by = desc(MerchantNumber); // string

try {
    $result = $apiInstance->merchantClosedBatches($expected_funded_date, $merchant_number, $page_number, $page_size, $sort_by);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReportingApi->merchantClosedBatches: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **expected_funded_date** | **string**|  | [optional] |
| **merchant_number** | **string**|  | [optional] |
| **page_number** | **string**|  | [optional] |
| **page_size** | **string**|  | [optional] |
| **sort_by** | **string**|  | [optional] |

### Return type

[**\ClearentReportingApi\Model\MerchantClosedBatches200Response**](../Model/MerchantClosedBatches200Response.md)

### Authorization

[AccessKeyAuth](../../README.md#AccessKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
