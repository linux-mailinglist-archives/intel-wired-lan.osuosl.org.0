Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB50D197F32
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2020 17:03:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 538ED20130;
	Mon, 30 Mar 2020 15:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CR5Dj2sYAdoX; Mon, 30 Mar 2020 15:03:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2D25120770;
	Mon, 30 Mar 2020 15:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C28011BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BE4A384D56
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wz92nA1kSEee for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 06:43:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DCDAE84CC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:43:50 +0000 (UTC)
Received: from [222.129.50.174] (helo=[192.168.1.33])
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <aaron.ma@canonical.com>)
 id 1jGzlS-0007i8-6Z; Wed, 25 Mar 2020 06:43:47 +0000
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
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
Message-ID: <899895bc-fb88-a97d-a629-b514ceda296d@canonical.com>
Date: Wed, 25 Mar 2020 14:43:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 30 Mar 2020 15:03:35 +0000
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>, rex.tsai@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAzLzI1LzIwIDI6MzYgUE0sIE5lZnRpbiwgU2FzaGEgd3JvdGU6Cj4gT24gMy8yNS8yMDIw
IDA2OjE3LCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+PiBIaSBBYXJvbiwKPj4KPj4+IE9uIE1hciAy
NCwgMjAyMCwgYXQgMDM6MTYsIEFhcm9uIE1hIDxhYXJvbi5tYUBjYW5vbmljYWwuY29tPiB3cm90
ZToKPj4+Cj4+PiBNRSB0YWtlcyAyKyBzZWNvbmRzIHRvIHVuLWNvbmZpZ3VyZSBVTFAgbW9kZSBk
b25lIGFmdGVyIHJlc3VtZQo+Pj4gZnJvbSBzMmlkbGUgb24gc29tZSBUaGlua1BhZCBsYXB0b3Bz
Lgo+Pj4gV2l0aG91dCBlbm91Z2ggd2FpdCwgcmVzZXQgYW5kIHJlLWluaXQgd2lsbCBmYWlsIHdp
dGggZXJyb3IuCj4+Cj4+IFRoYW5rcywgdGhpcyBwYXRjaCBzb2x2ZXMgdGhlIGlzc3VlLiBXZSBj
YW4gZHJvcCB0aGUgRE1JIHF1aXJrIGluCj4+IGZhdm9yIG9mIHRoaXMgcGF0Y2guCj4+Cj4+Pgo+
Pj4gRml4ZXM6IGYxNWJiNmRkZTczOGNjOGZhMCAoImUxMDAwZTogQWRkIHN1cHBvcnQgZm9yIFMw
aXgiKQo+Pj4gQnVnTGluazogaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvYnVncy8xODY1NTcw
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBYXJvbiBNYSA8YWFyb24ubWFAY2Fub25pY2FsLmNvbT4KPj4+
IC0tLQo+Pj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyB8IDQg
KystLQo+Pj4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2lj
aDhsYW4uYwo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5j
Cj4+PiBpbmRleCBiNDEzNWM1MGU5MDUuLjE0N2IxNWEyZjhiMyAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+IEBAIC0xMjQwLDkgKzEy
NDAsOSBAQCBzdGF0aWMgczMyIGUxMDAwX2Rpc2FibGVfdWxwX2xwdF9scChzdHJ1Y3QKPj4+IGUx
MDAwX2h3ICpodywgYm9vbCBmb3JjZSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXczMihI
Mk1FLCBtYWNfcmVnKTsKPj4+IMKgwqDCoMKgwqDCoMKgIH0KPj4+Cj4+PiAtwqDCoMKgwqDCoMKg
wqAgLyogUG9sbCB1cCB0byAzMDBtc2VjIGZvciBNRSB0byBjbGVhciBVTFBfQ0ZHX0RPTkUuICov
Cj4+PiArwqDCoMKgwqDCoMKgwqAgLyogUG9sbCB1cCB0byAyLjVzZWMgZm9yIE1FIHRvIGNsZWFy
IFVMUF9DRkdfRE9ORS4gKi8KPj4+IMKgwqDCoMKgwqDCoMKgIHdoaWxlIChlcjMyKEZXU00pICYg
RTEwMDBfRldTTV9VTFBfQ0ZHX0RPTkUpIHsKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChpKysgPT0gMzApIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChpKysgPT0gMjUw
KSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0X3ZhbCA9IC1FMTAwMF9F
UlJfUEhZOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+Cj4+IFRoZSByZXR1cm4gdmFsdWUgd2FzIG5vdCBj
YXVnaHQgYnkgdGhlIGNhbGxlciwgc28gdGhlIGVycm9yIGVuZHMgdXAKPj4gdW5ub3RpY2VkLgo+
PiBNYXliZSBsZXQgdGhlIGNhbGxlciBjaGVjayB0aGUgcmV0dXJuIHZhbHVlIG9mCj4+IGUxMDAw
X2Rpc2FibGVfdWxwX2xwdF9scCgpPwo+Pgo+PiBLYWktSGVuZwo+IEhlbGxvIEthaS1IZW5nIGFu
ZCBBYXJvbiwKPiBJIGEgYml0IGNvbmZ1c2VkLiBJbiBvdXIgcHJldmlvdXMgY29udmVyc2F0aW9u
IHlvdSB0b2xkIE1FIG5vdCBydW5uaW5nLgo+IGxldCBtZSBzaGltbWluZyBpbi4gSW5jcmVhc2lu
ZyBkZWxheSB3b24ndCBiZSBzb2x2ZSB0aGUgcHJvYmxlbSBhbmQganVzdAo+IG1hc2sgaXQuIFdl
IG5lZWQgdG8gdW5kZXJzdGFuZCB3aHkgTUUgdGFrZSB0b28gbXVjaCB0aW1lLiBXaGF0IGlzCj4g
cHJvYmxlbSB3aXRoIHRoaXMgc3BlY2lmaWMgc3lzdGVtPwo+IFNvLCBiYXNpY2FsbHkgbm8gTUUg
c3lzdGVtIHNob3VsZCB3b3JrcyBmb3IgeW91LgoKU29tZSBsYXB0b3BzIE1FIHdvcmsgdGhhdCdz
IHdoeSBvbmx5IHJlcHJvZHVjZSBpc3N1ZSBvbiBzb21lIGxhcHRvcHMuCkluIHRoaXMgaXNzdWUg
aTIxOSBpcyBjb250cm9sbGVkIGJ5IE1FLgoKUXVpcmsgaXMgb25seSBmb3IgMSBtb2RlbCB0eXBl
LiBCdXQgaXNzdWUgaXMgcmVwcm9kdWNlZCBieSBtb3JlIG1vZGVscy4KU28gaXQgd29uJ3Qgd29y
ay4KClJlZ2FyZCwKQWFyb24KCj4gCj4gTWVhbndoaWxlIEkgcHJlZmVyIGtlZXAgRE1JIHF1aXJr
Lgo+IFRoYW5rcywKPiBTYXNoYQo+Pgo+Pj4gLS3CoAo+Pj4gMi4xNy4xCj4+Pgo+Pgo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
