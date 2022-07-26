# ClearentReportingApi

Clearent API written by the members of Dental Intelligence.


## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/dental-intel/clearent-api-reporting.git"
    }
  ],
  "require": {
    "dental-intel/clearent-api-reporting": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/ClearentReportingApi/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## API Endpoints

All URIs are relative to *https://reporting.clearent.net*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ReportingApi* | [**merchantClosedBatches**](docs/Api/ReportingApi.md#merchantclosedbatches) | **GET** /data/api/v1/standard/merchantClosedBatches | A reporting endpoint.

## Models

- [MerchantClosedBatches200Response](docs/Model/MerchantClosedBatches200Response.md)
- [MerchantClosedBatches200ResponseMerchantClosedBatchesInner](docs/Model/MerchantClosedBatches200ResponseMerchantClosedBatchesInner.md)
- [MerchantClosedBatches200ResponseMetadata](docs/Model/MerchantClosedBatches200ResponseMetadata.md)
- [MerchantClosedBatches200ResponsePage](docs/Model/MerchantClosedBatches200ResponsePage.md)

## Authorization

### AccessKeyAuth

- **Type**: API key
- **API key parameter name**: AccessKey
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
