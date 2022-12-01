Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAAC63EC8D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 10:32:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C10C260D88;
	Thu,  1 Dec 2022 09:32:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C10C260D88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669887129;
	bh=eqCLwFkvK1yMVbYnsQEN8fnpx/nz8vgGTwdC5qRk0Hs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5hszykqsN32x8Yds++Y2BtUyRtc5p+XL2Mq25AY6iPv82oTB859y5Tsh8Y/n+dzvk
	 C3WK/m+f64kvPA5y0O5trzf2s/TaAdsGGnnch/NZ0eSxqQ00iV//TOlPg9Nk0v8ya5
	 /uJTPs3L2zly3blQA0brvxyyNAuw4vFKxicadfr5nR2CW3OTfPKsBPe4uRiqpXL5f5
	 rNU2b0RGlPgUY6TU2ce0vWnJnBetYJOUq3M3ytbEz+KAG/rGU1t4F/bgCTDPho1oJ1
	 k9XNspmuRm5F2ZUjHtgPReNDMa5G5I1HFYIheM2JUghdU6yWM0YBMXJw3PU60G1ARG
	 2b3ZdgWQNiopA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h4lEU5zLau3b; Thu,  1 Dec 2022 09:32:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B05BC60BEC;
	Thu,  1 Dec 2022 09:32:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B05BC60BEC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BEAD21BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97FD040157
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:32:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97FD040157
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SF0kL2r-nX8p for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 09:32:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43D38400C8
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43D38400C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:32:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="317499000"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="317499000"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 01:31:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="675370340"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="675370340"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.249.130.132])
 ([10.249.130.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 01:31:52 -0800
Message-ID: <f4b4a380-edda-3864-33a0-51bcb013e483@linux.intel.com>
Date: Thu, 1 Dec 2022 10:31:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
References: <20221130123414.892879-1-marcin.szycik@linux.intel.com>
 <e1a372de-05e7-118a-dc92-1083bb8df883@intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <e1a372de-05e7-118a-dc92-1083bb8df883@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669887122; x=1701423122;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=aAReb0oPhK3dJuAmFrVAA4BJfMRxPyDo5sPX12VQ148=;
 b=AaS+8QtJ92XKJKCQTirrdj5UMeWoZhcBT4Y1z25KBC2/sfssYaf2Rixu
 IymUhqfQuWMjOhXbRCtFWBXk6t8MAn9a3UMkS5rjsi+IAjweuFLPf7LRt
 Krp1rfa5VLy4tRHU6aZL8AsGuupUlxvRH0IbOeW80IPZJoGcps1yg3G4v
 pWLy1J/eYmVyWHRA8yznz3a4W2RvhqIeoGmag6ib4wEd90dCb/+kAI8p2
 IkDYajoStMJkVxVXhu9dbA7kL7oWAByIcDgX9aUCjOeysdEoRobNjmN9l
 OmHLQ7inelsquN5CIh6bmosGiQnVGOHBvBIzDO6vd4UmocmVmMlfVPDpE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AaS+8QtJ
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Do not use
 WQ_MEM_RECLAIM flag for workqueue
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
Cc: mustafa.ismail@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

U29ycnksIG15IGJhZC4gSSdsbCBzZW5kIHYyLgoKT24gMzAuMTEuMjAyMiAyMDo1MCwgVG9ueSBO
Z3V5ZW4gd3JvdGU6Cj4gCj4gCj4gT24gMTEvMzAvMjAyMiA0OjM0IEFNLCBNYXJjaW4gU3p5Y2lr
IHdyb3RlOgo+IAo+IEkgYmVsaWV2ZSBBbmkgaXMgdGhlIGF1dGhvciBmb3IgdGhpcz8gSSBkb24n
dCBzZWUgaGltIGFzIHRoZSBhdXRob3IgdGhvdWdoLgo+IAo+IGkuZS4KPiBGcm9tOiBBbmlydWRo
IFZlbmthdGFyYW1hbmFuIDxhbmlydWRoLnZlbmthdGFyYW1hbmFuQGludGVsLmNvbT4KPiAKPj4g
V2hlbiBib3RoIGljZSBhbmQgdGhlIGlyZG1hIGRyaXZlciBhcmUgbG9hZGVkLCBhIHdhcm5pbmcK
Pj4gaW4gY2hlY2tfZmx1c2hfZGVwZW5kZW5jeSBpcyBiZWluZyB0cmlnZ2VyZWQuIFRoaXMgc2Vl
bXMKPj4gdG8gYmUgYmVjYXVzZSBvZiB0aGUgaWNlIGRyaXZlciB3b3JrcXVldWUgaXMgYWxsb2Nh
dGVkIHdpdGgKPj4gdGhlIFdRX01FTV9SRUNMQUlNIGZsYWcsIGFuZCB0aGUgaXJkbWEgb25lIGlz
IG5vdC4KPj4KPj4gTG9va2luZyBhdCB0aGUga2VybmVsIGRvY3VtZW50YXRpb24sIGl0IGRvZXNu
J3Qgc2VlbSBsaWtlCj4+IHRoZSBpY2UgZHJpdmVyIG5lZWRzIHRvIHVzZSBXUV9NRU1fUkVDTEFJ
TS4gUmVtb3ZlIGl0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmlydWRoIFZlbmthdGFyYW1hbmFu
IDxhbmlydWRoLnZlbmthdGFyYW1hbmFuQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTWFy
Y2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20+Cj4+IC0tLQo+PiDCoCBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyB8IDIgKy0KPj4gwqAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4+IGluZGV4IDY5OTg0ZmVhN2ZjZS4u
ZDAxZDEwNzNmZmVjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX21haW4uYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X21haW4uYwo+PiBAQCAtNTYxNyw3ICs1NjE3LDcgQEAgc3RhdGljIGludCBfX2luaXQgaWNlX21v
ZHVsZV9pbml0KHZvaWQpCj4+IMKgwqDCoMKgwqAgcHJfaW5mbygiJXNcbiIsIGljZV9kcml2ZXJf
c3RyaW5nKTsKPj4gwqDCoMKgwqDCoCBwcl9pbmZvKCIlc1xuIiwgaWNlX2NvcHlyaWdodCk7Cj4+
IMKgIC3CoMKgwqAgaWNlX3dxID0gYWxsb2Nfd29ya3F1ZXVlKCIlcyIsIFdRX01FTV9SRUNMQUlN
LCAwLCBLQlVJTERfTU9ETkFNRSk7Cj4+ICvCoMKgwqAgaWNlX3dxID0gYWxsb2Nfd29ya3F1ZXVl
KCIlcyIsIDAsIDAsIEtCVUlMRF9NT0ROQU1FKTsKPj4gwqDCoMKgwqDCoCBpZiAoIWljZV93cSkg
ewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcHJfZXJyKCJGYWlsZWQgdG8gY3JlYXRlIHdvcmtxdWV1
ZVxuIik7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
