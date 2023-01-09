Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7581C6623EB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jan 2023 12:15:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D53A40374;
	Mon,  9 Jan 2023 11:15:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D53A40374
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673262920;
	bh=k6C1ZLmin5YKIHFtT0rFMgBiySFD9dj+GQvyzcGp978=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8A2dtyVZt8gz6mCb940G4wDivlUwbhjSclno+kZrevt325Um38CKU1SunBUwrFMon
	 5+tuBqum7e9+Jn9qNtUODHnNZu3yWCi4WHfTyy56TIq9/gkUjg8bJh/o4hXU3k3oii
	 EGBr4iFDE6eWK18j0V8O9qxgZGzYuWwgzS/M79R/1S3L8h09U9IzETFxXaCjkiCdDz
	 yyzG27crxYrrjKm8IH8Kai//hmYW5xNoQzXyiLi23npVUxeWy9J4Ljd4RUuaZNNbht
	 LBTRLbfFn8IFrdlwAuySKgKt8yqv5N6t3Blj9egMuXCFJAsgLrrPW9rvAEY0KtSl88
	 CmZow/GnOL88g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 81LfrsG8Tmql; Mon,  9 Jan 2023 11:15:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 848B6403D6;
	Mon,  9 Jan 2023 11:15:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 848B6403D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C5E8B1BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 11:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD1728148F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 11:15:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD1728148F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q6I6wZChiGMT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jan 2023 11:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FDCA81412
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2FDCA81412
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 11:15:11 +0000 (UTC)
Received: from kwepemm600001.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NrBC2219QznTXL;
 Mon,  9 Jan 2023 19:13:34 +0800 (CST)
Received: from [10.174.176.245] (10.174.176.245) by
 kwepemm600001.china.huawei.com (7.193.23.3) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Mon, 9 Jan 2023 19:15:06 +0800
Message-ID: <6fcc6c81-96fb-112f-3aa9-3e2d58ecb2c8@huawei.com>
Date: Mon, 9 Jan 2023 19:15:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: Greg KH <gregkh@linuxfoundation.org>
References: <20221220012143.52141-1-wanghai38@huawei.com>
 <54066d0e-ef50-183f-74fe-551bb99741eb@huawei.com>
 <Y7vtbayi+2GfkhEa@kroah.com>
From: Wang Hai <wanghai38@huawei.com>
In-Reply-To: <Y7vtbayi+2GfkhEa@kroah.com>
X-Originating-IP: [10.174.176.245]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
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

CuWcqCAyMDIzLzEvOSAxODozMywgR3JlZyBLSCDlhpnpgZM6Cj4gT24gTW9uLCBKYW4gMDksIDIw
MjMgYXQgMDU6Mzc6MjNQTSArMDgwMCwgV2FuZyBIYWkgd3JvdGU6Cj4+IOWcqCAyMDIyLzEyLzIw
IDk6MjEsIFdhbmcgSGFpIOWGmemBkzoKPj4+IEluIGtvYmplY3RfZ2V0X3BhdGgoKSwgaWYga29i
ai0+bmFtZSBpcyBjaGFuZ2VkIGJldHdlZW4gY2FsbHMKPj4+IGdldF9rb2JqX3BhdGhfbGVuZ3Ro
KCkgYW5kIGZpbGxfa29ial9wYXRoKCkgYW5kIHRoZSBsZW5ndGggYmVjb21lcwo+Pj4gbG9uZ2Vy
LCB0aGVuIGZpbGxfa29ial9wYXRoKCkgd2lsbCBoYXZlIGFuIG91dC1vZi1ib3VuZHMgYnVnLgo+
Pj4KPj4+IFRoZSBhY3R1YWwgY3VycmVudCBwcm9ibGVtIG9jY3VycyB3aGVuIHRoZSBpeGdiZSBw
cm9iZS4KPj4+Cj4+PiBJbiBpeGdiZV9taWlfYnVzX2luaXQoKSwgaWYgdGhlIGxlbmd0aCBvZiBu
ZXRkZXYtPmRldi5rb2JqLm5hbWUKPj4+IGxlbmd0aCBiZWNvbWVzIGxvbmdlciwgb3V0LW9mLWJv
dW5kcyB3aWxsIG9jY3VyLgo+Pj4KPj4+IGNwdTAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGNwdTEKPj4+IGl4Z2JlX3Byb2JlCj4+PiAgICByZWdpc3Rlcl9uZXRkZXYo
bmV0ZGV2KQo+Pj4gICAgIG5ldGRldl9yZWdpc3Rlcl9rb2JqZWN0Cj4+PiAgICAgIGRldmljZV9h
ZGQKPj4+ICAgICAgIGtvYmplY3RfdWV2ZW50IC8vIFNlbmRpbmcgQUREIGV2ZW50cwo+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzeXN0ZW1kLXVkZXZk
IC8vIHJlbmFtZSBuZXRkZXYKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGRldl9jaGFuZ2VfbmFtZQo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGRldmljZV9yZW5hbWUKPj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAga29iamVjdF9yZW5hbWUKPj4+ICAg
IGl4Z2JlX21paV9idXNfaW5pdCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+Pj4gICAg
IG1kaW9idXNfcmVnaXN0ZXIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4+PiAgICAg
IF9fbWRpb2J1c19yZWdpc3RlciAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPj4+ICAgICAg
IGRldmljZV9yZWdpc3RlciAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+Pj4gICAgICAg
IGRldmljZV9hZGQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4+PiAgICAgICAg
IGtvYmplY3RfdWV2ZW50ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPj4+ICAgICAgICAg
IGtvYmplY3RfZ2V0X3BhdGggICAgICAgICAgICAgICAgICAgICAgICAgfAo+Pj4gICAgICAgICAg
IGxlbiA9IGdldF9rb2JqX3BhdGhfbGVuZ3RoIC8vIG9sZCBuYW1lICB8Cj4+PiAgICAgICAgICAg
cGF0aCA9IGt6YWxsb2MobGVuLCBnZnBfbWFzayk7ICAgICAgICAgIHwKPj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAga29iai0+bmFtZSA9IG5hbWU7
Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8q
IG5hbWUgbGVuZ3RoIGJlY29tZXMKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICogbG9uZ2VyCj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAqLwo+Pj4gICAgICAgICAgIGZpbGxfa29ial9wYXRo
IC8qIGtvYmogcGF0aCBsZW5ndGggaXMKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgKiBs
b25nZXIgdGhhbiBwYXRoLAo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAqIHJlc3VsdGlu
ZyBpbiBvdXQgb2YKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgKiBib3VuZHMgd2hlbiBm
aWxsaW5nIHBhdGgKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgKi8KPj4+Cj4+PiBUaGlz
IGlzIHRoZSBrYXNhbiByZXBvcnQ6Cj4+Pgo+Pj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4+PiBCVUc6IEtBU0FOOiBz
bGFiLW91dC1vZi1ib3VuZHMgaW4gZmlsbF9rb2JqX3BhdGgrMHg1MC8weGMwCj4+PiBXcml0ZSBv
ZiBzaXplIDcgYXQgYWRkciBmZjExMDAwOTA1NzNkMWZkIGJ5IHRhc2sga3dvcmtlci8yODoxLzY3
Mwo+Pj4KPj4+ICAgIFdvcmtxdWV1ZTogZXZlbnRzIHdvcmtfZm9yX2NwdV9mbgo+Pj4gICAgQ2Fs
bCBUcmFjZToKPj4+ICAgIDxUQVNLPgo+Pj4gICAgZHVtcF9zdGFja19sdmwrMHgzNC8weDQ4Cj4+
PiAgICBwcmludF9hZGRyZXNzX2Rlc2NyaXB0aW9uLmNvbnN0cHJvcC4wKzB4ODYvMHgxZTcKPj4+
ICAgIHByaW50X3JlcG9ydCsweDM2LzB4NGYKPj4+ICAgIGthc2FuX3JlcG9ydCsweGFkLzB4MTMw
Cj4+PiAgICBrYXNhbl9jaGVja19yYW5nZSsweDM1LzB4MWMwCj4+PiAgICBtZW1jcHkrMHgzOS8w
eDYwCj4+PiAgICBmaWxsX2tvYmpfcGF0aCsweDUwLzB4YzAKPj4+ICAgIGtvYmplY3RfZ2V0X3Bh
dGgrMHg1YS8weGMwCj4+PiAgICBrb2JqZWN0X3VldmVudF9lbnYrMHgxNDAvMHg0NjAKPj4+ICAg
IGRldmljZV9hZGQrMHg1YzcvMHg5MTAKPj4+ICAgIF9fbWRpb2J1c19yZWdpc3RlcisweDE0ZS8w
eDQ5MAo+Pj4gICAgaXhnYmVfcHJvYmUuY29sZCsweDQ0MS8weDU3NCBbaXhnYmVdCj4+PiAgICBs
b2NhbF9wY2lfcHJvYmUrMHg3OC8weGMwCj4+PiAgICB3b3JrX2Zvcl9jcHVfZm4rMHgyNi8weDQw
Cj4+PiAgICBwcm9jZXNzX29uZV93b3JrKzB4M2I2LzB4NmEwCj4+PiAgICB3b3JrZXJfdGhyZWFk
KzB4MzY4LzB4NTIwCj4+PiAgICBrdGhyZWFkKzB4MTY1LzB4MWEwCj4+PiAgICByZXRfZnJvbV9m
b3JrKzB4MWYvMHgzMAo+Pj4KPj4+IFRoaXMgcmVwcm9kdWNlciB0cmlnZ2VycyB0aGF0IGJ1ZzoK
Pj4+Cj4+PiB3aGlsZToKPj4+IGRvCj4+PiAgICAgICBybW1vZCBpeGdiZQo+Pj4gICAgICAgc2xl
ZXAgMC41Cj4+PiAgICAgICBtb2Rwcm9iZSBpeGdiZQo+Pj4gICAgICAgc2xlZXAgMC41Cj4+Pgo+
Pj4gV2hlbiBjYWxsaW5nIGZpbGxfa29ial9wYXRoKCkgdG8gZmlsbCBwYXRoLCBpZiB0aGUgbmFt
ZSBsZW5ndGggb2YKPj4+IGtvYmogYmVjb21lcyBsb25nZXIsIHJldHVybiBmYWlsdXJlIGFuZCBy
ZXRyeS4gVGhpcyBmaXhlcyB0aGUgcHJvYmxlbS4KPj4+Cj4+PiBGaXhlczogMWRhMTc3ZTRjM2Y0
ICgiTGludXgtMi42LjEyLXJjMiIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBXYW5nIEhhaSA8d2FuZ2hh
aTM4QGh1YXdlaS5jb20+Cj4+PiAtLS0KPj4gSGksIGdyZWcgay1oLgo+PiBTb3JyeSB0byBib3Ro
ZXIgeW91LiBDYW4gdGhpcyBwYXRjaCBiZSBtZXJnZWQgaW50byB0aGUgbWFpbmxpbmU/Cj4gSXQn
cyBpbiBteSAidG8gcmV2aWV3IiBxdWV1ZSB0aGF0IEkgYW0gd29ya2luZyBvbi4gIEFzIHRoaXMg
aXMgbm90Cj4gYW55dGhpbmcgdGhhdCBhIG5vcm1hbCB1c2VyIGNhbiB0cmlnZ2VyLCBpdCdzIG5v
dCB0aGF0IGhpZ2ggb2YgYQo+IHByaW9yaXR5LCByaWdodD8KPgo+IHRoYW5rcywKPgo+IGdyZWcg
ay1oCj4gLgpUaGFua3MsIEkgdGhvdWdodCB5b3UgaGFkIGZvcmdvdHRlbiBhYm91dCBpdC4gSSBo
b3BlIEknbSBub3QgZGlzdHVyYmluZyB5b3UuCgotLSAKV2FuZyBIYWkKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
