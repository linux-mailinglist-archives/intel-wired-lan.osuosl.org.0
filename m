Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0441972674D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 19:29:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B25A417F0;
	Wed,  7 Jun 2023 17:29:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B25A417F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686158973;
	bh=DD/ctWHqSL7XKm/evsLHwNoGpNARZjYws0J760W8VxI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HSNWiab0RE7QEidDHW8l3c3bdCFoRQd/G/J2tPscP+7F3EFPCfjoOEaXo1CXpuiZ+
	 g3e1gH7Kc0BoGteECXT7bZcG5qPYEZCTHCvwyZtpKB/LSmOYGTrxcHJ53fOKtC6j90
	 ZVt6C5kt8FUJ6e+AHqgXXMtyU6J5Pv5UWRtZHt6qcKQlJPukeUCelQLFfpuaHHmc1c
	 2tD6B+S4r+RPeQ4UK5HozfuR7x1VB3ixjGpFsVqmazSJtaTTx4qf7HL/fZeCLEhtlc
	 qpm4HnSgM2hRAonEB6WoV+i7zT1zG+KAHPc+PygucBBaWfh3KiFBaO1dudbLiwRXba
	 s0MN+GfGJNhbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iS4i5sRUuenH; Wed,  7 Jun 2023 17:29:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 118A540A8B;
	Wed,  7 Jun 2023 17:29:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 118A540A8B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE4E91BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 17:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B645660E5B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 17:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B645660E5B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iv7HrdO-om_f for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 17:29:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB52A605BA
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB52A605BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 17:29:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="357065501"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="357065501"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 10:29:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="799481380"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="799481380"
Received: from adtotpal-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.21.176])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 10:29:25 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <692a458e-f887-f9da-e3cb-904e64a40924@molgen.mpg.de>
References: <20230606013325.602823-1-vinicius.gomes@intel.com>
 <20230606013325.602823-5-vinicius.gomes@intel.com>
 <692a458e-f887-f9da-e3cb-904e64a40924@molgen.mpg.de>
Date: Wed, 07 Jun 2023 10:29:24 -0700
Message-ID: <87ttvjqiyz.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686158966; x=1717694966;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=0IqgxjWwCeVbqLuiCL73JZ0VGqUMocoS5C6JMRDoVTQ=;
 b=YSjAyb8HzzqjW9nR4jdWhjoWcrYB0ZtrMBY8SGfSSjg8wLS5nRAxl1q/
 xxaHSj44+HtR5/7aES8jz3wmgSMysn+Q4r+MU9XtnVgHu0pZ3Qz8BbeBd
 kw4grtP6zKFi723ZOI9kOcA/LTuDv8YM29gkZwTzPKm46faySMb0HTnyJ
 rC+4ZS2hOhYm1lCvux0uZZi/3umoqFC47DeRNU0YPaof5LywH95u+WTEB
 clhdrojeExv+lpqWL/UJB4vNxCqsxoL9vW8SfMh1mrO4SFNK6qpORhPRa
 FppwElghkoshkIWJf2TFK+fTAxbT5oY8WhjPYu36DSK/izK3YScMsH0+4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YSjAyb8H
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 4/4] igc: Add workaround
 for missing timestamps
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
Cc: vladimir.oltean@nxp.com, anthony.l.nguyen@intel.com, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwKClBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+IHdyaXRlczoKCj4g
RGVhciBWaW5pY2l1cywKPgo+Cj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+Cj4gQW0gMDYu
MDYuMjMgdW0gMDM6MzMgc2NocmllYiBWaW5pY2l1cyBDb3N0YSBHb21lczoKPgo+IFlvdSBjb3Vs
ZCBtYWtlIHRoZSBjb21taXQgbWVzc2FnZSBzdW1tYXJ5IGV2ZW4gbW9yZSBzcGVjaWZpYzoKPgo+
IGlnYzogV29yayBhcm91bmQgSFcgYnVnIGNhdXNpbmcgbWlzc2luZyB0aW1lc3RhbXBzCj4KClNv
dW5kcyBiZXR0ZXIuIFdpbGwgZml4LgoKPj4gVGhlcmUncyBhbiBoYXJkd2FyZSBpc3N1ZSB0aGF0
IGNhbiBjYXVzZSBtaXNzaW5nIHRpbWVzdGFtcHMuIFRoZSBidWcKPj4gaXMgdGhhdCB0aGUgaW50
ZXJydXB0IGlzIG9ubHkgY2xlYXJlZCBpZiB0aGUgSUdDX1RYU1RNUEhfMCByZWdpc3RlciBpcwo+
PiByZWFkLgo+Cj4gSXMgdGhhdCBoYXJkd2FyZSBidWcgZG9jdW1lbnRlZCBpbiBzb21lIGVycmF0
YT8KPgoKVGhlcmUgaXMgKG9yLCB0aGVyZSBpcyBnb2luZyB0byBiZSkgYW4gZXJyYXRhLCBidXQg
SSBkb24ndCB0aGluayBpdCdzCnB1YmxpYyB5ZXQuIEF0IGxlYXN0IEkgY291bGRuJ3QgZmluZCBp
dC4KCj4+IFRoZSBidWcgY2FuIGNhdXNlIGEgcmFjZSBjb25kaXRpb24gaWYgYSB0aW1lc3RhbXAg
aXMgY2FwdHVyZWQgYXQgdGhlCj4+IHdyb25nIHRpbWUsIGFuZCB3ZSB3aWxsIG1pc3MgdGhhdCB0
aW1lc3RhbXAuIFRvIHJlZHVjZSB0aGUgdGltZSB3aW5kb3cKPj4gdGhhdCB0aGUgcHJvYmxlbSBp
cyBhYmxlIHRvIGhhcHBlbiwgaW4gY2FzZSBubyB0aW1lc3RhbXAgd2FzIHJlYWR5LCB3ZQo+PiBy
ZWFkIHRoZSAicHJldmlvdXMiIHZhbHVlIG9mIHRoZSB0aW1lc3RhbXAgcmVnaXN0ZXJzLCBhbmQg
d2UgY29tcGFyZQo+PiB3aXRoIHRoZSAiY3VycmVudCIgb25lLCBpZiBpdCBkaWRuJ3QgY2hhbmdl
IHdlIGNhbiByZWFzb25hYmx5IHN1cmUKPgo+IGNhbiAqYmUqCj4KCldpbGwgZml4LgoKPj4gdGhh
dCBubyB0aW1lc3RhbXAgd2FzIGNhcHR1cmVkLiBJZiB0aGV5IGFyZSBkaWZmZXJlbnQsIHdlIHVz
ZSB0aGUgbmV3Cj4+IHZhbHVlIGFzIHRoZSBjYXB0dXJlZCB0aW1lc3RhbXAuCj4+IAo+PiBUaGlz
IHdvcmthcm91bmQgaGFzIG1vcmUgaW1wYWN0IHdoZW4gbXVsdGlwbGUgdGltZXN0YW1wIHJlZ2lz
dGVycyBhcmUKPj4gdXNlZCwgYW5kIHRoZSBJR0NfVFhTVE1QSF8wIHJlZ2lzdGVyIGFsd2F5cyBu
ZWVkIHRvIGJlIHJlYWQsIHNvIHRoZQo+PiBpbnRlcnJ1cHQgaXMgY2xlYXJlZC4KPgo+IEFsdGhv
dWdoIHlvdSBzaGFyZWQgc29tZSB0ZXN0IGNhc2VzIGluIHRoZSBjb3ZlciBsZXR0ZXIsIGl04oCZ
ZCBiZSBncmVhdCwgCj4gaWYgeW91IGRvY3VtZW50ZWQgdGhlIHdheSB0byByZXByb2R1Y2UgdGhp
cyBpc3N1ZSBhbHNvIGluIHRoaXMgY29tbWl0IAo+IG1lc3NhZ2UuCj4KClRoZSBtb3N0IGNvbnNp
c3RlbnQgd2F5IHRoYXQgSSBmb3VuZCB0byByZXByb2R1Y2UgdGhpcyBpc3N1ZSB3YXMgc3RpbGwK
bm90IDEwMCUgcmVsaWFibGUsIGkuZS4gaGF2ZSBwdHA0bCwgcGx1cyBudHBwZXJmLCBwbHVzIGEg
Y291cGxlIG9mCmluc3RhbmNlcyBvZiBhIGN1c3RvbSBhcHBsaWNhdGlvbiwgYWxsIHJlcXVlc3Rp
bmcgdGltZXN0YW1wcyBhdCB0aGUgc2FtZQp0aW1lLCBhbmQgaXQgc3RpbGwgdG9vayBzb21ldGlt
ZXMgdGVucyBvZiBtaW51dGVzIGZvciB0aGUgaXNzdWUgdG8KaGFwcGVuLgoKV2lsbCBmaW5kIGEg
d2F5IGRvY3VtZW50IHRoaXMgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKPiBJbiB0aGUgY292ZXIg
bGV0dGVyIHlvdSBhbHNvIG1lbnRpb24gYW4gYWx0ZXJuYXRpdmUgYXBwcm9hY2guIFNob3VsZCBp
dCAKPiBhbHNvIGJlIGRvY3VtZW50ZWQgaGVyZT8gKElmIHlvdSBpbXBsZW1lbnRlZCBpdCBhbHJl
YWR5LCB5b3UgY291bGQgYWxzbyAKPiBzZW50IGl0IHRvIHRoZSBsaXN0IGFuZCByZWZlcmVuY2Ug
aXQgaGVyZS4pCj4KClRoZSBhbHRlcm5hdGl2ZSBhcHByb2FjaCBpcyB0byBub3QgcmVxdWVzdCB0
aW1lc3RhbXBzIGluIHRoZSBmaXJzdCBzZXQKb2YgcmVnaXN0ZXJzLCBhbmQgb25seSB1c2UgdGhl
IGZpcnN0IHNldCBvZiByZWdpc3RlcnMgYXMgYSB3YXkgdG8gY2xlYXIKdGhlIGludGVycnVwdC4K
CkJ1dCBhcyB3ZSBvbmx5IGhhdmUgNCBvZiB0aG9zZSByZWdpc3RlcnMsIGFuZCBpdCdzIHZlcnkg
ZWFzeSB0byBiZQpib3R0bGVuZWNrZWQgYnkgdGhpcywgSSBmZWx0IHRoaXMgYXBwcm9hY2ggd2Fz
IGEgd2FzdGUgb2YgcmVzb3VyY2VzLiBBbmQKaXQga2luZCBvZiBkZXBlbmRzIG9uIGhhdmluZyBz
dXBwb3J0IGZvciB0aGUgZXh0cmEgcmVnaXN0ZXJzICh0aGF0IEkgYW0KZ29pbmcgdG8gcHJvcG9z
ZSBmb3IgLW5leHQpLgoKV2lsbCBhZGQgbW9yZSBkZXRhaWxzIGFib3V0IHRoZSBhbHRlcm5hdGl2
ZSB0byB0aGUgY292ZXIgbGV0dGVyLgoKPj4gRml4ZXM6IDJjMzQ0YWUyNDUwMSAoImlnYzogQWRk
IHN1cHBvcnQgZm9yIFRYIHRpbWVzdGFtcGluZyIpCj4+IFNpZ25lZC1vZmYtYnk6IFZpbmljaXVz
IENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMgfCA0OCArKysrKysrKysrKysrKysr
KystLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRp
b25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdj
L2lnY19wdHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMKPj4g
aW5kZXggY2Y5NjNhMTJhOTJmLi4zMmVmMTEyZjgyOTEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYwo+PiBAQCAtNjg1LDE0ICs2ODUsNDkgQEAgc3RhdGlj
IHZvaWQgaWdjX3B0cF90eF9od3RzdGFtcChzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIpCj4+
ICAgCXN0cnVjdCBza19idWZmICpza2IgPSBhZGFwdGVyLT5wdHBfdHhfc2tiOwo+PiAgIAlzdHJ1
Y3Qgc2tiX3NoYXJlZF9od3RzdGFtcHMgc2hod3RzdGFtcHM7Cj4+ICAgCXN0cnVjdCBpZ2NfaHcg
Kmh3ID0gJmFkYXB0ZXItPmh3Owo+PiArCXUzMiB0c3luY3R4Y3RsOwo+PiAgIAlpbnQgYWRqdXN0
ID0gMDsKPj4gICAJdTY0IHJlZ3ZhbDsKPj4gICAKPj4gICAJaWYgKFdBUk5fT05fT05DRSghc2ti
KSkKPj4gICAJCXJldHVybjsKPj4gICAKPj4gLQlyZWd2YWwgPSByZDMyKElHQ19UWFNUTVBMKTsK
Pj4gLQlyZWd2YWwgfD0gKHU2NClyZDMyKElHQ19UWFNUTVBIKSA8PCAzMjsKPj4gKwl0c3luY3R4
Y3RsID0gcmQzMihJR0NfVFNZTkNUWENUTCk7Cj4+ICsJdHN5bmN0eGN0bCAmPSBJR0NfVFNZTkNU
WENUTF9UWFRUXzA7Cj4+ICsJaWYgKHRzeW5jdHhjdGwpIHsKPj4gKwkJcmVndmFsID0gcmQzMihJ
R0NfVFhTVE1QTCk7Cj4+ICsJCXJlZ3ZhbCB8PSAodTY0KXJkMzIoSUdDX1RYU1RNUEgpIDw8IDMy
Owo+PiArCX0gZWxzZSB7Cj4+ICsJCS8qIFRoZXJlJ3MgYSBidWcgaW4gdGhlIGhhcmR3YXJlIHRo
YXQgY291bGQgY2F1c2UKPj4gKwkJICogbWlzc2luZyBpbnRlcnJ1cHRzIGZvciBUWCB0aW1lc3Rh
bXBpbmcuIFRoZSBpc3N1ZQo+PiArCQkgKiBpcyB0aGF0IGZvciBuZXcgaW50ZXJydXB0cyB0byBi
ZSB0cmlnZ2VyZWQsIHRoZQo+PiArCQkgKiBJR0NfVFhTVE1QSF8wIHJlZ2lzdGVyIG11c3QgYmUg
cmVhZC4KPj4gKwkJICoKPj4gKwkJICogVG8gYXZvaWQgZGlzY2FyZGluZyBhIHZhbGlkIHRpbWVz
dGFtcCB0aGF0IGp1c3QKPj4gKwkJICogaGFwcGVuZWQgYXQgdGhlICJ3cm9uZyIgdGltZSwgd2Ug
bmVlZCB0byBjb25maXJtCj4+ICsJCSAqIHRoYXQgdGhlcmUgd2FzIG5vIHRpbWVzdGFtcCBjYXB0
dXJlZCwgd2UgZG8gdGhhdCBieQo+PiArCQkgKiBhc3N1bWluZyB0aGF0IG5vIHR3byB0aW1lc3Rh
bXBzIGluIHNlcXVlbmNlIGhhdmUKPj4gKwkJICogdGhlIHNhbWUgbmFub3NlY29uZCB2YWx1ZS4K
Pj4gKwkJICoKPj4gKwkJICogU28sIHdlIHJlYWQgdGhlICJsb3ciIHJlZ2lzdGVyLCByZWFkIHRo
ZSAiaGlnaCIKPj4gKwkJICogcmVnaXN0ZXIgKHRvIGxhdGNoIGEgbmV3IHRpbWVzdGFtcCkgYW5k
IHJlYWQgdGhlCj4+ICsJCSAqICJsb3ciIHJlZ2lzdGVyIGFnYWluLCBpZiAib2xkIiBhbmQgIm5l
dyIgdmVyc2lvbnMKPj4gKwkJICogb2YgdGhlICJsb3ciIHJlZ2lzdGVyIGFyZSBkaWZmZXJlbnQs
IGEgdmFsaWQKPj4gKwkJICogdGltZXN0YW1wIHdhcyBjYXB0dXJlZCwgd2UgY2FuIHJlYWQgdGhl
ICJoaWdoIgo+PiArCQkgKiByZWdpc3RlciBhZ2Fpbi4KPj4gKwkJICovCj4+ICsJCXUzMiB0eHN0
bXBsX29sZCwgdHhzdG1wbF9uZXc7Cj4+ICsKPj4gKwkJdHhzdG1wbF9vbGQgPSByZDMyKElHQ19U
WFNUTVBMKTsKPj4gKwkJcmQzMihJR0NfVFhTVE1QSCk7Cj4+ICsJCXR4c3RtcGxfbmV3ID0gcmQz
MihJR0NfVFhTVE1QTCk7Cj4+ICsKPj4gKwkJaWYgKHR4c3RtcGxfb2xkID09IHR4c3RtcGxfbmV3
KQo+PiArCQkJcmV0dXJuOwo+PiArCj4+ICsJCXJlZ3ZhbCA9IHR4c3RtcGxfbmV3Owo+PiArCQly
ZWd2YWwgfD0gKHU2NClyZDMyKElHQ19UWFNUTVBIKSA8PCAzMjsKPj4gKwl9Cj4+ICAgCWlmIChp
Z2NfcHRwX3N5c3RpbV90b19od3RzdGFtcChhZGFwdGVyLCAmc2hod3RzdGFtcHMsIHJlZ3ZhbCkp
Cj4+ICAgCQlyZXR1cm47Cj4+ICAgCj4+IEBAIC03MzAsMjIgKzc2NSwxMyBAQCBzdGF0aWMgdm9p
ZCBpZ2NfcHRwX3R4X2h3dHN0YW1wKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcikKPj4gICAg
Ki8KPj4gICB2b2lkIGlnY19wdHBfdHhfdHN0YW1wX2V2ZW50KHN0cnVjdCBpZ2NfYWRhcHRlciAq
YWRhcHRlcikKPj4gICB7Cj4+IC0Jc3RydWN0IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7Cj4+
ICAgCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+IC0JdTMyIHRzeW5jdHhjdGw7Cj4+ICAgCj4+ICAg
CXNwaW5fbG9ja19pcnFzYXZlKCZhZGFwdGVyLT5wdHBfdHhfbG9jaywgZmxhZ3MpOwo+PiAgIAo+
PiAgIAlpZiAoIWFkYXB0ZXItPnB0cF90eF9za2IpCj4+ICAgCQlnb3RvIHVubG9jazsKPj4gICAK
Pj4gLQl0c3luY3R4Y3RsID0gcmQzMihJR0NfVFNZTkNUWENUTCk7Cj4+IC0JdHN5bmN0eGN0bCAm
PSBJR0NfVFNZTkNUWENUTF9UWFRUXzA7Cj4+IC0JaWYgKCF0c3luY3R4Y3RsKSB7Cj4+IC0JCVdB
Uk5fT05DRSgxLCAiUmVjZWl2ZWQgYSBUU1RBTVAgaW50ZXJydXB0IGJ1dCBubyBUU1RBTVAgaXMg
cmVhZHkuXG4iKTsKPgo+IFdhcyB0aGlzIHdhcm5pbmcgcHJpbnRlZCBiZWZvcmUgeW91ciBwYXRj
aD8KPgoKV2hlbiBzbWFzaGluZyB0aGUgTklDIHdpdGggYXMgbWFueSB0aW1lc3RhbXBpbmcgcmVx
dWVzdHMgYXMgSSBjb3VsZCAoYXMKZXhwbGFpbmVkIGFib3ZlKSwgeWVhaCwgSSBjb3VsZCBzZWUg
dGhpcywgYW5kIHRoYXQncyB3aHkgSSBmZWx0IHRoZQp3b3JrYXJvdW5kIHdhcyBuZWVkZWQuCgo+
PiAtCQlnb3RvIHVubG9jazsKPj4gLQl9Cj4+IC0KPj4gICAJaWdjX3B0cF90eF9od3RzdGFtcChh
ZGFwdGVyKTsKPj4gICAKPj4gICB1bmxvY2s6Cj4KPgo+IEtpbmQgcmVnYXJkcywKPgo+IFBhdWwK
CgpDaGVlcnMsCi0tIApWaW5pY2l1cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
