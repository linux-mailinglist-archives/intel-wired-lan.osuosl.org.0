Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2C5197F33
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2020 17:03:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3D2A520506;
	Mon, 30 Mar 2020 15:03:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdfiqYU7EWqV; Mon, 30 Mar 2020 15:03:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9130922E96;
	Mon, 30 Mar 2020 15:03:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 136A21BF399
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 14:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0E72B8857C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 14:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tAyCJMMBqC+w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 14:07:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0C7F584E32
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 14:07:59 +0000 (UTC)
Received: from [222.129.50.174] (helo=localhost.localdomain)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <aaron.ma@canonical.com>)
 id 1jH6hD-0003zg-Tx; Wed, 25 Mar 2020 14:07:53 +0000
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
 <899895bc-fb88-a97d-a629-b514ceda296d@canonical.com>
 <750ad0ad-816a-5896-de2f-7e034d2a2508@intel.com>
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
Message-ID: <2b817a13-9fd8-4181-fed5-e55f7b4365ca@canonical.com>
Date: Wed, 25 Mar 2020 22:07:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <750ad0ad-816a-5896-de2f-7e034d2a2508@intel.com>
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

T24gMy8yNS8yMCA5OjU4IFBNLCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+IE9uIDMvMjUvMjAyMCAw
ODo0MywgQWFyb24gTWEgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDMvMjUvMjAgMjozNiBQTSwgTmVmdGlu
LCBTYXNoYSB3cm90ZToKPj4+IE9uIDMvMjUvMjAyMCAwNjoxNywgS2FpLUhlbmcgRmVuZyB3cm90
ZToKPj4+PiBIaSBBYXJvbiwKPj4+Pgo+Pj4+PiBPbiBNYXIgMjQsIDIwMjAsIGF0IDAzOjE2LCBB
YXJvbiBNYSA8YWFyb24ubWFAY2Fub25pY2FsLmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IE1FIHRh
a2VzIDIrIHNlY29uZHMgdG8gdW4tY29uZmlndXJlIFVMUCBtb2RlIGRvbmUgYWZ0ZXIgcmVzdW1l
Cj4+Pj4+IGZyb20gczJpZGxlIG9uIHNvbWUgVGhpbmtQYWQgbGFwdG9wcy4KPj4+Pj4gV2l0aG91
dCBlbm91Z2ggd2FpdCwgcmVzZXQgYW5kIHJlLWluaXQgd2lsbCBmYWlsIHdpdGggZXJyb3IuCj4+
Pj4KPj4+PiBUaGFua3MsIHRoaXMgcGF0Y2ggc29sdmVzIHRoZSBpc3N1ZS4gV2UgY2FuIGRyb3Ag
dGhlIERNSSBxdWlyayBpbgo+Pj4+IGZhdm9yIG9mIHRoaXMgcGF0Y2guCj4+Pj4KPj4+Pj4KPj4+
Pj4gRml4ZXM6IGYxNWJiNmRkZTczOGNjOGZhMCAoImUxMDAwZTogQWRkIHN1cHBvcnQgZm9yIFMw
aXgiKQo+Pj4+PiBCdWdMaW5rOiBodHRwczovL2J1Z3MubGF1bmNocGFkLm5ldC9idWdzLzE4NjU1
NzAKPj4+Pj4gU2lnbmVkLW9mZi1ieTogQWFyb24gTWEgPGFhcm9uLm1hQGNhbm9uaWNhbC5jb20+
Cj4+Pj4+IC0tLQo+Pj4+PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxh
bi5jIHwgNCArKy0tCj4+Pj4+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+Pj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL2ljaDhsYW4uYwo+Pj4+PiBpbmRleCBiNDEzNWM1MGU5MDUuLjE0N2IxNWEyZjhiMyAx
MDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhs
YW4uYwo+Pj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxh
bi5jCj4+Pj4+IEBAIC0xMjQwLDkgKzEyNDAsOSBAQCBzdGF0aWMgczMyIGUxMDAwX2Rpc2FibGVf
dWxwX2xwdF9scChzdHJ1Y3QKPj4+Pj4gZTEwMDBfaHcgKmh3LCBib29sIGZvcmNlKQo+Pj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXczMihIMk1FLCBtYWNfcmVnKTsKPj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoCB9Cj4+Pj4+Cj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCAvKiBQb2xsIHVwIHRvIDMw
MG1zZWMgZm9yIE1FIHRvIGNsZWFyIFVMUF9DRkdfRE9ORS4gKi8KPj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIC8qIFBvbGwgdXAgdG8gMi41c2VjIGZvciBNRSB0byBjbGVhciBVTFBfQ0ZHX0RPTkUuICov
Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgd2hpbGUgKGVyMzIoRldTTSkgJiBFMTAwMF9GV1NNX1VM
UF9DRkdfRE9ORSkgewo+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoaSsrID09IDMw
KSB7Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChpKysgPT0gMjUwKSB7Cj4+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldF92YWwgPSAtRTEwMDBfRVJSX1BI
WTsKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4KPj4+PiBUaGUgcmV0dXJuIHZhbHVlIHdh
cyBub3QgY2F1Z2h0IGJ5IHRoZSBjYWxsZXIsIHNvIHRoZSBlcnJvciBlbmRzIHVwCj4+Pj4gdW5u
b3RpY2VkLgo+Pj4+IE1heWJlIGxldCB0aGUgY2FsbGVyIGNoZWNrIHRoZSByZXR1cm4gdmFsdWUg
b2YKPj4+PiBlMTAwMF9kaXNhYmxlX3VscF9scHRfbHAoKT8KPj4+Pgo+Pj4+IEthaS1IZW5nCj4+
PiBIZWxsbyBLYWktSGVuZyBhbmQgQWFyb24sCj4+PiBJIGEgYml0IGNvbmZ1c2VkLiBJbiBvdXIg
cHJldmlvdXMgY29udmVyc2F0aW9uIHlvdSB0b2xkIE1FIG5vdCBydW5uaW5nLgo+Pj4gbGV0IG1l
IHNoaW1taW5nIGluLiBJbmNyZWFzaW5nIGRlbGF5IHdvbid0IGJlIHNvbHZlIHRoZSBwcm9ibGVt
IGFuZCBqdXN0Cj4+PiBtYXNrIGl0LiBXZSBuZWVkIHRvIHVuZGVyc3RhbmQgd2h5IE1FIHRha2Ug
dG9vIG11Y2ggdGltZS4gV2hhdCBpcwo+Pj4gcHJvYmxlbSB3aXRoIHRoaXMgc3BlY2lmaWMgc3lz
dGVtPwo+Pj4gU28sIGJhc2ljYWxseSBubyBNRSBzeXN0ZW0gc2hvdWxkIHdvcmtzIGZvciB5b3Uu
Cj4+Cj4+IFNvbWUgbGFwdG9wcyBNRSB3b3JrIHRoYXQncyB3aHkgb25seSByZXByb2R1Y2UgaXNz
dWUgb24gc29tZSBsYXB0b3BzLgo+PiBJbiB0aGlzIGlzc3VlIGkyMTkgaXMgY29udHJvbGxlZCBi
eSBNRS4KPj4KPiBXaG8gY2FuIGV4cGxhaW4gLSB3aHkgTUUgcmVxdWlyZWQgdG9vIG11Y2ggdGlt
ZSBvbiB0aGlzIHN5c3RlbT8KPiBQcm9iYWJseSBuZWVkIHdvcmsgd2l0aCBNRS9CSU9TIHZlbmRv
ciBhbmQgdW5kZXJzdGFuZCBpdC4KPiBEZWxheSB3aWxsIGp1c3QgbWFzayB0aGUgcmVhbCBwcm9i
bGVtIC0gd2UgbmVlZCB0byBmaW5kIHJvb3QgY2F1c2UuCgpJTUhPLCBpdCBzaG91bGQgYmUgTUUg
Y2hlY2sgdGhlIGxpbmsgc3RhdHVzIHdoZW4gbGluayBkaXNjb25uZWN0ZWQsCnRoYXQncyB3aHkg
UG9sbCB1cCB0byA1IHNlY29uZHMgZm9yIENhYmxlIERpc2Nvbm5lY3RlZCBpbmRpY2F0aW9uIHdo
ZW4KZW5hYmxlIFVMUC4KClRoZSByZWFzb24gaXMgc2FtZSBmb3IgYm90aCBkaXNhYmxlL2VuYWJs
ZSBVTFAgbW9kZS4KCkkgYWdyZWUgdG8gYXNrIE1FIHRvIGNoZWNrIGl0IHRvby4KClJlZ2FyZHMs
CkFhcm9uCgo+PiBRdWlyayBpcyBvbmx5IGZvciAxIG1vZGVsIHR5cGUuIEJ1dCBpc3N1ZSBpcyBy
ZXByb2R1Y2VkIGJ5IG1vcmUgbW9kZWxzLgo+PiBTbyBpdCB3b24ndCB3b3JrLgo+Pgo+PiBSZWdh
cmQsCj4+IEFhcm9uCj4+Cj4+Pgo+Pj4gTWVhbndoaWxlIEkgcHJlZmVyIGtlZXAgRE1JIHF1aXJr
Lgo+Pj4gVGhhbmtzLAo+Pj4gU2FzaGEKPj4+Pgo+Pj4+PiAtLcKgCj4+Pj4+IDIuMTcuMQo+Pj4+
Pgo+Pj4+Cj4+Pgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
