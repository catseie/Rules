[general]
excluded_routes=192.168.0.0/16, 172.16.0.0/12, 100.64.0.0/10, 10.0.0.0/8
geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://github.com/KOP-XIAO/QuantumultX/raw/master/Scripts/IP_API.js
network_check_url=http://www.aliyun.com
server_check_url=http://cp.cloudflare.com/generate_204

[dns]
server = 119.29.29.29
server = 119.28.28.28
server = 1.2.4.8
server = 182.254.116.116

server=/taobao.com/223.6.6.6
server=/*.taobao.com/223.6.6.6
server=/tmall.com/223.6.6.6
server=/*.tmall.com/223.6.6.6
server=/jd.com/119.29.29.29
server=/*.jd.com/119.28.28.28
server=/*.qq.com/119.28.28.28
server=/*.tencent.com/119.28.28.28
server=/*.alicdn.com/223.5.5.5
server=/aliyun.com/223.5.5.5
server=/*.aliyun.com/223.5.5.5
server=/weixin.com/119.28.28.28
server=/*.weixin.com/119.28.28.28
server=/bilibili.com/119.29.29.29
server=/*.bilibili.com/119.29.29.29
server=/hdslb.com/119.29.29.29
server=/163.com/119.29.29.29
server=/*.163.com/119.29.29.29
server=/126.com/119.29.29.29
server=/*.126.com/119.29.29.29
server=/*.126.net/119.29.29.29
server=/*.127.net/119.29.29.29
server=/*.netease.com/119.29.29.29
server=/mi.com/119.29.29.29
server=/*.mi.com/119.29.29.29
server=/xiaomi.com/119.29.29.29
server=/*.xiaomi.com/119.29.29.29
server=/routerlogin.net/system
server=/_hotspot_.m2m/system
server=/router.asus.com/system
server=/hotspot.cslwifi.com/system
server=/amplifi.lan/system

[policy]
static=♻️ 自动选择, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Auto.png
static=🔰 节点选择, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png
static=🌍 国外媒体, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/GlobalMedia.png
static=🌏 国内媒体, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/DomesticMedia.png
static=Ⓜ️ 微软服务, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Microsoft.png
static=📲 电报信息, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram.png
static=🍎 苹果服务, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple.png
static=🎯 全球直连, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Direct.png
static=🛑 全球拦截, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Advertising.png
static=🐟 漏网之鱼, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Final.png
static=Proxies, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png
static=Apple, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple.png
static=Telegram, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram.png
static=Youtube, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/YouTube.png
static=Netflix, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Netflix.png
static=Netease, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Netease_Music.png
static=HKMTMedia, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/HKMTMedia.png
static=GlobalMedia, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/GlobalMedia.png
static=Final, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Final.png
static=HK, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Hong_Kong.png
static=SG, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Singapore.png
static=TW, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Taiwan.png
static=JP, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Japan.png
static=US, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/US.png

[server_remote]

[filter_remote]

[rewrite_remote]
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Rewrite/Rewrite.list, enabled=true

[server_local]

[filter_local]
ip-cidr, 10.0.0.0/8, direct
ip-cidr, 127.0.0.0/8, direct
ip-cidr, 172.16.0.0/12, direct
ip-cidr, 192.168.0.0/16, direct
ip-cidr, 224.0.0.0/24, direct
geoip, cn, direct
final, proxy

[rewrite_local]
# Remove weibo ads
^https?://(sdk|wb)app\.uve\.weibo\.com(/interface/sdk/sdkad.php|/wbapplua/wbpullad.lua) url script-response-body wb_launch.js
^https?://m?api\.weibo\.c(n|om)/2/(statuses/(unread|extend|positives/get|(friends|video)(/|_)(mix)?timeline)|stories/(video_stream|home_list)|(groups|fangle)/timeline|profile/statuses|comments/build_comments|photo/recommend_list|service/picfeed|searchall|cardlist|page|!/photos/pic_recommend_status|video/tiny_stream_video_list) url script-response-body wb_ad.js

# Display netflix ratings（IMDb、douaban）
^https?://ios\.prod\.ftl\.netflix\.com/iosui/user/.+path=%5B%22videos%22%2C%\d+%22%2C%22summary%22%5D url script-request-header nf_rating.js
^https?://ios\.prod\.ftl\.netflix\.com/iosui/user/.+path=%5B%22videos%22%2C%\d+%22%2C%22summary%22%5D url script-response-body nf_rating.js

# Display jd historical price
^https?://api\.m\.jd\.com/client\.action\?functionId=(wareBusiness|serverConfig) url script-response-body jd_price.js

# Display taobao historical price
^http://.+/amdc/mobileDispatch url script-request-body tb_price.js
^https?://trade-acs\.m\.taobao\.com/gw/mtop\.taobao\.detail\.getdetail url script-response-body tb_price.js

[mitm]
hostname=*.music.163.com, music.163.com, *.music.126.net, music.126.net, api.weibo.cn, mapi.weibo.com, *.uve.weibo.com, ios.prod.ftl.netflix.com, api.m.jd.com, trade-acs.m.taobao.com
p12=MIIEWgIBAzCCBCAGCSqGSIb3DQEHAaCCBBEEggQNMIIECTCCAv8GCSqGSIb3DQEHBqCCAvAwggLsAgEAMIIC5QYJKoZIhvcNAQcBMBwGCiqGSIb3DQEMAQYwDgQIEbxT6Tq17dsCAggAgIICuCzGa3ovYwnv6OIzJLkSKyAFypSmJ8KTBPyai2s1heOTIf3PoC0aSml1Q0blJ2R9tAEJMS3SoM4PjNK6q6nGycAgx1dIUFEQG7DEQebVP0XHHK6uNyRPqgXPrhCXjqZSOLhpcsg4BfLRjf0S0fquZySAi7kn5IXUo1fUey2r/36UkT8imBHPsUSsllryK5dXBQAwJtPYGl7nV50F/LA58ckv5pT+gDS4vVvUAytPfoqTDPCUEMzrZkXu7ZP/6YP+DeUgLXFvEubSkmrEeztJoC2GozClPNtRHfbMzA/jTH1/lOZ1zDdvrNheDLgP8CBv/mawNy4dxrJozfOcdEiWdLAMp8PmcXvaY9sNVlYYP+ztIMA/oaIHEycsOvx1PxMU2i8s/SIZBDszdHgRqKC6fVJxcrv0qtYdUlmfGKWt85LeB7JPXlmfs6ovGrZuc9y2WNnq2cbPmZuKbdxB5j/oM8jA6fLO9Z1MZDEXo42CgU7ZONjK8/bLG5J3wlI4DnC6HYwk3hSUWRBFpjNkRlUhZZWwMsfjBmYG9/hvDF7aGCeBDwm/euWLz9lGuUqRs5F11YhRL2dhOHC2mB4fhsSGbsgOps15fsuUydheYbU12hkGfYQSNsVi0d1GiGIsdiEtrYhXAWnY6DfGPERbhYvwlPSUAvdgWltC/BYgVMM//y3PwCVhcjEfYOK6k3ZNLuIc4Nebk2FPI7u0eXCk0Pi/RiSlOiBO79B2jpEdpyQbEDYAvetEsmaU6M8SZMMHnupNET/Sy+LlpFhRDSRcQndHpBkw166rM+6H3IHewJyYZBNvesltVBuSGtmJx57QI63CgCTUiu/UmWlHKmGuK5pHbMJlkREWJnVYqT3WIoB7MCX19bhLWxfbcLO+pipr8jrrjUF0skOLwg7HxnqHDk6oLyN4eLgn3Kr70zCCAQIGCSqGSIb3DQEHAaCB9ASB8TCB7jCB6wYLKoZIhvcNAQwKAQKggbQwgbEwHAYKKoZIhvcNAQwBAzAOBAgCgEDjD1kMngICCAAEgZCwn6xW0rtwHctlMsJw20caSgWcFTLcNBTgISSri2XLMeJfvygcgFbO7/zT64stk1tVZRktjAX/fELsFp4Xw/UspdVG6CgsRE7QcY+CT8wn6dvusvU2mv3KpI7NwrXmUMsKNbW5N8Qh37WYTCg5mvA7jFAazC+RnKgoMvMVnQbuT1CMJ3in7lPIsPTW3ub0188xJTAjBgkqhkiG9w0BCRUxFgQU8ZGlcfqIeitY4nkiNU7TX5gEi6MwMTAhMAkGBSsOAwIaBQAEFCBiCE2z1g+P8yPQTFy79/Pahq/lBAixZy/UGOLmVQICCAA=
passphrase=rixCloudPKI
