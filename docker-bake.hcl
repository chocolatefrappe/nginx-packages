# Generated by configure script
variable "REGISTRY_IMAGE" { default = "chocolatefrappe/nginx-modules" }
variable "NGINX_VERSION" { default = "stable" }

target "nginx-modules-alpine" {
    name = "nginx-module-${module}"
    target = "nginx-module-${module}"
    dockerfile = "alpine/Dockerfile"
    matrix = {
        module = ["auth-spnego","brotli","echo","encrypted-session","fips-check","geoip","geoip2","headers-more","image-filter","lua","ndk","njs","opentracing","otel","passenger","perl","rtmp","set-misc","subs-filter","vts","xslt","zip"]
    }
    args = {
        NGINX_VERSION = "${NGINX_VERSION}",
        ENABLED_MODULES = "auth-spnego brotli echo encrypted-session fips-check geoip geoip2 headers-more image-filter lua ndk njs opentracing otel passenger perl rtmp set-misc subs-filter vts xslt zip",
    }
    tags = [
        "${REGISTRY_IMAGE}:${NGINX_VERSION}-alpine-${module}"
    ]
    platforms = [
        "linux/amd64",
        "linux/arm64",
    ]
}

target "nginx-modules-debian" {
    name = "nginx-module-${module}"
    target = "nginx-module-${module}"
    dockerfile = "debian/Dockerfile"
    matrix = {
        module = ["auth-spnego","brotli","echo","encrypted-session","fips-check","geoip","geoip2","headers-more","image-filter","lua","ndk","njs","opentracing","otel","passenger","perl","rtmp","set-misc","subs-filter","vts","xslt","zip"]
    }
    args = {
        NGINX_VERSION = "${NGINX_VERSION}",
        ENABLED_MODULES = "auth-spnego brotli echo encrypted-session fips-check geoip geoip2 headers-more image-filter lua ndk njs opentracing otel passenger perl rtmp set-misc subs-filter vts xslt zip",
    }
    tags = [
        "${REGISTRY_IMAGE}:${NGINX_VERSION}-${module}"
    ]
    platforms = [
        "linux/amd64",
        "linux/arm64",
    ]
}

