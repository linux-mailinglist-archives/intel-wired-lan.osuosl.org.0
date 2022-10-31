Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E47876133D1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Oct 2022 11:39:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 765514042F;
	Mon, 31 Oct 2022 10:39:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 765514042F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667212781;
	bh=bb1OqJGeTx2HlpbXyP2BcmYVJQghtOlskfWoVHBZzoc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4S5+nvB9BfP4MaV4lAxcp6L2QptGPy+5c2XepD0GH9wmiD3XHBPOf2q+NM2aOwq9a
	 5X7X+TEaSXwAXrDJm9qm+7g02Jv573N/+Crr/2Dqg20ANxGuD4KpTiY84pNKjhDCXe
	 HrbZLckyzPM0rgI+xA6yIL2weUGQ2uiM3bubSlwv+7clgFprfe/b53Yk//C3A2kl/4
	 RM7EOQAe6Li+9T2FQqDkZS6Z4aiGIOiyyy9rolt5dp304R45BEE7DkTe+sxyWEebev
	 WMm/4zsZOdwhA7Ccqa4P1/WlK3frAW7Oy4YSZsZVgwR8IboJ2ZJZuAsoWltoFg4rfO
	 wjm/RkQU8gzgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dWCkQA7uPk9T; Mon, 31 Oct 2022 10:39:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1955F4031E;
	Mon, 31 Oct 2022 10:39:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1955F4031E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 99EB41BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 10:39:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F74A40493
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 10:39:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F74A40493
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eSfoQri86i_V for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Oct 2022 10:39:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7374140438
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7374140438
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 10:39:32 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2D86361EA1932;
 Mon, 31 Oct 2022 11:39:30 +0100 (CET)
Message-ID: <97f8dc77-3a65-fdfe-e262-b429bbd3a2d0@molgen.mpg.de>
Date: Mon, 31 Oct 2022 11:39:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
To: Andrii Staikov <andrii.staikov@intel.com>
References: <20221025072705.1270255-1-andrii.staikov@intel.com>
 <38508641-6127-97df-304f-c85477f2a9eb@molgen.mpg.de>
 <PH0PR11MB561179D94CEC04F62E96A51085309@PH0PR11MB5611.namprd11.prod.outlook.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <PH0PR11MB561179D94CEC04F62E96A51085309@PH0PR11MB5611.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix crash when rebuild
 failed in i40e_xdp_setup
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
Cc: SylwesterX Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBbmRyaWksCgoKQW0gMjYuMTAuMjIgdW0gMTY6MTkgc2NocmllYiBTdGFpa292LCBBbmRy
aWk6Cgo+IFRoYW5rIHlvdSBmb3IgdGhlIHJlc3BvbnNlIG9uIHRoZSBwYXRoLgo+IEkgaGF2ZSBh
IGZldyBxdWVzdGlvbnMgYWJvdXQgaXQKClRoYW5rIHlvdSBmb3IgeW91ciByZXNwb25zZS4KCj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBt
b2xnZW4ubXBnLmRlPgo+IFNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgMjUsIDIwMjIgMTA6NDEgQU0K
PiBUbzogU3RhaWtvdiwgQW5kcmlpIDxhbmRyaWkuc3RhaWtvdkBpbnRlbC5jb20+OyBEemllZHpp
dWNoLCBTeWx3ZXN0ZXJYIDxzeWx3ZXN0ZXJ4LmR6aWVkeml1Y2hAaW50ZWwuY29tPgo+IENjOiBp
bnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZwo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2ly
ZWQtbGFuXSBbUEFUQ0ggbmV0IHYxXSBpNDBlOiBGaXggY3Jhc2ggd2hlbiByZWJ1aWxkIGZhaWxl
ZCBpbiBpNDBlX3hkcF9zZXR1cAo+IAo+IERlYXIgQW5kcmlpLCBkZWFyIFN5bHdlc3RlciwKPiAK
PiAKPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPiBJIGhhdmUgYSBmZXcgcXVlc3Rpb25zIHRv
IHlvdXIgcmVzcG9uc2U6Cj4gCj4gMS4gSW4gdGhlIHN1bW1hcnkvdGl0bGUsIG1heWJlIHVzZTog
4oCmIHJlYnVpbGQgZmFpbHMg4oCmCj4gRG8geW91IG1lYW4gaW4gU3ViamVjdD8KClllcywgd2hl
biB0aGUgcGF0Y2ggaXMgc2VudCBhcyBhbiBlbWFpbCwgaXTigJlzIHRoZSBzdWJqZWN0IHRoZXJl
LCAKaW5jbHVkaW5nIHRoZSBsaXN0IGFuZCBvdGhlciB0YWdzIChbSW50ZWwtd2lyZWQtbGFuXSBb
UEFUQ0ggbmV0IHYxXSkuCgo+IDIuIFBsZWFzZSByZWZsb3cgZm9yIDc1IGNoYXJhY3RlcnMgcGVy
IGxpbmUuCj4gIEZyb20gd2hhdCBJIHNlZSwgbm9uZSBvZiB0aGUgbGluZXMgKGV4Y2VwdCBTdWJq
ZWN0IGFmdGVyIGNoYW5nZSwgaXQncyA3NiA6KSApLCBleGNlZWRzIDc1IGNoYXJhY3RlcnMgbGlt
aXQuIENvdWxkIHlvdSBzcGVjaWZ5IHdoYXQgeW91IG1lYW50LCBwbGVhc2U/CgpUaGUgbGluZXMg
aW4gdGhlIGJvZHkgYXJlIGJlbG93IDYwIGNoYXJhY3RlcnMsIG1ha2luZyBpdCB0b28gbmFycm93
IGluIApteSBvcGluaW9uLiBSZWZsb3dpbmcgZm9yIDc1IGNoYXJhY3RlcnMgYWxzbyBzYXZlcyBh
IGxpbmUuCgo+IDMuIFlvdXIgcXVlc3Rpb246IEhvdyBtdWNoIGxvbmdlciBkb2VzIHRoaXMgdGFr
ZT8KPiBBbnN3ZXI6IEl0IHNob3VsZG4ndCB0YWtlIGFueSBsb25nZXIgYWN0dWFsbHkgYXMgd2Ug
ZG8gbm90IGRvIHRoZQo+IHJlc2V0IGFuZCByZWJ1aWxkIGFueW1vcmUuIEl0IHNob3VsZCBiZSBh
IGJpdCBmYXN0ZXIgYnV0IGl0J3MgaGFyZCB0bwo+IHNheSBieSBob3cgbXVjaCBhcyBpdCBkZXBl
bmRzIG9uIGhhcmR3YXJlIHR5cGUsIHByZXNlbnQgY29uZmlndXJhdGlvbgo+IChob3cgbWFueSBW
RnMgYXJlIHNwYXduZWQpLCBldGMuIFNob3VsZCBJIHB1dCBpdCBzb21ld2hlcmUgaW4gdGhlCj4g
Y29tbWl0IG1lc3NhZ2U/CgpUaGFuayB5b3UgZm9yIHRoZSBleHBsYW5hdGlvbiwgSSBzaG91bGQg
aGF2ZSBzZWVuIHRoYXQgbXlzZWxmLiBBIHNtYWxsIApub3RlIG1pZ2h0IGJlIG5pY2UsIGJ1dCBJ
IGd1ZXNzIGl04oCZcyBub3QgbmVjZXNzYXJ5LgoKPiA0LiBQbGVhc2UsIHByb3ZpZGUgaW5mb3Jt
YXRpb24gaG93IHRvIHVzZSB0aGUgc2NyaXB0IHlvdSBtZW50aW9uZWQgYW5kIHdoYXQgaXQgZG9l
cz8KWW91IGJ1aWxkIHRoZSBvYmplY3QgZmlsZSBvbmNlIHdpdGggYGludCBpYCwgc2F2ZSBpdCBz
b21ld2hlcmUsIGFuZCB0aGVuIAp3aXRoIGB1bnNpZ25lZCBpYCwgYW5kIHByb3ZpZGUgYm90aCBm
aWxlcyB0byB0aGUgc2NyaXB0LgoKCktpbmQgcmVnYXJkcywKClBhdWwKCgpQUzogSXMgaXQgcG9z
c2libGUgZm9yIHlvdSB0byB1c2UgYW4gZW1haWwgY2xpZW50LCB3aGljaCBpcyBhYmxlIHRvIApx
dW90ZSBwcm9wZXJseT8gKEkga25vdywgeW91ciBjb21wYW55IGVtYWlsIGFjY291bnQgcHJvYmFi
bHkgbWFrZXMgdGhpcyAKaGFyZC4pCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
