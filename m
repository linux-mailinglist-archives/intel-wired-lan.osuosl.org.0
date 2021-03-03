Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A019532B628
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 10:27:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2443400B5;
	Wed,  3 Mar 2021 09:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6i3_sry-Y2xf; Wed,  3 Mar 2021 09:27:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06B93400AF;
	Wed,  3 Mar 2021 09:27:05 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D11B1BF5A1
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 09:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63C9E60606
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 09:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fmxBIwvGw904 for <intel-wired-lan@osuosl.org>;
 Wed,  3 Mar 2021 09:26:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80133605E5
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 09:26:58 +0000 (UTC)
IronPort-SDR: E73iAnFaUKwOrkCYSicNT2Xq/D3rMTNNLudwCoMMEPXOgbC9cvnyzFe+YyJm5LGmTQCPUV709q
 MRylOjJRB8CQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="166406465"
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="166406465"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 01:26:57 -0800
IronPort-SDR: 5XqHxbsQ71g71E74/csOn/LtY1g8bd7uIe1ZNmI/OriVbtzoyAtwp72ou8LNyPLZFky4z3ASJu
 xgAv69dl6GZQ==
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="407155155"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.251.160.25])
 ([10.251.160.25])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 01:26:56 -0800
To: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
 <20210219163648.14581-3-muhammad.husaini.zulkifli@intel.com>
 <ec5adf63-63d7-7e8e-f260-3eaf29ac82c3@linux.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <81dc14b2-7aaf-9166-ab07-94e0b1e35224@intel.com>
Date: Wed, 3 Mar 2021 11:26:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <ec5adf63-63d7-7e8e-f260-3eaf29ac82c3@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1 2/2] igc: Fix Supported Pause
 Frame Link Setting
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
Cc: mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8zLzIwMjEgMTA6MDksIER2b3JhIEZ1eGJydW1lciB3cm90ZToKPiBPbiAxOS8wMi8yMDIx
IDE4OjM2LCBNdWhhbW1hZCBIdXNhaW5pIFp1bGtpZmxpIHdyb3RlOgo+PiBUaGUgU3VwcG9ydGVk
IFBhdXNlIEZyYW1lIGFsd2F5cyBkaXNwbGF5ICJObyIgZXZlbnRob3VnaCB0aGUgQWR2ZXJ0aXNl
ZAo+PiBwYXVzZSBmcmFtZSBzaG93aW5nIHRoZSBjb3JyZWN0IHNldHRpbmcgYmFzZWQgb24gdGhl
IHBhdXNlIHBhcmFtZXRlcnMgdmlhCj4+IGV0aHRvb2wuIFNldCBiaXQgaW4gbGlua19rc2V0dGlu
Z3MgdG8gIlN1cHBvcnRlZCIgZm9yIFBhdXNlIEZyYW1lLgo+Pgo+PiBCZWZvcmUgb3V0cHV0Ogo+
PiBTdXBwb3J0ZWQgcGF1c2UgZnJhbWUgdXNlOiBObwo+Pgo+PiBFeHBlY3RlZCBvdXRwdXQ6Cj4+
IFN1cHBvcnRlZCBwYXVzZSBmcmFtZSB1c2U6IFN5bW1ldHJpYwo+Pgo+PiBGaXhlczogOGM1YWQw
ZGFlOTNjICgiaWdjOiBBZGQgZXRodG9vbCBzdXBwb3J0IikKPj4gU2lnbmVkLW9mZi1ieTogTXVo
YW1tYWQgSHVzYWluaSBadWxraWZsaSAKPj4gPG11aGFtbWFkLmh1c2FpbmkuenVsa2lmbGlAaW50
ZWwuY29tPgo+PiBSZXZpZXdlZC1ieTogTWFsbGkgQyA8bWFsbGlrYXJqdW5hLmNoaWxha2FsYUBp
bnRlbC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdj
X2V0aHRvb2wuYyB8IDMgKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZXRo
dG9vbC5jIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZXRodG9vbC5j
Cj4+IGluZGV4IDY3YTRhZWQ0NWZjMi4uODcyMjI5NGFiOTBjIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2V0aHRvb2wuYwo+PiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2V0aHRvb2wuYwo+PiBAQCAtMTcxMSw2ICsxNzEx
LDkgQEAgc3RhdGljIGludCBpZ2NfZXRodG9vbF9nZXRfbGlua19rc2V0dGluZ3Moc3RydWN0IAo+
PiBuZXRfZGV2aWNlICpuZXRkZXYsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBBdXRvbmVnKTsKPj4gwqDCoMKgwqDCoCB9Cj4+
ICvCoMKgwqAgLyogU2V0IHBhdXNlIGZsb3cgY29udHJvbCBzZXR0aW5ncyAqLwo+PiArwqDCoMKg
IGV0aHRvb2xfbGlua19rc2V0dGluZ3NfYWRkX2xpbmtfbW9kZShjbWQsIHN1cHBvcnRlZCwgUGF1
c2UpOwo+PiArCj4+IMKgwqDCoMKgwqAgc3dpdGNoIChody0+ZmMucmVxdWVzdGVkX21vZGUpIHsK
Pj4gwqDCoMKgwqDCoCBjYXNlIGlnY19mY19mdWxsOgo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZXRo
dG9vbF9saW5rX2tzZXR0aW5nc19hZGRfbGlua19tb2RlKGNtZCwgYWR2ZXJ0aXNpbmcsIFBhdXNl
KTsKPj4KPiBUZXN0ZWQtYnk6IER2b3JhIEZ1eGJydW1lciA8ZHZvcmF4LmZ1eGJydW1lckBsaW51
eC5pbnRlbC5jb20+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4KQWNrZWQtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNv
bT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
