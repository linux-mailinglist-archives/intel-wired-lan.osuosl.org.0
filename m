Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8675365D3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 18:17:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A0AD40260;
	Fri, 27 May 2022 16:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i-6YPAIW4e5v; Fri, 27 May 2022 16:17:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F13FF41337;
	Fri, 27 May 2022 16:17:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F210B1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED9A0408EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yn3ErBIYPa-5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 16:17:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AADDF408E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653668244; x=1685204244;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=XlUri9AgDD324wp1IJOBBeC1yPW/lais5U0Sh/R6LSA=;
 b=N5PNDJ1xy1M8D8rxMGzYERBWWKRy8KrRRsIm5adw4BbTTHKmX95+E8TI
 JsY9Ehptv+E1URtKWuWQNgS/cPCM6rXbrZNqcFKZZGBvfaNkC/VtyvPDv
 71/BP0GV16woVQuFpK3TbwCSnrakrK6Gu+oMV5XLBvf6STZxnrpr++Xvc
 1ZBLxvWUSfj/+Nx4NYiZpvjybKFHBT+ju9+pnI55FMJwKp+79pYYYp4KI
 w3WHzPWNwzUQuivKuXRCtCy6h7a4x1BG3jxIcARA30WlurKpeGGEtoQv8
 ixgiPnwt1NZoI9Zdy+FSHKbfSylttcOB49hLfKYm0DsUzPKJVtAb42+K4 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="256588682"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="256588682"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 09:17:23 -0700
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="603971218"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.249.150.185])
 ([10.249.150.185])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 09:17:16 -0700
Message-ID: <4f8d2b55-ed19-206e-3171-efff363dc8d4@linux.intel.com>
Date: Fri, 27 May 2022 18:17:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220527115131.7413-1-marcin.szycik@linux.intel.com>
 <6b4a6f01-dfde-e047-066f-15098633113c@molgen.mpg.de>
 <3fab057b-ef21-3bda-6535-a19e5c4c96ec@linux.intel.com>
 <c808f098-2d17-db32-6106-8c75d5116508@molgen.mpg.de>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <c808f098-2d17-db32-6106-8c75d5116508@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: disable stripping in default
 VSI ctx
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyNy1NYXktMjIgMTU6MTEsIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgTWFyY2luLgo+
IAo+IAo+IEFtIDI3LjA1LjIyIHVtIDE1OjAxIHNjaHJpZWIgTWFyY2luIFN6eWNpazoKPiAKPj4g
T24gMjctTWF5LTIyIDE0OjE1LCBQYXVsIE1lbnplbCB3cm90ZToKPiAKPj4+IEFtIDI3LjA1LjIy
IHVtIDEzOjUxIHNjaHJpZWIgTWFyY2luIFN6eWNpazoKPj4+PiBGcm9tOiBNaWNoYWwgU3dpYXRr
b3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+Cj4+Pj4KPj4+PiBJbiBj
YXNlIHdoZW4gZHJpdmVyIGlzIGluIGVzd2l0Y2ggbW9kZSwgaGF2aW5nIFZMQU4gc3RyaXBwaW5n
IGVuYWJsZWQKPj4+PiBjYXVzZXMgZmFpbHVyZSBpbiBjb21tdW5pY2F0aW9uLiBBbGwgVkxBTiBj
b25maWd1cmF0aW9uIGNvbW1hbmRzIGFyZQo+Pj4+IGJsb2NrZWQsIGJlY2F1c2Ugb2YgdGhhdCBW
RiBkcml2ZXIgY2FuJ3QgZGlzYWJsZSBWTEFOIHN0cmlwcGluZyBhdAo+Pj4KPj4+IHMvYmxvY2tl
ZCwgYmVjYXVzZS9ibG9ja2VkLiBCZWNhdXNlLwo+Pgo+PiBTb3JyeSwgYnV0IEkgZG9uJ3QgdW5k
ZXJzdGFuZCB3aGF0IHRvIGNoYW5nZSBoZXJlLiBDb3VsZCB5b3UgZXhwbGFpbiBtb3JlIGNsZWFy
bHk/Cj4gCj4gSSBhbSBzb3JyeSBmb3IgYmVpbmcgdW5jbGVhci4gSSB0aGluayBpdCBzaG91bGQg
YmUgdHdvIHNlbnRlbmNlcy4KCkFoLCBub3cgSSBzZWUgaXQncyBhIHNlZC1zdHlsZSBzdHJpbmcg
cmVwbGFjZS4gSSB3aWxsIHJlbWVtYmVyIHRoaXMgZm9yIGZ1dHVyZSBkaXNjdXNzaW9ucyA6KQoK
Pj4+PiBpbml0aWFsaXphdGlvbi4gSXQgbGVhZHMgdG8gdGhlIHNpdHVhdGlvbiB3aGVuIFZMQU4g
c3RyaXBwaW5nIG9uIFZGIFZTSQo+Pj4+IGlzIG9uLCBidXQgaW4ga2VybmVsIGl0IGlzIG9mZi4K
Pj4+Pgo+Pj4+IFRvIHByZXZlbnQgdGhpcywgc2V0IFZMQU4gc3RyaXBwaW5nIHRvIGRpc2FibGVk
IGluIFZTSSBpbml0aWFsaXphdGlvbi4KPj4+Cj4+PiBNYXliZTog4oCmLCBkaXNhYmxlIFZMQU4g
c3RyaXBwaW5nIGluIFZTSSBpbml0aWFsaXphdGlvbi4KPj4KPj4gU291bmRzIGdvb2QuCj4+Cj4+
Pj4gSXQgZG9lc24ndCBicmVhayBvdGhlciB1c2VjYXNlcywgYmVjYXVzZSBpdCBpcyBzZXQgYWNj
b3JkaW5nIHRvIGtlcm5lbAo+Pj4+IHNldHRpbmdzLgo+Pj4KPj4+IFBsZWFzZSBkb2N1bWVudCB5
b3VyIHRlc3Qgc2V0dXAuCj4+Cj4+IFdpbGwgcmVwcm9kdWN0aW9uIHN0ZXBzIGJlIGVub3VnaD8K
PiAKPiBZZXMsIHRoYXTigJlkIGJlIGdyZWF0LgoKSSdsbCBzZW5kIHYyIHByb2JhYmx5IG9uIE1v
bmRheS4gSSdtIHNvcnJ5IGZvciBkZWxheSwgYnV0IEkgaGF2ZSBhIGJpdCBvZiBhIHByb2JsZW0g
cmVwcm9kdWNpbmcgdGhpcyBpc3N1ZSwgYW5kIEkgZG9uJ3Qgd2FudCB0byBpbmNsdWRlIGEgcmVw
cm8gdGhhdCBkb2Vzbid0IGFjdHVhbGx5IHdvcmsgKE1pY2hhxYIgb3JpZ2luYWxseSB3b3JrZWQg
b24gdGhlIGZpeCwgYnV0IGhlIHdpbGwgYmUgdW5hdmFpbGFibGUgZm9yIHNvbWUgdGltZSkuCgpS
ZWdhcmRzLApNYXJjaW4KCj4+Pj4gRml4ZXM6IGYwOTkwMWFhNTU0YSAoImljZTogcmVtb3ZlIFZM
QU4gcmVwcmVzZW50b3Igc3BlY2lmaWMgb3BzIikKPj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwg
U3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+Cj4+Pj4gU2ln
bmVkLW9mZi1ieTogTWFyY2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20+
Cj4+Pj4gLS0tCj4+Pj4gwqDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xp
Yi5jIHwgMyArKysKPj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPj4+
Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xp
Yi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYwo+Pj4+IGluZGV4
IDcwOTYxYzAzNDNlNy4uYjI4ZmI4ZWFjZmZiIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMKPj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jCj4+Pj4gQEAgLTg4Nyw2ICs4ODcsOSBAQCBzdGF0aWMg
dm9pZCBpY2Vfc2V0X2RmbHRfdnNpX2N0eChzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0IGljZV92
c2lfY3R4ICpjdHh0KQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKElDRV9BUV9W
U0lfT1VURVJfVEFHX1ZMQU5fODEwMCA8PAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBJQ0VfQVFfVlNJX09VVEVSX1RBR19UWVBFX1MpICYKPj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIElDRV9BUV9WU0lfT1VURVJfVEFHX1RZUEVfTTsKPj4+PiArwqDCoMKgwqDC
oMKgwqAgY3R4dC0+aW5mby5vdXRlcl92bGFuX2ZsYWdzIHw9Cj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgRklFTERfUFJFUChJQ0VfQVFfVlNJX09VVEVSX1ZMQU5fRU1PREVfTSwKPj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElDRV9BUV9WU0lfT1VURVJfVkxB
Tl9FTU9ERV9OT1RISU5HKTsKPj4+PiDCoMKgwqDCoMKgwqAgfQo+Pj4+IMKgwqDCoMKgwqDCoCAv
KiBIYXZlIDE6MSBVUCBtYXBwaW5nIGZvciBib3RoIGluZ3Jlc3MvZWdyZXNzIHRhYmxlcyAqLwo+
Pj4+IMKgwqDCoMKgwqDCoCB0YWJsZSB8PSBJQ0VfVVBfVEFCTEVfVFJBTlNMQVRFKDAsIDApCj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPj4g
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
