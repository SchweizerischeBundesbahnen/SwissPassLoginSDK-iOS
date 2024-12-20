# SwissPassLogin SDK v4 for iOS and iPadOS

Copyright (C) Schweizerische Bundesbahnen SBB, 2024

## Overview

SwissPassLogin SDK is a client library for mobile apps that facilitates the communication with the SwissPass OAuth 2.0 and OpenID Connect provider. 

### SwissPass Login

SwissPass Login for mobile apps is based on OAuth 2.0, which is the industry-standard protocol for authorization on mobile devices. 

As such, the SwissPassClient SDK implements the security requirements and other recommendations for mobile applications as described in RFC 8252 "OAuth 2.0 for Native Apps". This includes PKCE according to RFC 7636 "Proof Key for Code Exchange" which is an extension to the Authorization Code flow to prevent several attacks and to be able to securely perform the OAuth exchange from public clients.

In addition, please note the following:

* If your app wants to access a protected resource using an access token issued by the SwissPass Login server it must follow the principles described in RFC 6750 "The OAuth 2.0 Authorization Framework: Bearer Token Usage". Particularly, the app must correctly implement the error handling.
* Access tokens are by default JSON Web Tokens according to RFC 7519 "JSON Web Token (JWT)". As a consequence, they can either be validated by implementing the checks described in RFC 7519 or by using the SwissPass Login token introspection endpoint, which is based on RFC 7662 "OAuth 2.0 Token Introspection".
* The SDK uses OpenID Connect (OIDC) Core 1.0 which is an identity layer on top of the OAuth 2.0 protocol.
* The SDK uses OpenID Connect (OIDC) Discovery 1.0 to retrieve the OpenID Provider configuration from the well-known location, including its OAuth 2.0 endpoint locations.

## How to use the SDK

The SwissPassLogin SDK is written in Swift 5 and compiled using the option *Build Libraries for Distribution* with deployment target iOS 12. It is distributed as a binary XCFramework. 

In addition:

* Make sure to integrate the *Swift Standard Libraries* in your build. I.e., the option *Embedded Content Contains Swift Code* (EMBEDDED_CONTENT_CONTAINS_SWIFT) must be set to YES.
* In order to use FaceID in `requestAuthentication()` be sure to specify the key `NSFaceIDUsageDescription` in your info.plist - for more details see https://developer.apple.com/documentation/localauthentication/lacontext

### Swift Package Manager

The SDK can be integrated into your build process as an XCFramework using the Swift Package Manager. To do so, just add the package by using the following url

```
https://github.com/SchweizerischeBundesbahnen/SwissPassLoginSDK-iOS.git
```

## License

This project is licensed under [LICENSE.md](./LICENSE.md).

## Additional information

Further documentation is available on the NOVA UserGroup website.

### Contact

General inquiries, suggestions, bug reports and feedback can be made via the NOVA UserGroup website or the SwissPass Alliance.
