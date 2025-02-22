structure(list(url = "https://env-167618.customer.cloud.microstrategy.com/MicroStrategyLibrary/api/cubes/F29FCC3211EA056400000080EF55215F/instances?offset=0&limit=2", 
    status_code = 200L, headers = structure(list(date = "Wed, 13 Nov 2019 15:15:27 GMT", 
        `content-type` = "application/json", `content-length` = "500", 
        `cache-control` = "no-store", `x-content-type-options` = "nosniff", 
        `access-control-allow-methods` = "GET, POST, DELETE, PUT, PATCH, HEAD, OPTIONS", 
        `x-xss-protection` = "1; mode=block", `access-control-allow-headers` = "Content-Type", 
        `content-encoding` = "gzip", server = "MicroStrategy"), class = c("insensitive", 
    "list")), all_headers = list(list(status = 200L, version = "HTTP/2", 
        headers = structure(list(date = "Wed, 13 Nov 2019 15:15:27 GMT", 
            `content-type` = "application/json", `content-length` = "500", 
            `cache-control` = "no-store", `x-content-type-options` = "nosniff", 
            `access-control-allow-methods` = "GET, POST, DELETE, PUT, PATCH, HEAD, OPTIONS", 
            `x-xss-protection` = "1; mode=block", `access-control-allow-headers` = "Content-Type", 
            `content-encoding` = "gzip", server = "MicroStrategy"), class = c("insensitive", 
        "list")))), cookies = structure(list(domain = c("#HttpOnly_env-167618.customer.cloud.microstrategy.com", 
    "env-167618.customer.cloud.microstrategy.com"), flag = c(FALSE, 
    FALSE), path = c("/MicroStrategyLibrary", "/MicroStrategyLibrary"
    ), secure = c(TRUE, FALSE), expiration = structure(c(Inf, 
    Inf), class = c("POSIXct", "POSIXt")), name = c("JSESSIONID", 
    "iSession"), value = c("REDACTED", "REDACTED")), row.names = c(NA, 
    -2L), class = "data.frame"), content = charToRaw("{\"id\":\"F29FCC3211EA056400000080EF55215F\",\"name\":\"API_RESPONSE_DATA\",\"status\":1,\"instanceId\":\"6C5D9EAA11EA0628C0D60080EF554318\",\"result\":{\"definition\":{\"metrics\":[{\"name\":\"Pclass\",\"id\":\"EBF9617211EA05641CA90080EFE54362\",\"type\":\"Metric\",\"min\":5.0,\"max\":5.0,\"dataType\":\"Double\",\"numberFormatting\":{\"category\":9,\"formatString\":\"General\"}}],\"attributes\":[{\"name\":\"Sex\",\"id\":\"EBF96A7811EA05641CA90080EFE54362\",\"type\":\"Attribute\",\"forms\":[{\"id\":\"45C11FA478E745FEA08D781CEA190FE5\",\"name\":\"ID\",\"dataType\":\"Char\",\"baseFormCategory\":\"ID\",\"baseFormType\":\"Text\"}]}],\"thresholds\":[],\"sorting\":[]},\"data\":{\"paging\":{\"total\":1,\"current\":1,\"offset\":0,\"limit\":2,\"prev\":null,\"next\":null},\"root\":{\"isPartial\":false,\"children\":[{\"depth\":0,\"element\":{\"attributeIndex\":0,\"formValues\":{\"ID\":\"female\"},\"name\":\"female\",\"id\":\"hfemale;EBF96A7811EA05641CA90080EFE54362\"},\"metrics\":{\"Pclass\":{\"rv\":5.0,\"fv\":\"5\",\"mi\":0}}}]}}}}"), 
    date = structure(1573658127, class = c("POSIXct", "POSIXt"
    ), tzone = "GMT"), times = c(redirect = 0, namelookup = 9.3e-05, 
    connect = 9.5e-05, pretransfer = 0.000166, starttransfer = 0.000171, 
    total = 0.29174)), class = "response")
