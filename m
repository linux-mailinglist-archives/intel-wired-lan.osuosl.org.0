Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7877FC807
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 22:35:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D45BE812DE;
	Tue, 28 Nov 2023 21:35:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D45BE812DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701207334;
	bh=4UBqaoNS2vSgGCHQk31j4slhccuSaQ7PSJ+2G4Pc/V0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OSklCn7rKzCSW1NYKEiJGZ20KSKNdePiancgwIAlE2O9t2dB2BYhaukQrDMPPMaN+
	 wsftSKkuZ8CQ/Unw3whgcL051FA/ZDQ1/ukMJWUf78Z4PcK+dEun0ofq+6Da1L8ioK
	 AJM8tZvyB3XO073aFnKp51c4VjcQvqM/w6L2aocSUAyp2UJlZg5cpC2Sp6h9pK/S+7
	 qsxgUByawQDjcUvAolbNzhFZyCGtA6KtfkC3FF5Ztjr4e8b+ipd+rgflxvynKJJOXY
	 Xm6ZRbZz28yFEKAnqE78KQXBnr0956fvelwR2tAcrBPBVbgSrV2umgzuI1cwef9ukX
	 Vh7/TtVcWEKvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YZ307RpyxBdq; Tue, 28 Nov 2023 21:35:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7541B812C2;
	Tue, 28 Nov 2023 21:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7541B812C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D8271BF38A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 21:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 023BA417A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 21:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 023BA417A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x1qYKe23oCWY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 21:35:26 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8ECF41758
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 21:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8ECF41758
Received: from [192.168.0.183] (ip5f5af0c0.dynamic.kabel-deutschland.de
 [95.90.240.192])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1790761E5FE01;
 Tue, 28 Nov 2023 22:34:54 +0100 (CET)
Message-ID: <695f07b2-cc49-4637-a783-38b0f7457c1b@molgen.mpg.de>
Date: Tue, 28 Nov 2023 22:34:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Skyler_M=C3=A4ntysaari?= <sm+lists@skym.fi>
References: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
 <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
 <c526d946-2779-434b-b8ec-423a48f71e36@skym.fi>
 <6e48c3ba-8d17-41db-ca8d-0a7881d122c9@intel.com>
 <4330a47e-aa31-4248-9d9d-95c54f74cdd9@app.fastmail.com>
 <10804893-d035-4ac9-86f0-161257922be7@app.fastmail.com>
 <03c9e8a4-5adc-4293-a720-fe4342ed723b@app.fastmail.com>
 <20231128021958.GA93203@dev-dsk-ipman-2a-ee5dfd20.us-west-2.amazon.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20231128021958.GA93203@dev-dsk-ipman-2a-ee5dfd20.us-west-2.amazon.com>
Subject: Re: [Intel-wired-lan] The difference between linux kernel driver
 and FreeBSD's with Intel X533
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
Cc: Jordan Crouse <jorcrous@amazon.com>, regressions@lists.linux.dev,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jeff Daly <jeffd@silicom-usa.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W0NjOiArPGplZmZkQHNpbGljb20tdXNhLmNvbT4sICtyZWdyZXNzaW9uc0BsaXN0cy5saW51eC5k
ZXZdCgojcmVnemJvdCBeaW50cm9kdWNlZDogNTY1NzM2MDQ4YmQ1Zjk4ODg5OTA1Njk5OTNjNmI2
YmZkZjZkY2I2ZAoKRGVhciBJdmFuLAoKCkFtIDI4LjExLjIzIHVtIDAzOjIwIHNjaHJpZWIgSXZh
biBQYW5nOgo+IE9uIFdlZCwgT2N0IDE4LCAyMDIzIGF0IDA5OjUwOjM1UE0gKzAzMDAsIFNreWxl
ciBNw6RudHlzYWFyaSB3cm90ZToKPj4gT24gVHVlLCBPY3QgMTAsIDIwMjMsIGF0IDAzOjM5LCBT
a3lsZXIgTcOkbnR5c2Fhcmkgd3JvdGU6Cj4+PiBPbiBUdWUsIE9jdCAxMCwgMjAyMywgYXQgMDI6
NTAsIFNreWxlciBNw6RudHlzYWFyaSB3cm90ZToKPj4+PiBPbiBNb24sIE9jdCA5LCAyMDIzLCBh
dCAxODozMywgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPj4+Pj4gT24gMTAvNC8yMDIzIDEwOjA4
IEFNLCBTa3lsZXIgTcOkbnR5c2Fhcmkgd3JvdGU6Cj4+Pj4+Pj4+IEhpIHRoZXJlLAo+Pj4+Pj4+
Pgo+Pj4+Pj4+PiBJdCBzZWVtcyB0aGF0IGZvciByZWFzb25zIHVua25vd24gdG8gbWUsIG15IElu
dGVsIFg1MzMgYmFzZWQgMTBHIFNGUCsKPj4+Pj4+Pj4gZG9lc24ndCB3YW50IHRvIHdvcmsgd2l0
aCBrZXJuZWwgNi4xLjU1IGluIFZ5T1MgMS40IG5vciBEZWJpYW4gMTIgYnV0Cj4+Pj4+Pj4+IGl0
IGRvZXMgaW4gT1BOc2Vuc2Ugd2hpY2ggaXMgYmFzZWQgb24gRnJlZUJTRCAxMy4yLgo+Pj4+Pj4+
Pgo+Pj4+Pj4+PiBIb3cgd291bGQgSSBnbyBhYm91dCBkZWJ1Z2dpbmcgdGhpcyBwcm9wZXJseT8g
Qm90aCBzaWRlcyBzZWUgbGlnaHQsCj4+Pj4+Pj4+IGJ1dCBubyBsaW5rIHVubGVzcyBJJ20gdXNp
bmcgRnJlZUJTRC4KPj4+Pj4+IGh0dHBzOi8vZm9ydW0udnlvcy5pby90LzEwZy1zZnAtdHJvdWJs
ZS13aXRoLWxpbmtpbmctaW50ZWwteDU1My8xMjI1My8xMT91PXNhbWlwNTM3Cgo+Pj4+PiBSZXNw
b25zZSBmcm9tIEludGVsIHRlYW06Cj4+Pj4+Cj4+Pj4+IEluIHRoZSBldGh0b29sIC1tIG91dHB1
dCBwYXN0ZWQgSSBzZWUgVFggYW5kIFJYIG9wdGljYWwgcG93ZXIgaXMgZmluZS4KPj4+Pj4gQ291
bGQgeW91IHJlcXVlc3QgZmF1bHQgc3RhdHVzIG9uIGJvdGggc2lkZXM/IEp1c3Qgd2FudCB0byBj
aGVjayBpZiBsaW5rCj4+Pj4+IGlzIGRvd24gYmVjYXVzZSB3ZSBhcmUgYXQgbG9jYWwtZmF1bHQg
b3IgbGluayBwYXJ0bmVyIGlzIGF0IGxvY2FsLWZhdWx0Lgo+Pj4+Pgo+Pj4+PiBybW1vZCBpeGdi
ZQo+Pj4+PiBtb2Rwcm9iZSBpeGdiZQo+Pj4+PiBldGh0b29sIC1TIGV0aDAgfCBncmVwIGZhdWx0
Cj4+Pj4+Cj4+Pj4+IFNpbmNlIGl0IGlzIDEwRywgaWYgb3VyIHNpZGUgVFggaXMgT04gKHBvd2Vy
IGxldmVsIHNheXMgaXQgaXMpIHRoZW4gd2UKPj4+Pj4gc2hvdWxkIGV4cGVjdCBsaW5rIHBhcnRu
ZXIgUlggdG8gYmUgbG9ja2VkIHNvIGNhbm5vdCBiZSBhdCBMb2NhbCBGYXVsdC4KPj4+Pj4KPj4+
Pj4gU2t5bGVyLCBwbGVhc2UgZ2F0aGVyIHRoYXQgZXRodG9vbCAtUyBkYXRhIGZvciB1cy4KCj4+
Pj4gQXMgdGhlIG90aGVyIHNpZGUgb2YgdGhlIGxpbmsgaXMgYW4gSnVuaXBlciwgSSdtIG5vdCBx
dWl0ZSBzdXJlIGhvdyBJCj4+Pj4gd291bGQgZ2F0aGVyIHRoZSBzYW1lIGRhdGEgZnJvbSBpdCBh
cyBpdCBkb2Vzbid0IGhhdmUgZXRodG9vbD8KPj4+Pgo+Pj4+IEkgaGF2ZSBhbHNvIHNvbWV3aGF0
IGdpdmVuIHVwIGhvcGUgb24gaXQgd29ya2luZyBvbiBWeU9TIGFuZCBpbnN0ZWFkIEkKPj4+PiBh
bSB1c2luZyBPUE5zZW5zZSBmb3IgdGhlIG1vbWVudCBidXQgSSBzdGlsbCBoYXZlIFZ5T1MgaW5z
dGFsbGVkIGFzCj4+Pj4gd2VsbC4KCj4+PiBJIGRpZCB2ZXJpZnkgdGhhdCB0aGUgZ3JlcCBkb2Vz
bid0IHlpZWxkIGFueSByZXN1bHRzIG9uIHRoZSBWeU9TIGJveAo+Pj4gYW5kIGFsbCBvZiB0aGUg
ZGF0YSByZXR1cm5lZCBoYXMgYW4gdmFsdWUgb2YgMC4gUGFzdGUgb2Ygd2hpY2ggaXMgaGVyZToK
Pj4+IGh0dHBzOi8vcC5rYXBzaS5maS8/NGE4MmNlZGI0ZjQ4MDFlYyNEY0VnRk1GSzdjSDEzRXF5
cHNZNFphSFM1dGFlQTF6WGV2bW1UU1ZXM1A5eAo+Pj4KPj4+IEkgcmVhbGx5IHRoaW5rIHNvbWV0
aGluZyB3ZWlyZCBpcyBnb2luZyBvbiB3aXRoIHRoZSBkcml2ZXIgaW4gTGludXggYXMKPj4+IG90
aGVyd2lzZSB0aGUgc2FtZSBleGFjdCBjb25maWcgb24gSnVuaXBlciB3b3VsZG4ndCB3b3JrIHRo
ZXJlIGVpdGhlci4KPj4+IFRoZSBWeU9TIGJveCBhbHNvIHNheXMgdGhhdCBpdCdzIHVuYWJsZSB0
byBtb2RpZnkgYXV0b25lZyBzZXR0aW5ncywgb3IKPj4+IHNwZWVkL2R1cGxleCBvZiB0aGUgaW50
ZXJmYWNlLgoKPj4gSXQgaGFzIGJlZW4gIHZlcmlmaWVkIHRoYXQgdGhlIGRyaXZlciBpbiBrZXJu
ZWwgdmVyc2lvbiA1LjQuMjU1Cj4+IHNlZW1zIHRvIHdvcmsgYWthIDEuMyBWeU9TLiAgUG9zdCBm
cm9tIGFub3RoZXIgdXNlciBpbiB0aGUgc2FtZQo+PiB0aHJlYWQgYWJvdXQgaXQ6Cj4+IGh0dHBz
Oi8vZm9ydW0udnlvcy5pby90LzEwZy1zZnAtdHJvdWJsZS13aXRoLWxpbmtpbmctaW50ZWwteDU1
My8xMjI1My80Ngo+PiAKPj4gSSBoYXZlIGFsc28gdmVyaWZpZWQgdGhhdCB0aGUgb3V0LW9mLXRy
ZWUgaXhnYmUgZHJpdmVyIGRvZXMgd29yaywKPj4gYnV0IGluLWtlcm5lbCBkb2Vzbid0IGluIGtl
cm5lbCA2LjEuNTguCj4+IAo+PiBQbGVhc2Ugc2hhcmUgdGhlc2UgZmluZGluZ3Mgd2l0aCB0aGUg
Y29ycmVjdCBJbnRlbCB0ZWFtIHNvIHRoYXQKPj4gdGhpcyBjb3VsZCBiZSBmaXhlZC4KCj4gSSBj
YW1lIGFjcm9zcyB0aGlzIHZlcnkgc2ltaWxhciBpc3N1ZSB3aGVuIHVwZ3JhZGluZyBvdXIgbmV0
d29ya2luZyBnZWFyCj4gZnJvbSBrZXJuZWwgNS4xNSB0byA2LjEuIE91ciAxMEcgbGluayBmYWls
cyB3aXRoIHRoZSBpbi10cmVlIDYuMSBpeGdiZQo+IGRyaXZlciBidXQgd29ya3Mgd2l0aCB0aGUg
b3V0LW9mLXRyZWUgNS54IHZlcnNpb25zLiBJIGZvdW5kIHRoYXQgbXkgbGluawo+IGlzc3VlcyB3
ZXJlIHJlbGF0ZWQgdG8gdGhpcyBjb21taXQ6Cj4gCj4gaXhnYmU6IE1hbnVhbCBBTi0zNyBmb3Ig
dHJvdWJsZXNvbWUgbGluayBwYXJ0bmVycyBmb3IgWDU1MCBTRkkKPiBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdGFibGUvbGludXguZ2l0L2NvbW1pdC8/
aD12Ni4xLjYzJmlkPTU2NTczNjA0OGJkNWY5ODg4OTkwNTY5OTkzYzZiNmJmZGY2ZGNiNmQKPiAK
PiBTcGVjaWZpY2FsbHksIG91ciAxMEcgbGluayB3b3JrcyB3aGVuIGJvdGggc2lkZXMgb2YgdGhl
IGZpYmVyIGFyZQo+IHJ1bm5pbmcgdGhlIGluLXRyZWUgNi4xIGl4Z2JlIGRyaXZlciB3aXRoIHRo
aXMgYXV0b25lZ290aWF0aW9uIGNoYW5nZS4KPiBPdXIgbGluayBhbHNvIHdvcmtzIHdoZW4gYm90
aCBzaWRlcyBhcmUgcnVubmluZyB0aGUgNS54IGl4Z2JlIGRyaXZlcnMKPiB3aXRob3V0IHRoaXMg
Y29tbWl0LiBJdCBmYWlscywgaG93ZXZlciwgd2hlbiBvbmx5IG9uZSBzaWRlIGhhcyB0aGlzCj4g
Y29tbWl0LiBPdXIgY3VycmVudCBzZXR1cCBjb21waWxlcyB0aGUgaW4tdHJlZSA2LjEgaXhnYmUg
ZHJpdmVyIHdpdGgKPiB0aGlzIGNvbW1pdCByZXZlcnRlZCwgZm9yIGNvbXBhdGliaWxpdHkgd2l0
aCBvdXIgdmFyeWluZyBoYXJkd2FyZS4KPiAKPiBJIHdvdWxkIGFwcHJlY2lhdGUgaXQgaWYgYW55
b25lIGNhbiBjcm9zcy1jaGVjayBteSBjbGFpbSB3aXRoIHRoZWlyCj4gaGFyZHdhcmUgYXMgd2Vs
bC4gQWxzbywgd291bGQgYW55b25lIGJlIGFibGUgdG8gaGVscCBleHBsYWluIHdoYXQgc29tZQo+
IG9mIHRob3NlIHJlZ2lzdGVycyBhbmQgcmVnX3ZhbCBiZWluZyB3cml0dGVuIGFyZSBkb2luZz8K
ClRoYW5rIHlvdSBmb3IgbWVudGlvbmluZyB0aGUgY3VscHJpdC4gVGhhdCBjb21taXQgaXMgcHJl
c2VudCBzaW5jZSAKdjYuMS1yYzEuIEkgYW0gYWRkaW5nIHRoZSByZWdyZXNzaW9uIGZvbGtzLgoK
CktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
