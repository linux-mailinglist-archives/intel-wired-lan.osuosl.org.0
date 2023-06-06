Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 505D972369C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 07:08:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DB6E4089E;
	Tue,  6 Jun 2023 05:08:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DB6E4089E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686028080;
	bh=Qo6mg+8y2MhfcOiLmuJxGRd7isz472tCRJrRA4DLCMU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o5fmM+c1Tp0zV658IBt0aa1ZCiMY2YjGPwWRTHTi6OD4KJTrwUbuY+X25QJNuP9tK
	 0eJZ2ORLzudQy9zmRZaleyCuNvptl56asnu3LAQ2nPgtJBN0pEjJq6jlJbEWhPza33
	 mHHFQCc4kE/WXZM091etdX0YfOlfzSXzFJBYnPHEj2OT5QoqsclchnZhESa02wGtLR
	 VVjK2FiqJa7Aeg3s+rRTChjqi+elHctD57392UiJHblo3+9XTKa/cX/+V682fjWQ4K
	 T7a0ohq38KqNIGmpseMDx8qr8E8IipqWIjtw5BWYDYPb3mzZNsx+VZmW+15Egq1QD9
	 PHj+8zjBoamPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2wX0a8UWDf9j; Tue,  6 Jun 2023 05:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C25B940894;
	Tue,  6 Jun 2023 05:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C25B940894
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD0681BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 05:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8DE5781F17
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 05:07:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DE5781F17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iLVmQQ_zG_IE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 05:07:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DE4081EE5
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DE4081EE5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 05:07:51 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeed5.dynamic.kabel-deutschland.de
 [95.90.238.213])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 01D6A61E4052B;
 Tue,  6 Jun 2023 07:07:20 +0200 (CEST)
Message-ID: <692a458e-f887-f9da-e3cb-904e64a40924@molgen.mpg.de>
Date: Tue, 6 Jun 2023 07:07:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20230606013325.602823-1-vinicius.gomes@intel.com>
 <20230606013325.602823-5-vinicius.gomes@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230606013325.602823-5-vinicius.gomes@intel.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBWaW5pY2l1cywKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAwNi4wNi4yMyB1
bSAwMzozMyBzY2hyaWViIFZpbmljaXVzIENvc3RhIEdvbWVzOgoKWW91IGNvdWxkIG1ha2UgdGhl
IGNvbW1pdCBtZXNzYWdlIHN1bW1hcnkgZXZlbiBtb3JlIHNwZWNpZmljOgoKaWdjOiBXb3JrIGFy
b3VuZCBIVyBidWcgY2F1c2luZyBtaXNzaW5nIHRpbWVzdGFtcHMKCj4gVGhlcmUncyBhbiBoYXJk
d2FyZSBpc3N1ZSB0aGF0IGNhbiBjYXVzZSBtaXNzaW5nIHRpbWVzdGFtcHMuIFRoZSBidWcKPiBp
cyB0aGF0IHRoZSBpbnRlcnJ1cHQgaXMgb25seSBjbGVhcmVkIGlmIHRoZSBJR0NfVFhTVE1QSF8w
IHJlZ2lzdGVyIGlzCj4gcmVhZC4KCklzIHRoYXQgaGFyZHdhcmUgYnVnIGRvY3VtZW50ZWQgaW4g
c29tZSBlcnJhdGE/Cgo+IFRoZSBidWcgY2FuIGNhdXNlIGEgcmFjZSBjb25kaXRpb24gaWYgYSB0
aW1lc3RhbXAgaXMgY2FwdHVyZWQgYXQgdGhlCj4gd3JvbmcgdGltZSwgYW5kIHdlIHdpbGwgbWlz
cyB0aGF0IHRpbWVzdGFtcC4gVG8gcmVkdWNlIHRoZSB0aW1lIHdpbmRvdwo+IHRoYXQgdGhlIHBy
b2JsZW0gaXMgYWJsZSB0byBoYXBwZW4sIGluIGNhc2Ugbm8gdGltZXN0YW1wIHdhcyByZWFkeSwg
d2UKPiByZWFkIHRoZSAicHJldmlvdXMiIHZhbHVlIG9mIHRoZSB0aW1lc3RhbXAgcmVnaXN0ZXJz
LCBhbmQgd2UgY29tcGFyZQo+IHdpdGggdGhlICJjdXJyZW50IiBvbmUsIGlmIGl0IGRpZG4ndCBj
aGFuZ2Ugd2UgY2FuIHJlYXNvbmFibHkgc3VyZQoKY2FuICpiZSoKCj4gdGhhdCBubyB0aW1lc3Rh
bXAgd2FzIGNhcHR1cmVkLiBJZiB0aGV5IGFyZSBkaWZmZXJlbnQsIHdlIHVzZSB0aGUgbmV3Cj4g
dmFsdWUgYXMgdGhlIGNhcHR1cmVkIHRpbWVzdGFtcC4KPiAKPiBUaGlzIHdvcmthcm91bmQgaGFz
IG1vcmUgaW1wYWN0IHdoZW4gbXVsdGlwbGUgdGltZXN0YW1wIHJlZ2lzdGVycyBhcmUKPiB1c2Vk
LCBhbmQgdGhlIElHQ19UWFNUTVBIXzAgcmVnaXN0ZXIgYWx3YXlzIG5lZWQgdG8gYmUgcmVhZCwg
c28gdGhlCj4gaW50ZXJydXB0IGlzIGNsZWFyZWQuCgpBbHRob3VnaCB5b3Ugc2hhcmVkIHNvbWUg
dGVzdCBjYXNlcyBpbiB0aGUgY292ZXIgbGV0dGVyLCBpdOKAmWQgYmUgZ3JlYXQsIAppZiB5b3Ug
ZG9jdW1lbnRlZCB0aGUgd2F5IHRvIHJlcHJvZHVjZSB0aGlzIGlzc3VlIGFsc28gaW4gdGhpcyBj
b21taXQgCm1lc3NhZ2UuCgpJbiB0aGUgY292ZXIgbGV0dGVyIHlvdSBhbHNvIG1lbnRpb24gYW4g
YWx0ZXJuYXRpdmUgYXBwcm9hY2guIFNob3VsZCBpdCAKYWxzbyBiZSBkb2N1bWVudGVkIGhlcmU/
IChJZiB5b3UgaW1wbGVtZW50ZWQgaXQgYWxyZWFkeSwgeW91IGNvdWxkIGFsc28gCnNlbnQgaXQg
dG8gdGhlIGxpc3QgYW5kIHJlZmVyZW5jZSBpdCBoZXJlLikKCj4gRml4ZXM6IDJjMzQ0YWUyNDUw
MSAoImlnYzogQWRkIHN1cHBvcnQgZm9yIFRYIHRpbWVzdGFtcGluZyIpCj4gU2lnbmVkLW9mZi1i
eTogVmluaWNpdXMgQ29zdGEgR29tZXMgPHZpbmljaXVzLmdvbWVzQGludGVsLmNvbT4KPiAtLS0K
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMgfCA0OCArKysrKysr
KysrKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspLCAx
MSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdjL2lnY19wdHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRw
LmMKPiBpbmRleCBjZjk2M2ExMmE5MmYuLjMyZWYxMTJmODI5MSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jCj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYwo+IEBAIC02ODUsMTQgKzY4NSw0OSBAQCBzdGF0
aWMgdm9pZCBpZ2NfcHRwX3R4X2h3dHN0YW1wKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcikK
PiAgIAlzdHJ1Y3Qgc2tfYnVmZiAqc2tiID0gYWRhcHRlci0+cHRwX3R4X3NrYjsKPiAgIAlzdHJ1
Y3Qgc2tiX3NoYXJlZF9od3RzdGFtcHMgc2hod3RzdGFtcHM7Cj4gICAJc3RydWN0IGlnY19odyAq
aHcgPSAmYWRhcHRlci0+aHc7Cj4gKwl1MzIgdHN5bmN0eGN0bDsKPiAgIAlpbnQgYWRqdXN0ID0g
MDsKPiAgIAl1NjQgcmVndmFsOwo+ICAgCj4gICAJaWYgKFdBUk5fT05fT05DRSghc2tiKSkKPiAg
IAkJcmV0dXJuOwo+ICAgCj4gLQlyZWd2YWwgPSByZDMyKElHQ19UWFNUTVBMKTsKPiAtCXJlZ3Zh
bCB8PSAodTY0KXJkMzIoSUdDX1RYU1RNUEgpIDw8IDMyOwo+ICsJdHN5bmN0eGN0bCA9IHJkMzIo
SUdDX1RTWU5DVFhDVEwpOwo+ICsJdHN5bmN0eGN0bCAmPSBJR0NfVFNZTkNUWENUTF9UWFRUXzA7
Cj4gKwlpZiAodHN5bmN0eGN0bCkgewo+ICsJCXJlZ3ZhbCA9IHJkMzIoSUdDX1RYU1RNUEwpOwo+
ICsJCXJlZ3ZhbCB8PSAodTY0KXJkMzIoSUdDX1RYU1RNUEgpIDw8IDMyOwo+ICsJfSBlbHNlIHsK
PiArCQkvKiBUaGVyZSdzIGEgYnVnIGluIHRoZSBoYXJkd2FyZSB0aGF0IGNvdWxkIGNhdXNlCj4g
KwkJICogbWlzc2luZyBpbnRlcnJ1cHRzIGZvciBUWCB0aW1lc3RhbXBpbmcuIFRoZSBpc3N1ZQo+
ICsJCSAqIGlzIHRoYXQgZm9yIG5ldyBpbnRlcnJ1cHRzIHRvIGJlIHRyaWdnZXJlZCwgdGhlCj4g
KwkJICogSUdDX1RYU1RNUEhfMCByZWdpc3RlciBtdXN0IGJlIHJlYWQuCj4gKwkJICoKPiArCQkg
KiBUbyBhdm9pZCBkaXNjYXJkaW5nIGEgdmFsaWQgdGltZXN0YW1wIHRoYXQganVzdAo+ICsJCSAq
IGhhcHBlbmVkIGF0IHRoZSAid3JvbmciIHRpbWUsIHdlIG5lZWQgdG8gY29uZmlybQo+ICsJCSAq
IHRoYXQgdGhlcmUgd2FzIG5vIHRpbWVzdGFtcCBjYXB0dXJlZCwgd2UgZG8gdGhhdCBieQo+ICsJ
CSAqIGFzc3VtaW5nIHRoYXQgbm8gdHdvIHRpbWVzdGFtcHMgaW4gc2VxdWVuY2UgaGF2ZQo+ICsJ
CSAqIHRoZSBzYW1lIG5hbm9zZWNvbmQgdmFsdWUuCj4gKwkJICoKPiArCQkgKiBTbywgd2UgcmVh
ZCB0aGUgImxvdyIgcmVnaXN0ZXIsIHJlYWQgdGhlICJoaWdoIgo+ICsJCSAqIHJlZ2lzdGVyICh0
byBsYXRjaCBhIG5ldyB0aW1lc3RhbXApIGFuZCByZWFkIHRoZQo+ICsJCSAqICJsb3ciIHJlZ2lz
dGVyIGFnYWluLCBpZiAib2xkIiBhbmQgIm5ldyIgdmVyc2lvbnMKPiArCQkgKiBvZiB0aGUgImxv
dyIgcmVnaXN0ZXIgYXJlIGRpZmZlcmVudCwgYSB2YWxpZAo+ICsJCSAqIHRpbWVzdGFtcCB3YXMg
Y2FwdHVyZWQsIHdlIGNhbiByZWFkIHRoZSAiaGlnaCIKPiArCQkgKiByZWdpc3RlciBhZ2Fpbi4K
PiArCQkgKi8KPiArCQl1MzIgdHhzdG1wbF9vbGQsIHR4c3RtcGxfbmV3Owo+ICsKPiArCQl0eHN0
bXBsX29sZCA9IHJkMzIoSUdDX1RYU1RNUEwpOwo+ICsJCXJkMzIoSUdDX1RYU1RNUEgpOwo+ICsJ
CXR4c3RtcGxfbmV3ID0gcmQzMihJR0NfVFhTVE1QTCk7Cj4gKwo+ICsJCWlmICh0eHN0bXBsX29s
ZCA9PSB0eHN0bXBsX25ldykKPiArCQkJcmV0dXJuOwo+ICsKPiArCQlyZWd2YWwgPSB0eHN0bXBs
X25ldzsKPiArCQlyZWd2YWwgfD0gKHU2NClyZDMyKElHQ19UWFNUTVBIKSA8PCAzMjsKPiArCX0K
PiAgIAlpZiAoaWdjX3B0cF9zeXN0aW1fdG9faHd0c3RhbXAoYWRhcHRlciwgJnNoaHd0c3RhbXBz
LCByZWd2YWwpKQo+ICAgCQlyZXR1cm47Cj4gICAKPiBAQCAtNzMwLDIyICs3NjUsMTMgQEAgc3Rh
dGljIHZvaWQgaWdjX3B0cF90eF9od3RzdGFtcChzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIp
Cj4gICAgKi8KPiAgIHZvaWQgaWdjX3B0cF90eF90c3RhbXBfZXZlbnQoc3RydWN0IGlnY19hZGFw
dGVyICphZGFwdGVyKQo+ICAgewo+IC0Jc3RydWN0IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7
Cj4gICAJdW5zaWduZWQgbG9uZyBmbGFnczsKPiAtCXUzMiB0c3luY3R4Y3RsOwo+ICAgCj4gICAJ
c3Bpbl9sb2NrX2lycXNhdmUoJmFkYXB0ZXItPnB0cF90eF9sb2NrLCBmbGFncyk7Cj4gICAKPiAg
IAlpZiAoIWFkYXB0ZXItPnB0cF90eF9za2IpCj4gICAJCWdvdG8gdW5sb2NrOwo+ICAgCj4gLQl0
c3luY3R4Y3RsID0gcmQzMihJR0NfVFNZTkNUWENUTCk7Cj4gLQl0c3luY3R4Y3RsICY9IElHQ19U
U1lOQ1RYQ1RMX1RYVFRfMDsKPiAtCWlmICghdHN5bmN0eGN0bCkgewo+IC0JCVdBUk5fT05DRSgx
LCAiUmVjZWl2ZWQgYSBUU1RBTVAgaW50ZXJydXB0IGJ1dCBubyBUU1RBTVAgaXMgcmVhZHkuXG4i
KTsKCldhcyB0aGlzIHdhcm5pbmcgcHJpbnRlZCBiZWZvcmUgeW91ciBwYXRjaD8KCj4gLQkJZ290
byB1bmxvY2s7Cj4gLQl9Cj4gLQo+ICAgCWlnY19wdHBfdHhfaHd0c3RhbXAoYWRhcHRlcik7Cj4g
ICAKPiAgIHVubG9jazoKCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
