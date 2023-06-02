Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CDD71FC55
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 10:44:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F100740C5A;
	Fri,  2 Jun 2023 08:44:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F100740C5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685695465;
	bh=apRHxGg6z/0OAPzkU9xf0lLdpcDKTUNHeOVgOAy4vdk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AtrYUnBdydVk51rDuyVi/28A7X4E6y7FL+o5crirPEG3g20W452eTAzEDx9dEbiSM
	 x2wELonH8iq6p8VVahe9Wn+QUQ3E0uzpH07WbwJD3D+hlYi2wHykzbd5RGjcPBn3Px
	 7YSMh1/gaKwyBvdiKkeVwzq0UqtF9w42YYxpw0n0E1a6Dpvbso3oZcZeszff/1zeBW
	 OyUTJINQJFj++ybSYqgsePhPgyVlePua1DCSiTmZkcAd0ROSkE6fxnwj/HUWBl8Ddm
	 0btatGFnCpYQV6O8AJs499SVxyOxcOSs620t/fKrDzhlRJHrhzwcY1KpNlABi7bhfu
	 xA3PCbf6zUOlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QOwgR9cwm41X; Fri,  2 Jun 2023 08:44:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9885440568;
	Fri,  2 Jun 2023 08:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9885440568
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EBEA91BF291
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D09B760ECA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D09B760ECA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VV0vLKYMfJ3s for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 08:44:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9712660AF6
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9712660AF6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:44:15 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aebf4.dynamic.kabel-deutschland.de
 [95.90.235.244])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2F6E361EA1BFF;
 Fri,  2 Jun 2023 10:43:27 +0200 (CEST)
Message-ID: <577f38ed-8532-c32e-07bd-4a3b384d5fe8@molgen.mpg.de>
Date: Fri, 2 Jun 2023 10:43:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Alexander H Duyck <alexander.duyck@gmail.com>
References: <20230601162537.1163270-1-kai.heng.feng@canonical.com>
 <269262acfcce8eb1b85ee1fe3424a5ef2991f481.camel@gmail.com>
 <CAAd53p7c6eEqxd3jecfgvpxuYO3nmmmovcqD=3PgbqSVCWFfxA@mail.gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <CAAd53p7c6eEqxd3jecfgvpxuYO3nmmmovcqD=3PgbqSVCWFfxA@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Use PME poll to circumvent
 unreliable ACPI wake
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W0NjOiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnXQoKRGVhciBLYWksCgoKVGhhbmsgeW91IGZv
ciB5b3VyIHBhdGNoLgoKQW0gMDIuMDYuMjMgdW0gMDM6NDYgc2NocmllYiBLYWktSGVuZyBGZW5n
Ogo+IE9uIEZyaSwgSnVuIDIsIDIwMjMgYXQgNDoyNOKAr0FNIEFsZXhhbmRlciBIIER1eWNrIHdy
b3RlOgo+Pgo+PiBPbiBGcmksIDIwMjMtMDYtMDIgYXQgMDA6MjUgKzA4MDAsIEthaS1IZW5nIEZl
bmcgd3JvdGU6Cj4+PiBPbiBzb21lIEkyMTkgZGV2aWNlcywgZXRoZXJuZXQgY2FibGUgcGx1Z2dp
bmcgZGV0ZWN0aW9uIG9ubHkgd29ya3Mgb25jZQo+Pj4gZnJvbSBQQ0kgRDMgc3RhdGUuIFN1YnNl
cXVlbnQgY2FibGUgcGx1Z2dpbmcgZG9lcyBzZXQgUE1FIGJpdCBjb3JyZWN0bHksCj4+PiBidXQg
ZGV2aWNlIHN0aWxsIGRvZXNuJ3QgZ2V0IHdva2VuIHVwLgoKQ291bGQgeW91IHBsZWFzZSBhZGQg
dGhlIGxpc3Qgb2YgYWxsIHRoZSBkZXZpY2VzIHdpdGggdGhlIGZpcm13YXJlIAp2ZXJzaW9uLCB5
b3Uga25vdyB0aGlzIHByb2JsZW0gZXhpc3RzIG9uPyBQbGVhc2UgYWxzbyBhZGQgdGhlIFVSTHMg
b2YgCnRoZSBidWcgcmVwb3J0cyBhdCB0aGUgZW5kIG9mIHRoZSBjb21taXQgbWVzc2FnZS4KCklz
IHRoYXQgcHJvYmxlbSBsb2dnZWQgc29tZWhvdz8gQ291bGQgYSBsb2cgbWVzc2FnZSBiZSBhZGRl
ZCBmaXJzdD8KCj4+IERvIHdlIGhhdmUgYSByb290IGNhdXNlIG9uIHdoeSB0aGluZ3MgZG9uJ3Qg
Z2V0IHdva2VuIHVwPyBUaGlzIHNlZW1zCj4+IGxpa2UgYW4gaXNzdWUgd2hlcmUgc29tZXRoaW5n
IGlzbid0IGdldHRpbmcgcmVzZXQgYWZ0ZXIgdGhlIGZpcnN0Cj4+IHdha2V1cCBhbmQgc28gZnV0
dXJlIG9uZXMgYXJlIGJsb2NrZWQuCj4gCj4gTm8gd2UgZG9uJ3Qga25vdyB0aGUgcm9vdCBjYXVz
ZS4KPiBJIGd1ZXNzIHRoZSBEMyB3YWtlIGlzbid0IHJlYWxseSB0ZXN0ZWQgdW5kZXIgV2luZG93
cyBiZWNhdXNlIEkyMTkKPiBkb2Vzbid0IHVzZSBydW50aW1lIEQzIG9uIFdpbmRvd3MuCgpIb3cg
ZG8geW91IGtub3c/IFdoZXJlIHlvdSBhYmxlIHRvIGxvb2sgYXQgdGhlIE1pY3Jvc29mdCBXaW5k
b3dzIGRyaXZlciAKc291cmNlIGNvZGU/Cgo+Pj4gU2luY2UgSTIxOSBjb25uZWN0cyB0byB0aGUg
cm9vdCBjb21wbGV4IGRpcmVjdGx5LCBpdCByZWxpZXMgb24gcGxhdGZvcm0KPj4+IGZpcm13YXJl
IChBQ1BJKSB0byB3YWtlIGl0IHVwLiBJbiB0aGlzIGNhc2UsIHRoZSBHUEUgZnJvbSBfUFJXIG9u
bHkKPj4+IHdvcmtzIGZvciBmaXJzdCBjYWJsZSBwbHVnZ2luZyBidXQgZmFpbHMgdG8gbm90aWZ5
IHRoZSBkcml2ZXIgZm9yCj4+PiBzdWJzZXF1ZW50IHBsdWdnaW5nIGV2ZW50cy4KPj4+Cj4+PiBU
aGUgaXNzdWUgd2FzIG9yaWdpbmFsbHkgZm91bmQgb24gQ05QLCBidXQgdGhlIHNhbWUgaXNzdWUg
Y2FuIGJlIGZvdW5kCj4+PiBvbiBBREwgdG9vLiBTbyB3b3JrYXJvdW5kIHRoZSBpc3N1ZSBieSBj
b250aW51aW5nIHVzZSBQTUUgcG9sbCBhZnRlcgoKVGhlIHZlcmIgaXMgc3BlbGxlZCB3aXRoIGEg
c3BhY2U6IHdvcmsgYXJvdW5kLgoKPj4+IGZpcnN0IEFDUEkgd2FrZS4gQXMgUE1FIHBvbGwgaXMg
YWx3YXlzIHVzZWQsIHRoZSBydW50aW1lIHN1c3BlbmQKPj4+IHJlc3RyaWN0aW9uIGZvciBDTlAg
Y2FuIGFsc28gYmUgcmVtb3ZlZC4KCldoZW4gd2FzIHRoYXQgcmVzdHJpY3Rpb24gZm9yIENOUCBh
ZGRlZD8KCj4+PiBTaWduZWQtb2ZmLWJ5OiBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNh
bm9uaWNhbC5jb20+Cj4+PiAtLS0KPj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL25ldGRldi5jIHwgNCArKystCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL25ldGRldi5jCj4+PiBpbmRleCBiZDdlZjU5YjFmMmUuLmYwZTQ4ZjJiYzNhMiAxMDA2NDQK
Pj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+Pj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4+PiBAQCAt
NzAyMSw2ICs3MDIxLDggQEAgc3RhdGljIF9fbWF5YmVfdW51c2VkIGludCBlMTAwMGVfcG1fcnVu
dGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+Pj4gICAgICAgIHN0cnVjdCBlMTAwMF9h
ZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsKPj4+ICAgICAgICBpbnQgcmM7
Cj4+Pgo+Pj4gKyAgICAgcGRldi0+cG1lX3BvbGwgPSB0cnVlOwo+Pj4gKwo+Pj4gICAgICAgIHJj
ID0gX19lMTAwMF9yZXN1bWUocGRldik7Cj4+PiAgICAgICAgaWYgKHJjKQo+Pj4gICAgICAgICAg
ICAgICAgcmV0dXJuIHJjOwo+Pgo+PiBEb2Vzbid0IHRoaXMgZW5hYmxlIHRoaXMgdG9vIGJyb2Fk
bHkuIEkga25vdyB0aGVyZSBhcmUgYSBudW1iZXIgb2YKPj4gZGV2aWNlcyB0aGF0IHJ1biB1bmRl
ciB0aGUgZTEwMDBlIGFuZCBJIHdvdWxkIGltYWdpbmUgdGhhdCB3ZSBkb24ndAo+PiB3YW50IHRo
ZW0gYWxsIHJ1bm5pbmcgd2l0aCAicG1lX3BvbGwgPSB0cnVlIiBkbyB3ZT8KPiAKPiBXaGFjayBh
IG1vbGUgaXNuJ3Qgc2NhbGluZywgZWl0aGVyLgo+IFRoZSBnZW5lcmF0aW9uIGJldHdlZW4gQ05Q
IGFuZCBBREwgYXJlIHByb2JhYmx5IGFmZmVjdGVkIHRvby4KPiAKPj4gSXQgc2VlbXMgbGlrZSBh
dCBhIG1pbmltdW0gd2Ugc2hvdWxkIG9ubHkgYmUgc2V0dGluZyB0aGlzIGZvciBzcGVjaWZpYwo+
PiBwbGF0b2ZybXMgb3IgZGV2aWNlcyBpbnN0ZWFkIG9mIG9uIGFsbCBvZiB0aGVtLgo+Pgo+PiBB
bHNvIHRoaXMgc2VlbXMgbGlrZSBzb21ldGhpbmcgd2Ugc2hvdWxkIGJlIHNldHRpbmcgb24gdGhl
IHN1c3BlbmQgc2lkZQo+PiBzaW5jZSBpdCBzZWVtcyB0byBiZSBjbGVhcmVkIGluIHRoZSB3YWtl
dXAgY2FsbHMuCj4gCj4gcG1lX3BvbGwgZ2V0cyBjbGVhcmVkIG9uIHdha2V1cCwgYW5kIG9uY2Ug
aXQncyBjbGVhcmVkIHRoZSBkZXZpY2Ugd2lsbAo+IGJlIHJlbW92ZWQgZnJvbSBwY2lfcG1lX2xp
c3QuCj4gCj4gVG8gcHJldmVudCB0aGF0LCByZXNldCBwbWVfcG9sbCB0byB0cnVlIGltbWVkaWF0
ZWx5IG9uIHJ1bnRpbWUgcmVzdW1lLgo+IAo+PiBMYXN0bHkgSSBhbSBub3Qgc3VyZSB0aGUgZmly
c3Qgb25lIGlzIG5lY2Vzc2FyaWx5IHN1Y2NlZWRpbmcuIFlvdSBtaWdodAo+PiB3YW50IHRvIGNo
ZWNrIHRoZSBzdGF0dXMgb2YgcG1lX3BvbGwgYmVmb3JlIHlvdSBydW4geW91ciBmaXJzdCB0ZXN0
Lgo+PiBGcm9tIHdoYXQgSSBjYW4gdGVsbCBpdCBsb29rcyBsaWtlIHRoZSBpbml0aWFsIHN0YXRl
IGlzIHRydWUgaW4KPj4gcGNpX3BtX2luaXQuIElmIHNvIGl0IG1pZ2h0IGJlIGdldHRpbmcgY2xl
YXJlZCBhZnRlciB0aGUgZmlyc3Qgd2FrZXVwCj4+IHdoaWNoIGlzIHdoYXQgY2F1c2VzIHlvdXIg
aXNzdWVzLgo+IAo+IFRoYXQncyBieSBkZXNpZ24uIHBtZV9wb2xsIGdldHMgY2xlYXJlZCB3aGVu
IHRoZSBoYXJkd2FyZSBpcyBjYXBhYmxlCj4gdG8gc2lnbmFsIHdha2V1cCB2aWEgUE1FIyBvciBB
Q1BJIEdQRS4gRm9yIGRldGVjdGVkIGhhcmR3YXJlcywgdGhlCj4gcG1lX3BvbGwgd2lsbCBuZXZl
ciBiZSBjbGVhcmVkLgo+IFNvIHRoaXMgYmVjb21lcyB0cmlja3kgZm9yIHRoZSBpc3N1ZSwgc2lu
Y2UgdGhlIEFDUEkgR1BFIHdvcmtzIGZvcgo+IGp1c3Qgb25lIHRpbWUsIGJ1dCBuZXZlciBhZ2Fp
bi4KPiAKPj4+IEBAIC03NjgyLDcgKzc2ODQsNyBAQCBzdGF0aWMgaW50IGUxMDAwX3Byb2JlKHN0
cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQo+Pj4K
Pj4+ICAgICAgICBkZXZfcG1fc2V0X2RyaXZlcl9mbGFncygmcGRldi0+ZGV2LCBEUE1fRkxBR19T
TUFSVF9QUkVQQVJFKTsKPj4+Cj4+PiAtICAgICBpZiAocGNpX2Rldl9ydW5fd2FrZShwZGV2KSAm
JiBody0+bWFjLnR5cGUgIT0gZTEwMDBfcGNoX2NucCkKPj4+ICsgICAgIGlmIChwY2lfZGV2X3J1
bl93YWtlKHBkZXYpKQo+Pj4gICAgICAgICAgICAgICAgcG1fcnVudGltZV9wdXRfbm9pZGxlKCZw
ZGV2LT5kZXYpOwo+Pj4KPj4+ICAgICAgICByZXR1cm4gMDsKPj4KPj4gSSBhc3N1bWUgdGhpcyBp
cyB0aGUgb3JpZ2luYWwgd29ya2Fyb3VuZCB0aGF0IHdhcyBwdXQgaW4gdG8gYWRkcmVzcwo+PiB0
aGlzIGlzc3VlLiBQZXJoYXBzIHlvdSBzaG91bGQgYWRkIGEgRml4ZXMgdGFnIHRvIHRoaXMgdG8g
aWRlbnRpZnkKPj4gd2hpY2ggd29ya2Fyb3VuZCB0aGlzIHBhdGNoIGlzIG1lYW50IHRvIGJlIHJl
cGxhY2luZy4KPiAKPiBBbm90aGVyIHBvc3NpYmlsaXR5IGlzIHRvIHJlbW92ZSBydW50aW1lIHBv
d2VyIG1hbmFnZW1lbnQgY29tcGxldGVseS4KPiBJIHdvbmRlciB3aHkgV2luZG93cyBrZWVwIHRo
ZSBkZXZpY2UgYXQgRDAgYWxsIHRoZSB0aW1lPwoKV2hvIGtub3dzIGhvdyB0byBjb250YWN0IElu
dGVs4oCZcyBkcml2ZXIgZGV2ZWxvcGVycyBmb3IgTWljcm9zb2Z0IFdpbmRvd3M/Cgo+IENhbiBM
aW51eCBhbGlnbiB3aXRoIFdpbmRvd3M/CgpCZWZvcmUgZGVjaWRpbmcgdGhpcywgdGhlIHBvd2Vy
IHVzYWdlIGluIHRoZSBkaWZmZXJlbnQgc3RhdGVzIHNob3VsZCBiZSAKbWVhc3VyZWQuCgoKS2lu
ZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
