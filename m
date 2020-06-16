Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 650441FAE02
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2020 12:31:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 13EBC87746;
	Tue, 16 Jun 2020 10:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UzjfFcUHi_jJ; Tue, 16 Jun 2020 10:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C66A3876EA;
	Tue, 16 Jun 2020 10:31:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EDC01BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 10:31:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 161D3883D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 10:31:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W-ia2UR8hfm9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2020 10:31:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B606B8839E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 10:31:41 +0000 (UTC)
Received: from [114.249.250.117] (helo=[192.168.1.10])
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <aaron.ma@canonical.com>)
 id 1jl8sS-0008DE-9A; Tue, 16 Jun 2020 10:31:36 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>, jeffrey.t.kirsher@intel.com,
 davem@davemloft.net, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 vitaly.lifshits@intel.com, kai.heng.feng@canonical.com,
 sasha.neftin@intel.com
References: <20200616100512.22512-1-aaron.ma@canonical.com>
 <74391e62-7226-b0f8-d129-768b88f13160@molgen.mpg.de>
From: Aaron Ma <aaron.ma@canonical.com>
Autocrypt: addr=aaron.ma@canonical.com; prefer-encrypt=mutual; keydata=
 mQENBFffeLkBCACi4eE4dPsgWN6B9UDOVcAvb5QgU/hRG6yS0I1lGKQv4KA+bke0c5g8clbO
 9gIlIl2bityfA9NzBsDik4Iei3AxMbFyxv9keMwcOFQBIOZF0P3f05qjxftF8P+yp9QTV4hp
 BkFzsXzWRgXN3r8hU8wqZybepF4B1C83sm2kQ5A5N0AUGbZli9i2G+/VscG9sWfLy8T7f4YW
 MjmlijCjoV6k29vsmTWQPZ7EApNpvR5BnZQPmQWzkkr0lNXlsKcyLgefQtlwg6drK4fe4wz0
 ouBIHJEiXE1LWK1hUzkCUASra4WRwKk1Mv/NLLE/aJRqEvF2ukt3uVuM77RWfl7/H/v5ABEB
 AAG0IUFhcm9uIE1hIDxhYXJvbi5tYUBjYW5vbmljYWwuY29tPokBNwQTAQgAIQUCV994uQIb
 AwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRDNxCzQfVU6ntJ9B/9aVy0+RkLqF9QpLmw+
 LAf1m3Fd+4ZarPTerqDqkLla3ekYhbrEtlI1mYuB5f+gtrIjmcW27gacHdslKB9YwaL8B4ZB
 GJKhcrntLg4YPzYUnXZkHHTv1hMw7fBYw82cBT+EbG0Djh6Po6Ihqyr3auHhfFcp1PZH4Mtq
 6hN5KaDZzF/go+tRF5e4bn61Nhdue7mrhFSlfkzLG2ehHWmRV+S91ksH81YDFnazK0sRINBx
 V1S8ts3WJ2f1AbgmnDlbK3c/AfI5YxnIHn/x2ZdXj1P/wn7DgZHmpMy5DMuk0gN34NLUPLA/
 cHeKoBAF8emugljiKecKBpMTLe8FrVOxbkrauQENBFffeLkBCACweKP3Wx+gK81+rOUpuQ00
 sCyKzdtMuXXJ7oL4GzYHbLfJq+F+UHpQbytVGTn3R5+Y61v41g2zTYZooaC+Hs1+ixf+buG2
 +2LZjPSELWPNzH9lsKNlCcEvu1XhyyHkBDbnFFHWlUlql3nSXMo//dOTG/XGKaEaZUxjCLUC
 8ehLc16DJDvdXsPwWhHrCH/4k92F6qQ14QigBMsl75jDTDJMEYgRYEBT1D/bwxdIeoN1BfIG
 mYgf059RrWax4SMiJtVDSUuDOpdwoEcZ0FWesRfbFrM+k/XKiIbjMZSvLunA4FIsOdWYOob4
 Hh0rsm1G+fBLYtT+bE26OWpQ/lSn4TdhABEBAAGJAR8EGAEIAAkFAlffeLkCGwwACgkQzcQs
 0H1VOp6p5Af/ap5EVuP1AhFdPD3pXLNrUUt72W3cuAOjXyss43qFC2YRjGfktrizsDjQU46g
 VKoD6EW9XUPgvYM+k8BJEoXDLhHWnCnMKlbHP3OImxzLRhF4kdlnLicz1zKRcessQatRpJgG
 NIiD+eFyh0CZcWBO1BB5rWikjO/idicHao2stFdaBmIeXvhT9Xp6XNFEmzOmfHps+kKpWshY
 9LDAU0ERBNsW4bekOCa/QxfqcbZYRjrVQvya0EhrPhq0bBpzkIL/7QSBMcdv6IajTlHnLARF
 nAIofCEKeEl7+ksiRapL5Nykcbt4dldE3sQWxIybC94SZ4inENKw6I8RNpigWm0R5w==
Message-ID: <b42b344b-9bdc-edf5-a940-9e4db3a73928@canonical.com>
Date: Tue, 16 Jun 2020 18:31:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <74391e62-7226-b0f8-d129-768b88f13160@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: continue to init phy even
 when failed to disable ULP
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8xNi8yMCA2OjIwIFBNLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIEFhcm9uLAo+IAo+
IAo+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KPiAKPiAoUmFudDogU29tZSBtb3JlIGZhbGxv
dXQgZnJvbSB0aGUgb3RoZXIgcGF0Y2gsIHdoaWNoIG5vYm9keSByZXZlcnRlZC4pCj4gCgpXb3Vs
ZCB5b3UgbGlrZSBhIHJldmVydD8KClRoYW5rcywKQWFyb24KCj4gQW0gMTYuMDYuMjAgdW0gMTI6
MDUgc2NocmllYiBBYXJvbiBNYToKPj4gQWZ0ZXIgY29tbWl0ICJlMTAwMGU6IGRpc2FibGUgczBp
eCBlbnRyeSBhbmQgZXhpdCBmbG93cyBmb3IgTUUgc3lzdGVtcyIsCj4+IHNvbWUgVGhpbmtQYWRz
IGFsd2F5cyBmYWlsZWQgdG8gZGlzYWJsZSB1bHAgYnkgTUUuCj4gCj4gUGxlYXNlIGFkZCB0aGUg
KHNob3J0KSBjb21taXQgaGFzaCBmcm9tIHRoZSBtYXN0ZXIgYnJhbmNoLgo+IAo+IHMvdWxwL1VM
UC8KPiAKPiBQbGVhc2UgbGlzdCBvbmUgVGhpbmtQYWQgYXMgZXhhbXBsZS4KPiAKPj4gY29tbWl0
ICJlMTAwMGU6IFdhcm4gaWYgZGlzYWJsaW5nIFVMUCBmYWlsZWQiIGJyZWFrIG91dCBvZiBpbml0
IHBoeToKPiAKPiAxLsKgIFBsZWFzZSBhZGQgdGhlIGNsb3NpbmcgcXVvdGUgIi4KPiAyLsKgIFBs
ZWFzZSBhZGQgdGhlIGNvbW1pdCBoYXNoLgo+IAo+PiBlcnJvciBsb2c6Cj4+IFvCoMKgIDQyLjM2
NDc1M10gZTEwMDBlIDAwMDA6MDA6MWYuNiBlbnAwczMxZjY6IEZhaWxlZCB0byBkaXNhYmxlIFVM
UAo+PiBbwqDCoCA0Mi41MjQ2MjZdIGUxMDAwZSAwMDAwOjAwOjFmLjYgZW5wMHMzMWY2OiBQSFkg
V2FrZXVwIGNhdXNlIC0gVW5pY2FzdCBQYWNrZXQKPj4gW8KgwqAgNDIuODIyNDc2XSBlMTAwMGUg
MDAwMDowMDoxZi42IGVucDBzMzFmNjogSGFyZHdhcmUgRXJyb3IKPj4KPj4gV2hlbiBkaXNhYmxl
IHMwaXgsIEUxMDAwX0ZXU01fVUxQX0NGR19ET05FIHdpbGwgbmV2ZXIgYmUgMS4KPj4gSWYgY29u
dGludWUgdG8gaW5pdCBwaHkgbGlrZSBiZWZvcmUsIGl0IGNhbiB3b3JrIGFzIGJlZm9yZS4KPj4g
aXBlcmYgdGVzdCByZXN1bHQgZ29vZCB0b28uCj4+Cj4+IENobmFnZSBlX3dhcm4gdG8gZV9kYmcs
IGluIGNhc2UgaXQgY29uZnVzZXMuCj4gCj4gcy9DaG5hZ2UvQ2hhbmdlLwo+IAo+IFBsZWFzZSBs
ZWF2ZSB0aGUgbGV2ZWwgd2FybmluZywgYW5kIGltcHJvdmUgdGhlIHdhcm5pbmcgbWVzc2FnZSBp
bnN0ZWFkLCBzbyBhIHVzZXIga25vd3Mgd2hhdCBpcyBnb2luZyBvbi4KPiAKPiBDb3VsZCB5b3Ug
cGxlYXNlIGFkZCBhIGBGaXhlczpgIHRhZyBhbmQgdGhlIFVSTCB0byB0aGUgYnVnIHJlcG9ydD8K
PiAKPj4gU2lnbmVkLW9mZi1ieTogQWFyb24gTWEgPGFhcm9uLm1hQGNhbm9uaWNhbC5jb20+Cj4+
IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIHwg
MyArLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2lj
aDhsYW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4g
aW5kZXggZjk5OWNjYTM3YThhLi42MzQwNTgxOWViODMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+PiBAQCAtMzAyLDggKzMwMiw3IEBAIHN0
YXRpYyBzMzIgZTEwMDBfaW5pdF9waHlfd29ya2Fyb3VuZHNfcGNobGFuKHN0cnVjdCBlMTAwMF9o
dyAqaHcpCj4+IMKgwqDCoMKgwqAgaHctPmRldl9zcGVjLmljaDhsYW4udWxwX3N0YXRlID0gZTEw
MDBfdWxwX3N0YXRlX3Vua25vd247Cj4+IMKgwqDCoMKgwqAgcmV0X3ZhbCA9IGUxMDAwX2Rpc2Fi
bGVfdWxwX2xwdF9scChodywgdHJ1ZSk7Cj4+IMKgwqDCoMKgwqAgaWYgKHJldF92YWwpIHsKPj4g
LcKgwqDCoMKgwqDCoMKgIGVfd2FybigiRmFpbGVkIHRvIGRpc2FibGUgVUxQXG4iKTsKPj4gLcKg
wqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+PiArwqDCoMKgwqDCoMKgwqAgZV9kYmcoIkZhaWxlZCB0
byBkaXNhYmxlIFVMUFxuIik7Cj4+IMKgwqDCoMKgwqAgfQo+PiDCoCDCoMKgwqDCoMKgIHJldF92
YWwgPSBody0+cGh5Lm9wcy5hY3F1aXJlKGh3KTsKPj4KPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4g
UGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
