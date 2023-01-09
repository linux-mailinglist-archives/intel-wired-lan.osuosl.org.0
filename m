Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B656621B7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jan 2023 10:37:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 669DC60DB2;
	Mon,  9 Jan 2023 09:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 669DC60DB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673257058;
	bh=m1qTqwyre68QCMR9ToVKFT57jZLBwGUtCDoTlBFn1y0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tbk9LpAWpxxHP530RMaMoT1PQvFawY12jlVA0WCCB3FMUT8BHLp/9kg/Lw1uee2Uq
	 BC7XHOFj0Co1owQBGJ1GzRhhvi0J69oXS0eWKJmh1zbRHf4q6TbOvcOm01vV8G5W5j
	 IPnhUXJ0km7UwZYfNdEXvXMCKNCcU7jSsrKAwM6vg9/7TzlqMaX78vOJ1jcDgRgPRa
	 BIkMPQ+2YKGxAYe9h8bot6eAVmiZHGHl3R4jqbbUfZdPMH8ywwWe4w6a5w9OTj1aA1
	 Zkw2jGF8w738PH1m3vRLVohzm0HJt+PU2SxichEyFhKCwFy1oWi7KJoFgfdt87VFSR
	 cOQ0GC118cFaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ARkNF0SzFGb5; Mon,  9 Jan 2023 09:37:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C7F860D69;
	Mon,  9 Jan 2023 09:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C7F860D69
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3F5C1BF471
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 09:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7DFCD4056B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 09:37:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DFCD4056B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1DkjxQ2W7KwT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jan 2023 09:37:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11D39400EC
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11D39400EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 09:37:29 +0000 (UTC)
Received: from kwepemm600001.china.huawei.com (unknown [172.30.72.54])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4Nr82J5XXZz16Mgs;
 Mon,  9 Jan 2023 17:35:52 +0800 (CST)
Received: from [10.174.176.245] (10.174.176.245) by
 kwepemm600001.china.huawei.com (7.193.23.3) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Mon, 9 Jan 2023 17:37:24 +0800
Message-ID: <54066d0e-ef50-183f-74fe-551bb99741eb@huawei.com>
Date: Mon, 9 Jan 2023 17:37:23 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Wang Hai <wanghai38@huawei.com>
To: <gregkh@linuxfoundation.org>
References: <20221220012143.52141-1-wanghai38@huawei.com>
In-Reply-To: <20221220012143.52141-1-wanghai38@huawei.com>
X-Originating-IP: [10.174.176.245]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemm600001.china.huawei.com (7.193.23.3)
X-CFilter-Loop: Reflected
Subject: Re: [Intel-wired-lan] [PATCH v2] kobject: Fix slab-out-of-bounds in
 fill_kobj_path()
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
Cc: rafael@kernel.org, jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 alice.chao@mediatek.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CuWcqCAyMDIyLzEyLzIwIDk6MjEsIFdhbmcgSGFpIOWGmemBkzoKPiBJbiBrb2JqZWN0X2dldF9w
YXRoKCksIGlmIGtvYmotPm5hbWUgaXMgY2hhbmdlZCBiZXR3ZWVuIGNhbGxzCj4gZ2V0X2tvYmpf
cGF0aF9sZW5ndGgoKSBhbmQgZmlsbF9rb2JqX3BhdGgoKSBhbmQgdGhlIGxlbmd0aCBiZWNvbWVz
Cj4gbG9uZ2VyLCB0aGVuIGZpbGxfa29ial9wYXRoKCkgd2lsbCBoYXZlIGFuIG91dC1vZi1ib3Vu
ZHMgYnVnLgo+Cj4gVGhlIGFjdHVhbCBjdXJyZW50IHByb2JsZW0gb2NjdXJzIHdoZW4gdGhlIGl4
Z2JlIHByb2JlLgo+Cj4gSW4gaXhnYmVfbWlpX2J1c19pbml0KCksIGlmIHRoZSBsZW5ndGggb2Yg
bmV0ZGV2LT5kZXYua29iai5uYW1lCj4gbGVuZ3RoIGJlY29tZXMgbG9uZ2VyLCBvdXQtb2YtYm91
bmRzIHdpbGwgb2NjdXIuCj4KPiBjcHUwICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBjcHUxCj4gaXhnYmVfcHJvYmUKPiAgIHJlZ2lzdGVyX25ldGRldihuZXRkZXYpCj4g
ICAgbmV0ZGV2X3JlZ2lzdGVyX2tvYmplY3QKPiAgICAgZGV2aWNlX2FkZAo+ICAgICAga29iamVj
dF91ZXZlbnQgLy8gU2VuZGluZyBBREQgZXZlbnRzCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHN5c3RlbWQtdWRldmQgLy8gcmVuYW1lIG5ldGRldgo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGV2X2NoYW5nZV9u
YW1lCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGV2
aWNlX3JlbmFtZQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBrb2JqZWN0X3JlbmFtZQo+ICAgaXhnYmVfbWlpX2J1c19pbml0ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8Cj4gICAgbWRpb2J1c19yZWdpc3RlciAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKPiAgICAgX19tZGlvYnVzX3JlZ2lzdGVyICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfAo+ICAgICAgZGV2aWNlX3JlZ2lzdGVyICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8Cj4gICAgICAgZGV2aWNlX2FkZCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwK
PiAgICAgICAga29iamVjdF91ZXZlbnQgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICAg
ICAgICAga29iamVjdF9nZXRfcGF0aCAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gICAgICAg
ICAgbGVuID0gZ2V0X2tvYmpfcGF0aF9sZW5ndGggLy8gb2xkIG5hbWUgIHwKPiAgICAgICAgICBw
YXRoID0ga3phbGxvYyhsZW4sIGdmcF9tYXNrKTsgICAgICAgICAgfAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBrb2JqLT5uYW1lID0gbmFtZTsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogbmFtZSBs
ZW5ndGggYmVjb21lcwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKiBsb25nZXIKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICovCj4gICAgICAgICAgZmlsbF9rb2JqX3BhdGggLyoga29iaiBwYXRoIGxl
bmd0aCBpcwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAqIGxvbmdlciB0aGFuIHBhdGgsCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICogcmVzdWx0aW5nIGluIG91dCBvZgo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAqIGJvdW5kcyB3aGVuIGZpbGxpbmcgcGF0aAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAqLwo+Cj4gVGhpcyBpcyB0aGUga2FzYW4gcmVwb3J0Ogo+Cj4gPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09Cj4gQlVHOiBLQVNBTjogc2xhYi1vdXQtb2YtYm91bmRzIGluIGZpbGxfa29ial9wYXRoKzB4
NTAvMHhjMAo+IFdyaXRlIG9mIHNpemUgNyBhdCBhZGRyIGZmMTEwMDA5MDU3M2QxZmQgYnkgdGFz
ayBrd29ya2VyLzI4OjEvNjczCj4KPiAgIFdvcmtxdWV1ZTogZXZlbnRzIHdvcmtfZm9yX2NwdV9m
bgo+ICAgQ2FsbCBUcmFjZToKPiAgIDxUQVNLPgo+ICAgZHVtcF9zdGFja19sdmwrMHgzNC8weDQ4
Cj4gICBwcmludF9hZGRyZXNzX2Rlc2NyaXB0aW9uLmNvbnN0cHJvcC4wKzB4ODYvMHgxZTcKPiAg
IHByaW50X3JlcG9ydCsweDM2LzB4NGYKPiAgIGthc2FuX3JlcG9ydCsweGFkLzB4MTMwCj4gICBr
YXNhbl9jaGVja19yYW5nZSsweDM1LzB4MWMwCj4gICBtZW1jcHkrMHgzOS8weDYwCj4gICBmaWxs
X2tvYmpfcGF0aCsweDUwLzB4YzAKPiAgIGtvYmplY3RfZ2V0X3BhdGgrMHg1YS8weGMwCj4gICBr
b2JqZWN0X3VldmVudF9lbnYrMHgxNDAvMHg0NjAKPiAgIGRldmljZV9hZGQrMHg1YzcvMHg5MTAK
PiAgIF9fbWRpb2J1c19yZWdpc3RlcisweDE0ZS8weDQ5MAo+ICAgaXhnYmVfcHJvYmUuY29sZCsw
eDQ0MS8weDU3NCBbaXhnYmVdCj4gICBsb2NhbF9wY2lfcHJvYmUrMHg3OC8weGMwCj4gICB3b3Jr
X2Zvcl9jcHVfZm4rMHgyNi8weDQwCj4gICBwcm9jZXNzX29uZV93b3JrKzB4M2I2LzB4NmEwCj4g
ICB3b3JrZXJfdGhyZWFkKzB4MzY4LzB4NTIwCj4gICBrdGhyZWFkKzB4MTY1LzB4MWEwCj4gICBy
ZXRfZnJvbV9mb3JrKzB4MWYvMHgzMAo+Cj4gVGhpcyByZXByb2R1Y2VyIHRyaWdnZXJzIHRoYXQg
YnVnOgo+Cj4gd2hpbGU6Cj4gZG8KPiAgICAgIHJtbW9kIGl4Z2JlCj4gICAgICBzbGVlcCAwLjUK
PiAgICAgIG1vZHByb2JlIGl4Z2JlCj4gICAgICBzbGVlcCAwLjUKPgo+IFdoZW4gY2FsbGluZyBm
aWxsX2tvYmpfcGF0aCgpIHRvIGZpbGwgcGF0aCwgaWYgdGhlIG5hbWUgbGVuZ3RoIG9mCj4ga29i
aiBiZWNvbWVzIGxvbmdlciwgcmV0dXJuIGZhaWx1cmUgYW5kIHJldHJ5LiBUaGlzIGZpeGVzIHRo
ZSBwcm9ibGVtLgo+Cj4gRml4ZXM6IDFkYTE3N2U0YzNmNCAoIkxpbnV4LTIuNi4xMi1yYzIiKQo+
IFNpZ25lZC1vZmYtYnk6IFdhbmcgSGFpIDx3YW5naGFpMzhAaHVhd2VpLmNvbT4KPiAtLS0KSGks
IGdyZWcgay1oLgpTb3JyeSB0byBib3RoZXIgeW91LiBDYW4gdGhpcyBwYXRjaCBiZSBtZXJnZWQg
aW50byB0aGUgbWFpbmxpbmU/CgotLSAKV2FuZyBIYWkKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
