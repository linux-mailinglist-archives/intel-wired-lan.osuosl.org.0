Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F1D50D4CD
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Apr 2022 21:21:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60F2C408F8;
	Sun, 24 Apr 2022 19:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 391X0Oi1bgh5; Sun, 24 Apr 2022 19:21:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B5BA408DB;
	Sun, 24 Apr 2022 19:21:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC1611BF348
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 19:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4EE040156
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 19:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2DhbQczv3aXR for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 19:20:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B63134002B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 19:20:56 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id p189so8106774wmp.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=/+H/N/gmFAaOe4y0s+SRcJl0SyQ/fuybtesfMfHNNuQ=;
 b=L9/LRThN/qmaxvltFgT3Vsp3alFuHmSCHX8niKbw5nVt0f+GrPKdM+saUo8/tdJ5DH
 m0AMCUG97D2qOpTUIUhPAB1LV2EacwAKSkyzmxv7BAnp+FzQ0W1Dfp7aQ6g2Ix+jAcBX
 35TfCkIhfMG+4YHd7moTBuvU6uDfQXEaYt4XDpjRLD5/WLBjvosQIWGdQADpLpI+nMsN
 0Mxumf9sFHFtGBjiLKgIKfaXSlO28LuwSn0ICnECFbMeLP+6QU8d+Lj3jo5i/imkxMNP
 wZTeV39Gk0h/+2Jmf/KEcMr76MLwIWnpqzdk9D175he7a8eCIkDfw/iAcNcHdeLa3fz7
 18ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=/+H/N/gmFAaOe4y0s+SRcJl0SyQ/fuybtesfMfHNNuQ=;
 b=ANKRAsDl876bg6UKU3Psp1FW0HxfOYIBPsVQVDgTTMi9lvueZDosOSGNSjzivdYeeB
 nr64SXKzCnvFWG5gXiEbNaXUYybl7JLAg0TP7x2zZBbgaiJtADdENxM2TOy1Rkd0gFck
 yfNTiHUFjWnJ34DUSB0SxAz2435byz/K740J7tnnsqPVG5lu0T0/v2EV0OAdrhRnyQZe
 /eqRnfuAgKBl/TxZCw/wcTEEXQg4y3N8fmlKVIZzuXLwg4XePH25o3L7Jk2v35iYAnyu
 Fnn7pAkJGpiEl45VI2E0eRR7VqXyfOjj5AprtLYUs8z3aq4C8uvrqE7MSQbV7hOEgbMe
 +5xw==
X-Gm-Message-State: AOAM5306Lg9iD14V0WMGoS8bikm52Gb1olCxco4V1++oVv4cD3QvTS4h
 cNetk3NvQKyoj11WEsgE3Sg=
X-Google-Smtp-Source: ABdhPJyJ0RyDxNnhvav9Kr/ikInuVtAqUw64NFwOimQaTTCJHXwbyerv07oScutZL2Cky6iqy/leEg==
X-Received: by 2002:a1c:7415:0:b0:38e:bbbf:52d9 with SMTP id
 p21-20020a1c7415000000b0038ebbbf52d9mr22683155wmc.104.1650828054882; 
 Sun, 24 Apr 2022 12:20:54 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 e4-20020a5d6d04000000b0020a8bbbb72bsm8511452wrq.97.2022.04.24.12.20.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 12:20:54 -0700 (PDT)
Message-ID: <f06389af-d665-03c1-6256-5c9bbf89a321@gmail.com>
Date: Sun, 24 Apr 2022 21:20:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>,
 Julia Lawall <julia.lawall@inria.fr>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
 <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
 <3b8c790d-9e90-d920-9580-8e736435f7f3@blackwall.org>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <3b8c790d-9e90-d920-9580-8e736435f7f3@blackwall.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net: vxlan:
 vxlan_core.c: Add extack support to vxlan_fdb_delete
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uINmi2aTigI8v2aTigI8v2aLZoNmi2aIg2aLZoTrZoNmjLCBOaWtvbGF5IEFsZWtzYW5kcm92
IHdyb3RlOgo+IE9uIDI0LzA0LzIwMjIgMjE6NTIsIEFsYWEgTW9oYW1lZCB3cm90ZToKPj4gT24g
2aLZpOKAjy/ZpOKAjy/Zotmg2aLZoiDZodmoOtmh2aUsIEp1bGlhIExhd2FsbCB3cm90ZToKPj4+
IE9uIFN1biwgMjQgQXByIDIwMjIsIEFsYWEgTW9oYW1lZCB3cm90ZToKPj4+Cj4+Pj4gQWRkIGV4
dGFjayB0byB2eGxhbl9mZGJfZGVsZXRlIGFuZCB2eGxhbl9mZGJfcGFyc2UKPj4+IEl0IGNvdWxk
IGJlIGhlbHBmdWwgdG8gc2F5IG1vcmUgYWJvdXQgd2hhdCBhZGRpbmcgZXh0YWNrIHN1cHBvcnQg
aW52b2x2ZXMuCj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEFsYWEgTW9oYW1lZCA8ZW5nLmFsYWFt
b2hhbWVkc29saW1hbi5hbUBnbWFpbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gY2hhbmdlcyBpbiBWMjoK
Pj4+PiAgwqDCoMKgwqAtIGZpeCBzcGVsbGluZyB2eGxhbl9mZGJfZGVsZXRlCj4+Pj4gIMKgwqDC
oMKgLSBhZGQgbWlzc2luZyBicmFjZXMKPj4+PiAgwqDCoMKgwqAtIGVkaXQgZXJyb3IgbWVzc2Fn
ZQo+Pj4+IC0tLQo+Pj4+IGNoYW5nZXMgaW4gVjM6Cj4+Pj4gIMKgwqDCoMKgZml4IGVycm9ycyBy
ZXBvcnRlZCBieSBjaGVja3BhdGNoLnBsCj4+PiBCdXQgeW91ciBjaGFuZ2VzIHdvdWxkIHNlZW0g
dG8gYWxzbyBiZSBpbnRyb2R1Y2luZyBtb3JlIGNoZWNrcGF0Y2ggZXJyb3JzLAo+Pj4gYmVjYXVz
ZSB0aGUgTGludXgga2VybmVsIGNvZGluZyBzdHlsZSBwdXRzIGEgc3BhY2UgYmVmb3JlIGFuIHsg
YXQgdGhlCj4+PiBzdGFydCBvZiBhbiBpZiBicmFuY2guCj4+IEkgcmFuIGNoZWNrcGF0Y2ggc2Ny
aXB0IGJlZm9yZSBzdWJtaXR0aW5nIHRoaXMgcGF0Y2ggYW5kIGdvdCBubyBlcnJvcgo+IFRoaXMg
aXMgd2hhdCBJIGdvdDoKPiBXQVJOSU5HOiBzdXNwZWN0IGNvZGUgaW5kZW50IGZvciBjb25kaXRp
b25hbCBzdGF0ZW1lbnRzICg4LCAyNCkKPiAjMzY2OiBGSUxFOiBkcml2ZXJzL25ldC92eGxhbi92
eGxhbl9jb3JlLmM6MTEzNzoKPiAgIAlpZiAodGJbTkRBX05IX0lEXSAmJiAodGJbTkRBX0RTVF0g
fHwgdGJbTkRBX1ZOSV0gfHwgdGJbTkRBX0lGSU5ERVhdIHx8Cj4gWy4uLl0KPiArCQkJTkxfU0VU
X0VSUl9NU0coZXh0YWNrLCAiRFNULCBWTkksIGlmaW5kZXggYW5kIHBvcnQgYXJlIG11dHVhbGx5
IGV4Y2x1c2l2ZSB3aXRoIE5IX0lEIik7Cj4KPiBXQVJOSU5HOiBsaW5lIGxlbmd0aCBvZiAxMTEg
ZXhjZWVkcyAxMDAgY29sdW1ucwo+ICMzNzA6IEZJTEU6IGRyaXZlcnMvbmV0L3Z4bGFuL3Z4bGFu
X2NvcmUuYzoxMTM5Ogo+ICsJCQlOTF9TRVRfRVJSX01TRyhleHRhY2ssICJEU1QsIFZOSSwgaWZp
bmRleCBhbmQgcG9ydCBhcmUgbXV0dWFsbHkgZXhjbHVzaXZlIHdpdGggTkhfSUQiKTsKPgo+IEVS
Uk9SOiBzcGFjZSByZXF1aXJlZCBiZWZvcmUgdGhlIG9wZW4gYnJhY2UgJ3snCj4gIzM3NzogRklM
RTogZHJpdmVycy9uZXQvdnhsYW4vdnhsYW5fY29yZS5jOjExNDU6Cj4gKwkJaWYgKGVycil7Cj4K
PiBFUlJPUjogc3BhY2UgcmVxdWlyZWQgYmVmb3JlIHRoZSBvcGVuIGJyYWNlICd7Jwo+ICMzODk6
IEZJTEU6IGRyaXZlcnMvbmV0L3Z4bGFuL3Z4bGFuX2NvcmUuYzoxMTY0Ogo+ICsJCWlmIChubGFf
bGVuKHRiW05EQV9QT1JUXSkgIT0gc2l6ZW9mKF9fYmUxNikpewo+Cj4gRVJST1I6IHNwYWNlIHJl
cXVpcmVkIGJlZm9yZSB0aGUgb3BlbiBicmFjZSAneycKPiAjNDAwOiBGSUxFOiBkcml2ZXJzL25l
dC92eGxhbi92eGxhbl9jb3JlLmM6MTE3NDoKPiArCQlpZiAobmxhX2xlbih0YltOREFfVk5JXSkg
IT0gc2l6ZW9mKHUzMikpewo+Cj4gRVJST1I6IHNwYWNlIHJlcXVpcmVkIGJlZm9yZSB0aGUgb3Bl
biBicmFjZSAneycKPiAjNDExOiBGSUxFOiBkcml2ZXJzL25ldC92eGxhbi92eGxhbl9jb3JlLmM6
MTE4NDoKPiArCQlpZiAobmxhX2xlbih0YltOREFfU1JDX1ZOSV0pICE9IHNpemVvZih1MzIpKXsK
Pgo+IEVSUk9SOiBzcGFjZSByZXF1aXJlZCBiZWZvcmUgdGhlIG9wZW4gYnJhY2UgJ3snCj4gIzQy
MzogRklMRTogZHJpdmVycy9uZXQvdnhsYW4vdnhsYW5fY29yZS5jOjExOTY6Cj4gKwkJaWYgKG5s
YV9sZW4odGJbTkRBX0lGSU5ERVhdKSAhPSBzaXplb2YodTMyKSl7Cj4KPiBFUlJPUjogc3BhY2Ug
cmVxdWlyZWQgYmVmb3JlIHRoZSBvcGVuIGJyYWNlICd7Jwo+ICM0MzA6IEZJTEU6IGRyaXZlcnMv
bmV0L3Z4bGFuL3Z4bGFuX2NvcmUuYzoxMjAyOgo+ICsJCWlmICghdGRldil7Cj4KPiBFUlJPUjog
c3BhY2UgcmVxdWlyZWQgYWZ0ZXIgdGhhdCAnLCcgKGN0eDpWeFYpCj4gIzQzMTogRklMRTogZHJp
dmVycy9uZXQvdnhsYW4vdnhsYW5fY29yZS5jOjEyMDM6Cj4gKwkJCU5MX1NFVF9FUlJfTVNHKGV4
dGFjaywiRGV2aWNlIG5vdCBmb3VuZCIpOwo+Cj4KVGhhbmsgeW91IGZvciBzZW5kaW5nIHRoYXQg
LCBidXQgSSBkb24ndCBrbm93IHdoeSBJIG1pc3NlZCB0aGF0IHdoZW4gSSAKcmFuIHRoZSBzY3Jp
cHQuIEFueXdheSwgSSBmaXhlZCBhbGwgdGhlc2UgZXJyb3JzIGFzIEp1bGlhIHNhaWQuCgpUaGFu
a3MgYWdhaW4sCgpBbGFhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
