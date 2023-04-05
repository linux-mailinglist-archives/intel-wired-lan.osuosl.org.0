Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBA26D764D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Apr 2023 10:07:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC65061087;
	Wed,  5 Apr 2023 08:07:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC65061087
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680682075;
	bh=10vk1hKiiLJAmczViuFhdDkpVcSKopwtwje0yaoQAtA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ay5UVA66TY9/nb/zLrAHfyco1mAbb0Jz1P4OzbwU5JJ49cmO6DfltEhuByqEhKhfs
	 Au6dpibjCwrlNJCYdxb9AZrI1TsmzzcOOAKE/T0s6/+Er5h2i4pEzWCd45odMLuF9f
	 3hVFKv+Oo0u6xRiaSGl9e6rCZ88sWunrgwyKgJSGtoTdPQG11h0P8lBmUHnwp1//VD
	 Tic7/P8CIpLc9Fme0McuY8Osg9WQoSckayjKkv5o4TKuMVyFKaZ3NY2rOAubquLOyS
	 8hFMmshrUZ/bIzybH7ozBxhiRJbE7ONA0rTG16cY03g41TS5E2Z9iSkjgk0GaTJUFy
	 vGe/DK4nLpDcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xgyldVYJlrKB; Wed,  5 Apr 2023 08:07:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9ACC660A6D;
	Wed,  5 Apr 2023 08:07:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9ACC660A6D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 870121BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 08:07:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B527405DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 08:07:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B527405DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 80FizSNFjI6M for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Apr 2023 08:07:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D22E405B9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D22E405B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 08:07:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="330996547"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="330996547"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 01:07:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="932748398"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="932748398"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 01:07:45 -0700
Date: Wed, 5 Apr 2023 10:07:41 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ZC0sTQiedWKWp3/y@localhost.localdomain>
References: <20230404072833.3676891-1-michal.swiatkowski@linux.intel.com>
 <20230404072833.3676891-5-michal.swiatkowski@linux.intel.com>
 <704d6afd-229a-064c-abfa-debdde6a73ad@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <704d6afd-229a-064c-abfa-debdde6a73ad@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680682067; x=1712218067;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hn8ofCOXzpOhMg0/zgl9Xv6F+fOGjDxKvfeB1GN4ENs=;
 b=aphDPVv1s+ZLdWKsiTxdsTDs4jvFfaYk7xjdmo/uEdYUabU0LCZVKpG9
 m24M8u61JmjzlGRJiGTZZg8M2Iu5fPwYozHpxNfv+ynEinE1BDu+76W6w
 yosbhfAQxSuV8OmLGd6Yh4D5vIdeBJszdLgddjlookL28vFdAVzv9jymb
 qcukqhv+CyrgYR3aIC8EuciJb84TiJt5csa3lUdKh40xWeYOo6zo51eHY
 hmB4VGhvPNsC0z2oUFdBYFkWgg29EwkBLZ/7GI3Llp2f/2lIQbdvYVhaP
 B/rQpcvhDeTZYacus+PJIenAY9l/kXhgkZEPTMw0O/AwrN0J/f4AzxEWx
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aphDPVv1
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/4] ice: use src VSI
 instead of src MAC in slow-path
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBBcHIgMDQsIDIwMjMgYXQgMDE6Mzg6MjZQTSArMDIwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gRGVhciBNaWNoYWwsCj4gCj4gCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+IAo+
IEFtIDA0LjA0LjIzIHVtIDA5OjI4IHNjaHJpZWIgTWljaGFsIFN3aWF0a293c2tpOgo+ID4gVGhl
IHVzZSBvZiBhIHNvdXJjZSAgTUFDIHRvIGRpcmVjdCBwYWNrZXRzIGZyb20gdGhlIFZGIHRvIHRo
ZQo+IAo+IE9uZSBzcGFjZSBiZWZvcmUgTUFDLgo+IAo+ID4gY29ycmVzcG9uZGluZyBwb3J0IHJl
cHJlc2VudG9yIGlzIG9ubHkgb2sgaWYgdGhlcmUgaXMgb25seSBvbmUKPiA+IE1BQyBvbiBhIFZG
LiBUbyBzdXBwb3J0IHRoaXMgZnVuY3Rpb25hbGl0eSB3aGVuIHRoZSBudW1iZXIKPiA+IG9mIE1B
Q3Mgb24gYSBWRiBpcyBncmVhdGVyLCBpdCBpcyBuZWNlc3NhcnkgdG8gbWF0Y2ggYSBzb3VyY2UK
PiA+IFZTSSBpbnN0ZWFkIG9mIGEgc291cmNlIE1BQy4KPiAKPiBQbGVhc2UgcmVmbG93IGZvciA3
Mi83NSBjaGFyYWN0ZXJzIHBlciBsaW5lLiBUaGlzIHBhcmFncmFwaCBmaXRzIGluIGZvdXIKPiBs
aW5lcy4KPiAKPiA+IExldCdzIHVzZSB0aGUgbmV3IHN3aXRjaCBBUEkgdGhhdCBhbGxvd3MgbWF0
Y2hpbmcgb24gbWV0YWRhdGEuCj4gPiAKPiA+IElmIE1BQyBpc24ndCB1c2VkIGluIG1hdGNoIGNy
aXRlcmlhIHRoZXJlIGlzIG5vIG5lZWQgdG8gaGFuZGxlIGFkZGluZwo+ID4gcnVsZSBhZnRlciB2
aXJ0Y2hubCBjb21tYW5kLiBJbnN0ZWFkIGFkZCBuZXcgcnVsZSB3aGlsZSBwb3J0IHJlcHJlc2Vu
dG9yCj4gPiBpcyBiZWluZyBjb25maWd1cmVkLgo+ID4gCj4gPiBSZW1vdmUgcnVsZV9hZGRlZCBm
aWVsZCwgY2hlY2tpbmcgZm9yIHNwX3J1bGUgY2FuIGJlIHVzZWQgaW5zdGVhZC4KPiA+IFJlbW92
ZSBhbHNvIGNoZWNraW5nIGZvciBzd2l0Y2hkZXYgcnVubmluZyBpbiBkZWxldGluZyBydWxlIGFz
IGl0IGNhbiBiZQo+ID4gY2FsbCBmcm9tIHVucm9sbCBjb250ZXh0IHdoZW4gcnVubmluZyBmbGFn
IGlzbid0IHNldC4gQ2hlY2tpbmcgZm9yCj4gCj4gY2FsbCplZCoKPiAKPiA+IHNwX3J1bGUgY292
ZXIgYm90aCBjb250ZXh0ICh3aXRoIGFuZCB3aXRob3V0IHJ1bm5pbmcgZmxhZykuCj4gCj4gY292
ZXIqcyoKPiAKClRoYW5rcywgZml4ZWQKCj4gPiBSdWxlcyBhcmUgYWRkZWQgaW4gZXN3aXRjaCBj
b25maWd1cmF0aW9uIGZsb3csIHNvIHRoZXJlIGlzIG5vIG5lZWQgdG8KPiA+IGhhdmUgcmVwbGF5
IGZ1bmN0aW9uLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU3dpYXRrb3dza2kgPG1p
Y2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogUGlvdHIg
UmFjenluc2tpIDxwaW90ci5yYWN6eW5za2lAaW50ZWwuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IFNp
bW9uIEhvcm1hbiA8c2ltb24uaG9ybWFuQGNvcmlnaW5lLmNvbT4KPiA+IEBAIC0xMyw5ICsxMyw4
IEBAIHN0cnVjdCBpY2VfcmVwciB7CgpbLi4uXQoKPiA+ICAgCXN0cnVjdCBuZXRfZGV2aWNlICpu
ZXRkZXY7Cj4gPiAgIAlzdHJ1Y3QgbWV0YWRhdGFfZHN0ICpkc3Q7Cj4gPiAgICNpZmRlZiBDT05G
SUdfSUNFX1NXSVRDSERFVgo+ID4gLQkvKiBpbmZvIGFib3V0IHNsb3cgcGF0aCBNQUMgcnVsZSAg
Ki8KPiA+IC0Jc3RydWN0IGljZV9ydWxlX3F1ZXJ5X2RhdGEgKm1hY19ydWxlOwo+ID4gLQl1OCBy
dWxlX2FkZGVkOwo+ID4gKwkvKiBpbmZvIGFib3V0IHNsb3cgcGF0aCBydWxlICAqLwo+ID4gKwlz
dHJ1Y3QgaWNlX3J1bGVfcXVlcnlfZGF0YSBzcF9ydWxlOwo+IAo+IEnigJlkIG5vdCBhYmJyZXZp
YXRlIHNsb3dwYXRoIGluIHRoZSBuYW1lcy4gTm8gaWRlYSBpZiBpdCB3b3VsZCBiZSB0b28gbG9u
Zy4KPgoKSSB0aGluayBpdCB3aWxsIGJlIHRvbyBsb25nLiBJdCBhbHNvIGNhbiBiZSBvbmx5IHJ1
bGUsIGFzIHRoZXJlIGlzIG9ubHkKb25lIHNwZWNpZmljIHJ1bGUgc3RvcmVkIGluIHJlcHJlc2Vu
dG9yIHN0cnVjdC4KCj4gCj4gS2luZCByZWdhcmRzLAo+IAo+IFBhdWwKPgoKVGhhbmtzLApNaWNo
YWwKCj4gCj4gPiAgICNlbmRpZgo+ID4gICB9Owo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3N3aXRjaC5jCj4gPiBpbmRleCA4YzJiYmZkMjYxM2YuLjc2ZjVhODE3OTI5
YSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dp
dGNoLmMKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNo
LmMKPiA+IEBAIC02MDA3LDYgKzYwMDcsMTIgQEAgdm9pZCBpY2VfcnVsZV9hZGRfdmxhbl9tZXRh
ZGF0YShzdHJ1Y3QgaWNlX2Fkdl9sa3VwX2VsZW0gKmxrdXApCj4gPiAgIAkJY3B1X3RvX2JlMTYo
SUNFX1BLVF9WTEFOX01BU0spOwo+ID4gICB9Cj4gPiArdm9pZCBpY2VfcnVsZV9hZGRfc3JjX3Zz
aV9tZXRhZGF0YShzdHJ1Y3QgaWNlX2Fkdl9sa3VwX2VsZW0gKmxrdXApCj4gPiArewo+ID4gKwls
a3VwLT50eXBlID0gSUNFX0hXX01FVEFEQVRBOwo+ID4gKwlsa3VwLT5tX3UubWV0YWRhdGEuc291
cmNlX3ZzaSA9IGNwdV90b19iZTE2KElDRV9NRElEX1NPVVJDRV9WU0lfTUFTSyk7Cj4gPiArfQo+
ID4gKwo+ID4gICAvKioKPiA+ICAgICogaWNlX2FkZF9hZHZfcnVsZSAtIGhlbHBlciBmdW5jdGlv
biB0byBjcmVhdGUgYW4gYWR2YW5jZWQgc3dpdGNoIHJ1bGUKPiA+ICAgICogQGh3OiBwb2ludGVy
IHRvIHRoZSBoYXJkd2FyZSBzdHJ1Y3R1cmUKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9zd2l0Y2guaAo+ID4gaW5kZXggMjQ1ZDRhZDRlOWJjLi5mYmQwOTM2NzUwYWYg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRj
aC5oCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5o
Cj4gPiBAQCAtMzQ0LDYgKzM0NCw3IEBAIGljZV9mcmVlX3Jlc19jbnRyKHN0cnVjdCBpY2VfaHcg
Kmh3LCB1OCB0eXBlLCB1OCBhbGxvY19zaGFyZWQsIHUxNiBudW1faXRlbXMsCj4gPiAgIC8qIFN3
aXRjaC9icmlkZ2UgcmVsYXRlZCBjb21tYW5kcyAqLwo+ID4gICB2b2lkIGljZV9ydWxlX2FkZF90
dW5uZWxfbWV0YWRhdGEoc3RydWN0IGljZV9hZHZfbGt1cF9lbGVtICpsa3VwKTsKPiA+ICAgdm9p
ZCBpY2VfcnVsZV9hZGRfdmxhbl9tZXRhZGF0YShzdHJ1Y3QgaWNlX2Fkdl9sa3VwX2VsZW0gKmxr
dXApOwo+ID4gK3ZvaWQgaWNlX3J1bGVfYWRkX3NyY192c2lfbWV0YWRhdGEoc3RydWN0IGljZV9h
ZHZfbGt1cF9lbGVtICpsa3VwKTsKPiA+ICAgaW50Cj4gPiAgIGljZV9hZGRfYWR2X3J1bGUoc3Ry
dWN0IGljZV9odyAqaHcsIHN0cnVjdCBpY2VfYWR2X2xrdXBfZWxlbSAqbGt1cHMsCj4gPiAgIAkJ
IHUxNiBsa3Vwc19jbnQsIHN0cnVjdCBpY2VfYWR2X3J1bGVfaW5mbyAqcmluZm8sCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuYyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmMKPiA+IGluZGV4IDY4MTQy
ZmFjYzg1ZC4uMjk0ZTkxYzM0NTNjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuYwo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV92Zl9saWIuYwo+ID4gQEAgLTY3MCw4ICs2NzAsNiBAQCBpbnQgaWNlX3Jl
c2V0X3ZmKHN0cnVjdCBpY2VfdmYgKnZmLCB1MzIgZmxhZ3MpCj4gPiAgIAkgKi8KPiA+ICAgCWlj
ZV92Zl9jbGVhcl9hbGxfcHJvbWlzY19tb2Rlcyh2ZiwgdnNpKTsKPiA+IC0JaWNlX2Vzd2l0Y2hf
ZGVsX3ZmX21hY19ydWxlKHZmKTsKPiA+IC0KPiA+ICAgCWljZV92Zl9mZGlyX2V4aXQodmYpOwo+
ID4gICAJaWNlX3ZmX2ZkaXJfaW5pdCh2Zik7Cj4gPiAgIAkvKiBjbGVhbiBWRiBjb250cm9sIFZT
SSB3aGVuIHJlc2V0dGluZyBWRiBzaW5jZSBpdCBzaG91bGQgYmUgc2V0dXAKPiA+IEBAIC02OTcs
NyArNjk1LDYgQEAgaW50IGljZV9yZXNldF92ZihzdHJ1Y3QgaWNlX3ZmICp2ZiwgdTMyIGZsYWdz
KQo+ID4gICAJfQo+ID4gICAJaWNlX2Vzd2l0Y2hfdXBkYXRlX3JlcHIodnNpKTsKPiA+IC0JaWNl
X2Vzd2l0Y2hfcmVwbGF5X3ZmX21hY19ydWxlKHZmKTsKPiA+ICAgCS8qIGlmIHRoZSBWRiBoYXMg
YmVlbiByZXNldCBhbGxvdyBpdCB0byBjb21lIHVwIGFnYWluICovCj4gPiAgIAlpY2VfbWJ4X2Ns
ZWFyX21hbHZmKCZ2Zi0+bWJ4X2luZm8pOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNobmwuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfdmlydGNobmwuYwo+ID4gaW5kZXggOTcyNDNjNjE2ZDVkLi5kY2Y2MjhiMWZj
Y2QgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Zp
cnRjaG5sLmMKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfdmly
dGNobmwuYwo+ID4gQEAgLTM3MzAsNyArMzczMCw2IEBAIHN0YXRpYyBpbnQgaWNlX3ZjX3JlcHJf
YWRkX21hYyhzdHJ1Y3QgaWNlX3ZmICp2ZiwgdTggKm1zZykKPiA+ICAgCWZvciAoaSA9IDA7IGkg
PCBhbC0+bnVtX2VsZW1lbnRzOyBpKyspIHsKPiA+ICAgCQl1OCAqbWFjX2FkZHIgPSBhbC0+bGlz
dFtpXS5hZGRyOwo+ID4gLQkJaW50IHJlc3VsdDsKPiA+ICAgCQlpZiAoIWlzX3VuaWNhc3RfZXRo
ZXJfYWRkcihtYWNfYWRkcikgfHwKPiA+ICAgCQkgICAgZXRoZXJfYWRkcl9lcXVhbChtYWNfYWRk
ciwgdmYtPmh3X2xhbl9hZGRyKSkKPiA+IEBAIC0zNzQyLDEzICszNzQxLDYgQEAgc3RhdGljIGlu
dCBpY2VfdmNfcmVwcl9hZGRfbWFjKHN0cnVjdCBpY2VfdmYgKnZmLCB1OCAqbXNnKQo+ID4gICAJ
CQlnb3RvIGhhbmRsZV9tYWNfZXhpdDsKPiA+ICAgCQl9Cj4gPiAtCQlyZXN1bHQgPSBpY2VfZXN3
aXRjaF9hZGRfdmZfbWFjX3J1bGUocGYsIHZmLCBtYWNfYWRkcik7Cj4gPiAtCQlpZiAocmVzdWx0
KSB7Cj4gPiAtCQkJZGV2X2VycihpY2VfcGZfdG9fZGV2KHBmKSwgIkZhaWxlZCB0byBhZGQgTUFD
ICVwTSBmb3IgVkYgJWRcbiwgZXJyb3IgJWRcbiIsCj4gPiAtCQkJCW1hY19hZGRyLCB2Zi0+dmZf
aWQsIHJlc3VsdCk7Cj4gPiAtCQkJZ290byBoYW5kbGVfbWFjX2V4aXQ7Cj4gPiAtCQl9Cj4gPiAt
Cj4gPiAgIAkJaWNlX3ZmaHdfbWFjX2FkZCh2ZiwgJmFsLT5saXN0W2ldKTsKPiA+ICAgCQl2Zi0+
bnVtX21hYysrOwo+ID4gICAJCWJyZWFrOwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
