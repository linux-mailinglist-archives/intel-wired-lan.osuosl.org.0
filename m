Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFD9192A9B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 14:58:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 251C7227FF;
	Wed, 25 Mar 2020 13:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1TB-S8vj89B0; Wed, 25 Mar 2020 13:58:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C7AE8220EC;
	Wed, 25 Mar 2020 13:58:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2753A1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 13:58:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DF7E8844E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 13:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AtOR121uCqxV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 13:58:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D0DCC88431
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 13:58:22 +0000 (UTC)
IronPort-SDR: ygbcrIZaImf5JOK9hFQS5GF3vAntu2Shwn+kjIgZK1LouxegMl1hVTY2rIB0JeutlQOivurCY0
 AEB2JUlB3TVQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 06:58:22 -0700
IronPort-SDR: o9zSkCT5hDK5XmHbZCnGADHqvotdopCLhW8E7HR5FuWibpPdWFbThBbapqlEXWRUKcXKKgDD7J
 sbLcFc/fPbFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,304,1580803200"; d="scan'208";a="235943153"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.229.188])
 ([10.214.229.188])
 by orsmga007.jf.intel.com with ESMTP; 25 Mar 2020 06:58:18 -0700
To: Aaron Ma <aaron.ma@canonical.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
 <899895bc-fb88-a97d-a629-b514ceda296d@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <750ad0ad-816a-5896-de2f-7e034d2a2508@intel.com>
Date: Wed, 25 Mar 2020 15:58:16 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <899895bc-fb88-a97d-a629-b514ceda296d@canonical.com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8yNS8yMDIwIDA4OjQzLCBBYXJvbiBNYSB3cm90ZToKPiAKPiAKPiBPbiAzLzI1LzIwIDI6
MzYgUE0sIE5lZnRpbiwgU2FzaGEgd3JvdGU6Cj4+IE9uIDMvMjUvMjAyMCAwNjoxNywgS2FpLUhl
bmcgRmVuZyB3cm90ZToKPj4+IEhpIEFhcm9uLAo+Pj4KPj4+PiBPbiBNYXIgMjQsIDIwMjAsIGF0
IDAzOjE2LCBBYXJvbiBNYSA8YWFyb24ubWFAY2Fub25pY2FsLmNvbT4gd3JvdGU6Cj4+Pj4KPj4+
PiBNRSB0YWtlcyAyKyBzZWNvbmRzIHRvIHVuLWNvbmZpZ3VyZSBVTFAgbW9kZSBkb25lIGFmdGVy
IHJlc3VtZQo+Pj4+IGZyb20gczJpZGxlIG9uIHNvbWUgVGhpbmtQYWQgbGFwdG9wcy4KPj4+PiBX
aXRob3V0IGVub3VnaCB3YWl0LCByZXNldCBhbmQgcmUtaW5pdCB3aWxsIGZhaWwgd2l0aCBlcnJv
ci4KPj4+Cj4+PiBUaGFua3MsIHRoaXMgcGF0Y2ggc29sdmVzIHRoZSBpc3N1ZS4gV2UgY2FuIGRy
b3AgdGhlIERNSSBxdWlyayBpbgo+Pj4gZmF2b3Igb2YgdGhpcyBwYXRjaC4KPj4+Cj4+Pj4KPj4+
PiBGaXhlczogZjE1YmI2ZGRlNzM4Y2M4ZmEwICgiZTEwMDBlOiBBZGQgc3VwcG9ydCBmb3IgUzBp
eCIpCj4+Pj4gQnVnTGluazogaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvYnVncy8xODY1NTcw
Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQWFyb24gTWEgPGFhcm9uLm1hQGNhbm9uaWNhbC5jb20+Cj4+
Pj4gLS0tCj4+Pj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyB8
IDQgKystLQo+Pj4+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL2ljaDhsYW4uYwo+Pj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2lj
aDhsYW4uYwo+Pj4+IGluZGV4IGI0MTM1YzUwZTkwNS4uMTQ3YjE1YTJmOGIzIDEwMDY0NAo+Pj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+PiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+Pj4gQEAg
LTEyNDAsOSArMTI0MCw5IEBAIHN0YXRpYyBzMzIgZTEwMDBfZGlzYWJsZV91bHBfbHB0X2xwKHN0
cnVjdAo+Pj4+IGUxMDAwX2h3ICpodywgYm9vbCBmb3JjZSkKPj4+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBldzMyKEgyTUUsIG1hY19yZWcpOwo+Pj4+ICDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4K
Pj4+PiAtwqDCoMKgwqDCoMKgwqAgLyogUG9sbCB1cCB0byAzMDBtc2VjIGZvciBNRSB0byBjbGVh
ciBVTFBfQ0ZHX0RPTkUuICovCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIC8qIFBvbGwgdXAgdG8gMi41
c2VjIGZvciBNRSB0byBjbGVhciBVTFBfQ0ZHX0RPTkUuICovCj4+Pj4gIMKgwqDCoMKgwqDCoMKg
IHdoaWxlIChlcjMyKEZXU00pICYgRTEwMDBfRldTTV9VTFBfQ0ZHX0RPTkUpIHsKPj4+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoaSsrID09IDMwKSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaWYgKGkrKyA9PSAyNTApIHsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJldF92YWwgPSAtRTEwMDBfRVJSX1BIWTsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+
Cj4+PiBUaGUgcmV0dXJuIHZhbHVlIHdhcyBub3QgY2F1Z2h0IGJ5IHRoZSBjYWxsZXIsIHNvIHRo
ZSBlcnJvciBlbmRzIHVwCj4+PiB1bm5vdGljZWQuCj4+PiBNYXliZSBsZXQgdGhlIGNhbGxlciBj
aGVjayB0aGUgcmV0dXJuIHZhbHVlIG9mCj4+PiBlMTAwMF9kaXNhYmxlX3VscF9scHRfbHAoKT8K
Pj4+Cj4+PiBLYWktSGVuZwo+PiBIZWxsbyBLYWktSGVuZyBhbmQgQWFyb24sCj4+IEkgYSBiaXQg
Y29uZnVzZWQuIEluIG91ciBwcmV2aW91cyBjb252ZXJzYXRpb24geW91IHRvbGQgTUUgbm90IHJ1
bm5pbmcuCj4+IGxldCBtZSBzaGltbWluZyBpbi4gSW5jcmVhc2luZyBkZWxheSB3b24ndCBiZSBz
b2x2ZSB0aGUgcHJvYmxlbSBhbmQganVzdAo+PiBtYXNrIGl0LiBXZSBuZWVkIHRvIHVuZGVyc3Rh
bmQgd2h5IE1FIHRha2UgdG9vIG11Y2ggdGltZS4gV2hhdCBpcwo+PiBwcm9ibGVtIHdpdGggdGhp
cyBzcGVjaWZpYyBzeXN0ZW0/Cj4+IFNvLCBiYXNpY2FsbHkgbm8gTUUgc3lzdGVtIHNob3VsZCB3
b3JrcyBmb3IgeW91Lgo+IAo+IFNvbWUgbGFwdG9wcyBNRSB3b3JrIHRoYXQncyB3aHkgb25seSBy
ZXByb2R1Y2UgaXNzdWUgb24gc29tZSBsYXB0b3BzLgo+IEluIHRoaXMgaXNzdWUgaTIxOSBpcyBj
b250cm9sbGVkIGJ5IE1FLgo+IApXaG8gY2FuIGV4cGxhaW4gLSB3aHkgTUUgcmVxdWlyZWQgdG9v
IG11Y2ggdGltZSBvbiB0aGlzIHN5c3RlbT8KUHJvYmFibHkgbmVlZCB3b3JrIHdpdGggTUUvQklP
UyB2ZW5kb3IgYW5kIHVuZGVyc3RhbmQgaXQuCkRlbGF5IHdpbGwganVzdCBtYXNrIHRoZSByZWFs
IHByb2JsZW0gLSB3ZSBuZWVkIHRvIGZpbmQgcm9vdCBjYXVzZS4KPiBRdWlyayBpcyBvbmx5IGZv
ciAxIG1vZGVsIHR5cGUuIEJ1dCBpc3N1ZSBpcyByZXByb2R1Y2VkIGJ5IG1vcmUgbW9kZWxzLgo+
IFNvIGl0IHdvbid0IHdvcmsuCj4gCj4gUmVnYXJkLAo+IEFhcm9uCj4gCj4+Cj4+IE1lYW53aGls
ZSBJIHByZWZlciBrZWVwIERNSSBxdWlyay4KPj4gVGhhbmtzLAo+PiBTYXNoYQo+Pj4KPj4+PiAt
LSAKPj4+PiAyLjE3LjEKPj4+Pgo+Pj4KPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
