Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDA9781964
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 13:53:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 715A183A6C;
	Sat, 19 Aug 2023 11:53:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 715A183A6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692445984;
	bh=5QtMmlj7xAu+lP1ewvGRw36a3YcrQ4MfB6HKC1tbC80=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6e5gUuGxkT8wFi65NdIzTw6uxd7MjC4+j2Z8UVLsqXegTwGW4OctP0ysE14rfUIby
	 Qxk+6AgILqIXozwyM4yu2Aocms3itSeEfd4ez8GetdhlcKx9zf1LpyFUi8Qewl3BT4
	 6VMUFYwXr5bz0hKysL4zCQ2BHQbdmColYE0wWubwQOIYttsJLlygyLuGuvQrOdEK08
	 2pWLGANC1HRzhFNkqsS0YoB+gmKDCXynMk14ixJq2RoWejKvVoKAzVd64m5Thk5icv
	 tZAX4WMnClwCXM5bXaiJ0FdoKjsGJgUDUipOvkujNyH7U+vADehl/gPnnNeW1NcM9/
	 vm7CmuHVvXGXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aq5naDb-45kR; Sat, 19 Aug 2023 11:53:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A39A83A66;
	Sat, 19 Aug 2023 11:53:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A39A83A66
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6A641BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 11:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C842660D67
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 11:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C842660D67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IovHjDc5PMZj for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Aug 2023 11:52:55 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE1DD60C08
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 11:52:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE1DD60C08
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0D1FE623A9;
 Sat, 19 Aug 2023 11:52:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E32BAC433C8;
 Sat, 19 Aug 2023 11:52:53 +0000 (UTC)
Date: Sat, 19 Aug 2023 14:52:49 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20230819115249.GP22185@unreal>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
 <20230817141746.18726-2-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230817141746.18726-2-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692445974;
 bh=p80tG6Msagq3qG3K3mTzridTHLNJ86Q45EqvFAMqETk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cjls2mjf/Zsmdq35f259rjkIdz4rLF5YbLThk3yRpsmYugPw8aiKe36V1BKuynfdI
 OzI4NHHhpQHsEinL6Jz4ZJl3Tt77YAOML/UResLEunzWNaXEwG1+gJi0wHV9lXTsQe
 5ppUbtOIjjht92+Mtxdc/hA1hahqhPt9NNcvZnXSfdrkKT/+CJKt0v5RsLUuXljjlS
 zoy/qAX6Twl20meTg9KYuYVm1OgJffR+pvkvDDZGB+FwXiALVAhnySrN85FIdYvq0q
 PwGE0CF+jM1BoASa1YAE4nn4AVTsJklLcpzn6VHbNRzbWRrWU2Qrd9KyV+FvaV5TxR
 0U4GsZWElnnow==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Cjls2mjf
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/9] ice: use
 ice_pf_src_tmr_owned where available
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBBdWcgMTcsIDIwMjMgYXQgMDQ6MTc6MzhQTSArMDIwMCwgS2Fyb2wgS29sYWNpbnNr
aSB3cm90ZToKPiBUaGUgaWNlX3BmX3NyY190bXJfb3duZWQoKSBtYWNybyBleGlzdHMgdG8gY2hl
Y2sgdGhlIGZ1bmN0aW9uIGNhcGFiaWxpdHkKPiBiaXQgaW5kaWNhdGluZyBpZiB0aGUgY3VycmVu
dCBmdW5jdGlvbiBvd25zIHRoZSBQVFAgaGFyZHdhcmUgY2xvY2suCgpUaGlzIGlzIGZpcnN0IHBh
dGNoIGluIHRoZSBzZXJpZXMsIGJ1dCBJIGNhbid0IGZpbmQgbWVudGlvbmVkIG1hY3JvLgpNeSBu
ZXQtbmV4dCBpcyBiYXNlZCBvbiA1YjBhMTQxNGUwYjAgKCJNZXJnZSBicmFuY2ggJ3NtYy1mZWF0
dXJlcyciKQrinpwgIGtlcm5lbCBnaXQ6KG5ldC1uZXh0KSBnaXQgZ3JlcCBpY2VfcGZfc3JjX3Rt
cl9vd25lZApzaG93cyBub3RoaW5nLgoKT24gd2hpY2ggYnJhbmNoIGlzIGl0IGJhc2VkPwoKVGhh
bmtzCgoKPiAKPiBUaGlzIGlzIHNsaWdodGx5IHNob3J0ZXIgdGhhbiB0aGUgbW9yZSB2ZXJib3Nl
IGFjY2VzcyB2aWEKPiBody5mdW5jX2NhcHMudHNfZnVuY19pbmZvLnNyY190bXJfb3duZWQuIEJl
IGNvbnNpc3RlbnQgYW5kIHVzZSB0aGlzCj4gd2hlcmUgcG9zc2libGUgcmF0aGVyIHRoYW4gb3Bl
biBjb2RpbmcgaXRzIGVxdWl2YWxlbnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVy
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogS2Fyb2wgS29sYWNp
bnNraSA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIHwgMiArLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cC5jICB8IDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9tYWluLmMKPiBpbmRleCBhNmRkMzM2ZDI1MDAuLmI2ODU4ZjA0MTUyYyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gQEAgLTMxODUsNyAr
MzE4NSw3IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBpY2VfbWlzY19pbnRyKGludCBfX2Fsd2F5c191
bnVzZWQgaXJxLCB2b2lkICpkYXRhKQo+ICAKPiAgCQllbmFfbWFzayAmPSB+UEZJTlRfT0lDUl9U
U1lOX0VWTlRfTTsKPiAgCj4gLQkJaWYgKGh3LT5mdW5jX2NhcHMudHNfZnVuY19pbmZvLnNyY190
bXJfb3duZWQpIHsKPiArCQlpZiAoaWNlX3BmX3NyY190bXJfb3duZWQocGYpKSB7Cj4gIAkJCS8q
IFNhdmUgRVZFTlRzIGZyb20gR0xUU1lOIHJlZ2lzdGVyICovCj4gIAkJCXBmLT5wdHAuZXh0X3Rz
X2lycSB8PSBnbHRzeW5fc3RhdCAmCj4gIAkJCQkJICAgICAgKEdMVFNZTl9TVEFUX0VWRU5UMF9N
IHwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAu
YyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMKPiBpbmRleCA5N2I4
NTgxYWU5MzEuLjA2NjljYTkwNWM0NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cC5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9wdHAuYwo+IEBAIC0yNDQ3LDcgKzI0NDcsNyBAQCB2b2lkIGljZV9wdHBfcmVzZXQo
c3RydWN0IGljZV9wZiAqcGYpCj4gIAlpZiAodGVzdF9iaXQoSUNFX1BGUl9SRVEsIHBmLT5zdGF0
ZSkpCj4gIAkJZ290byBwZnI7Cj4gIAo+IC0JaWYgKCFody0+ZnVuY19jYXBzLnRzX2Z1bmNfaW5m
by5zcmNfdG1yX293bmVkKQo+ICsJaWYgKCFpY2VfcGZfc3JjX3Rtcl9vd25lZChwZikpCj4gIAkJ
Z290byByZXNldF90czsKPiAgCj4gIAllcnIgPSBpY2VfcHRwX2luaXRfcGhjKGh3KTsKPiAtLSAK
PiAyLjM5LjIKPiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
