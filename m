Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EE274E9B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 11:02:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6744E410BC;
	Tue, 11 Jul 2023 09:02:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6744E410BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689066144;
	bh=Xs83JQwRiWhb+wFHqWQ8OR02uwXoYMzlJiwacS4FUek=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q7PoCfNU/hWb9bh4Kvj0fcKhxt/CqKJQPP6ipRp4qgY4Th4Ocw24A6mQnlJyfV3B7
	 XMtMHc3CXuQKhTtioJCImMtLjqTdtl0A289hBVtSGMb1ItxT6ELnerlQ1sg7bt95Mh
	 aM4cro5DqWTCIbTfPjxBs4U0krLouHUap3p9ArtRtcbMbAPHJk11pBWAKhmB7nIygw
	 8TytQRID+BowBLkuO03xm0sIyKhIz0M/SvkFLstfXn6xbKUls9t0MpMjAYGT18jeJS
	 GbThs238D2vi7ryUflqGnZWSzmFubVnVW87rvgnwA2BNQxDZ7vX+laQSwgLYmooWY/
	 sKK+DwfwOUvkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FIkhwxCHLcg5; Tue, 11 Jul 2023 09:02:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D19E440862;
	Tue, 11 Jul 2023 09:02:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D19E440862
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C3061BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 09:02:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04B5A404BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 09:02:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04B5A404BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y4l4upgnzxA2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 09:02:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07148400FB
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07148400FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 09:02:14 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 476B661E5FE03;
 Tue, 11 Jul 2023 11:01:25 +0200 (CEST)
Message-ID: <237f5cac-5696-93ea-1ab4-f5da4ea790a9@molgen.mpg.de>
Date: Tue, 11 Jul 2023 11:01:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Su Hui <suhui@nfschina.com>
References: <20230710063828.172593-1-suhui@nfschina.com>
 <f1f9002c-ccc3-a2de-e4f5-d8fa1f8734e3@molgen.mpg.de>
In-Reply-To: <f1f9002c-ccc3-a2de-e4f5-d8fa1f8734e3@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] Remove unnecessary
 (void*) conversions
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
Cc: andrew@lunn.ch, irusskikh@marvell.com, kernel-janitors@vger.kernel.org,
 linux@armlinux.org.uk, edumazet@google.com, iyappan@os.amperecomputing.com,
 anthony.l.nguyen@intel.com, quan@os.amperecomputing.com, qiang.zhao@nxp.com,
 jesse.brandeburg@intel.com, xeb@mail.ru, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, yisen.zhuang@huawei.com, wg@grandegger.com,
 steve.glendinning@shawell.net, keyur@os.amperecomputing.com,
 linux-can@vger.kernel.org, mkl@pengutronix.de, salil.mehta@huawei.com,
 GR-Linux-NIC-Dev@marvell.com, uttenthaler@ems-wuensche.com, rmody@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, skalluru@marvell.com,
 yunchuan@nfschina.com, linuxppc-dev@lists.ozlabs.org, davem@davemloft.net,
 hkallweit1@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W0NjOiBSZW1vdmUgbW9zdHJvd3NAZWFydGhsaW5rLm5ldCAoNTUwIDUuNS4xIFJlY2lwaWVudCBy
ZWplY3RlZCAtIApFTE5LMDAxXzQwMyAtKV0KCkFtIDExLjA3LjIzIHVtIDEwOjUzIHNjaHJpZWIg
UGF1bCBNZW56ZWw6Cj4gRGVhciBTdSwKPiAKPiAKPiBUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2gu
Cj4gCj4gQW0gMTAuMDcuMjMgdW0gMDg6Mzggc2NocmllYiBTdSBIdWk6Cj4+IEZyb206IHd1eWNo
IDx5dW5jaHVhbkBuZnNjaGluYS5jb20+Cj4gCj4gQ2FuIHlvdSBwbGVhc2Ugd3JpdGUgdGhlIGZ1
bGwgbmFtZSBjb3JyZWN0bHk/IE1heWJlIFl1biBDaHVhbj8KPiAKPiAgwqDCoMKgIGdpdCBjb25m
aWcgLS1nbG9iYWwgdXNlci5uYW1lICJZdW4gQ2h1YW4iCj4gIMKgwqDCoCBnaXQgY29tbWl0IC0t
YW1lbmQgLS1hdXRob3I9Ill1biBDaHVhbiA8eXVuY2h1YW5AbmZzY2hpbmEuY29tPiIKPiAKPiBJ
IG9ubHkgZ290IHRoZSBjb3ZlciBsZXR0ZXIgYnkgdGhlIHdheS4KPiAKPiAKPiBLaW5kIHJlZ2Fy
ZHMsCj4gCj4gUGF1bAo+IAo+IAo+PiBDaGFuZ2VzIGluIHYyOgo+PiDCoMKgwqDCoG1vdmUgZGVj
bGFyYXRpb25zIHRvIGJlIHJldmVyc2UgeG1hcyB0cmVlLgo+PiDCoMKgwqDCoGNvbXBpbGUgaXQg
aW4gbmV0IGFuZCBuZXQtbmV4dCBicmFuY2guCj4+IMKgwqDCoMKgcmVtb3ZlIHNvbWUgZXJyb3Ig
cGF0Y2hlcyBpbiB2MS4KPj4KPj4gUEFUQ0ggdjEgbGluazoKPj4gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjMwNjI4MDI0MTIxLjE0MzkxNDktMS15dW5jaHVhbkBuZnNjaGluYS5jb20v
Cj4+Cj4+IHd1eWNoICgxMCk6Cj4+IMKgwqAgbmV0OiB3YW46IFJlbW92ZSB1bm5lY2Vzc2FyeSAo
dm9pZCopIGNvbnZlcnNpb25zCj4+IMKgwqAgbmV0OiBhdGxhbnRpYzogUmVtb3ZlIHVubmVjZXNz
YXJ5ICh2b2lkKikgY29udmVyc2lvbnMKPj4gwqDCoCBuZXQ6IHBwcDogUmVtb3ZlIHVubmVjZXNz
YXJ5ICh2b2lkKikgY29udmVyc2lvbnMKPj4gwqDCoCBuZXQ6IGhuczM6IHJlbW92ZSB1bm5lY2Vz
c2FyeSAodm9pZCopIGNvbnZlcnNpb25zCj4+IMKgwqAgbmV0OiBobnM6IFJlbW92ZSB1bm5lY2Vz
c2FyeSAodm9pZCopIGNvbnZlcnNpb25zCj4+IMKgwqAgaWNlOiByZW1vdmUgdW5uZWNlc3Nhcnkg
KHZvaWQqKSBjb252ZXJzaW9ucwo+PiDCoMKgIGV0aGVybmV0OiBzbXNjOiByZW1vdmUgdW5uZWNl
c3NhcnkgKHZvaWQqKSBjb252ZXJzaW9ucwo+PiDCoMKgIG5ldDogbWRpbzogUmVtb3ZlIHVubmVj
ZXNzYXJ5ICh2b2lkKikgY29udmVyc2lvbnMKPj4gwqDCoCBjYW46IGVtc19wY2k6IFJlbW92ZSB1
bm5lY2Vzc2FyeSAodm9pZCopIGNvbnZlcnNpb25zCj4+IMKgwqAgbmV0OiBibmE6IFJlbW92ZSB1
bm5lY2Vzc2FyeSAodm9pZCopIGNvbnZlcnNpb25zCj4+Cj4+IMKgIGRyaXZlcnMvbmV0L2Nhbi9z
amExMDAwL2Vtc19wY2kuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNiArKystLS0KPj4g
wqAgLi4uL2FxdWFudGlhL2F0bGFudGljL2h3X2F0bDIvaHdfYXRsMi5jwqDCoMKgwqDCoMKgIHwg
MTIgKysrKysrLS0tLS0tCj4+IMKgIC4uLi9hdGxhbnRpYy9od19hdGwyL2h3X2F0bDJfdXRpbHNf
ZncuY8KgwqDCoMKgwqDCoCB8wqAgMiArLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9icm9j
YWRlL2JuYS9ibmFkLmPCoMKgwqDCoMKgwqAgfCAxOSArKysrKysrKystLS0tLS0tLS0tCj4+IMKg
IC4uLi9ldGhlcm5ldC9oaXNpbGljb24vaG5zMy9obnMzX2V0aHRvb2wuY8KgwqDCoCB8wqAgMiAr
LQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9oaXNpbGljb24vaG5zX21kaW8uY8KgwqDCoMKg
IHwgMTAgKysrKystLS0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X21haW4uY8KgwqDCoMKgIHzCoCA0ICsrLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvc21z
Yy9zbXNjOTExeC5jwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA0ICsrLS0KPj4gwqAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvc21zYy9zbXNjOTQyMC5jwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA0ICsrLS0K
Pj4gwqAgZHJpdmVycy9uZXQvbWRpby9tZGlvLXhnZW5lLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqAgNCArKy0tCj4+IMKgIGRyaXZlcnMvbmV0L3BwcC9wcHBvZS5jwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQgKystLQo+PiDCoCBk
cml2ZXJzL25ldC9wcHAvcHB0cC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqAgNCArKy0tCj4+IMKgIGRyaXZlcnMvbmV0L3dhbi9mc2xfdWNjX2hkbGMu
Y8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNiArKystLS0KPj4gwqAgMTMgZmls
ZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRpb25zKC0pCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
