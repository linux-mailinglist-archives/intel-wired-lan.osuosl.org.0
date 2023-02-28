Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B95F6A5C32
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 16:44:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3C5F61183;
	Tue, 28 Feb 2023 15:44:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3C5F61183
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677599067;
	bh=YBYq8BYMRhpIjqvjv6WPFnXEqV2fiQiyyKA2eF/qCmk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J1amoMJQJkzu14Z9IlNN6Fy2KOQt9mpTkHaMFAXG55I/+/4FVF1rAJmRmcMcIIhT1
	 MIQ4km7p3xGzqaFAQaLrcBWTVm2jbTVxVU+yCqT1ArtVkvt1tbcUO6z9r8IaG86T/q
	 nS/oiEuIoTt2LgvZzvlw+kR5zmnKAKAwYpVC321fE6VRToZLoOYR75Mx+6QJT98kBf
	 cki7jnYosJjhm30do7HNw4aymIUnd4JHkLd06pA72bIztG1Z3tYHKFOViaLX+La/OP
	 aXUMRgCV6YC7NpNUxCR91NAuZNIhNVH8HW1iI9JLgWuKw/I5qts6JinK/XH+t/2V5H
	 qLLrChcFeYBIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iPt8qMmCfIKb; Tue, 28 Feb 2023 15:44:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E076760DF0;
	Tue, 28 Feb 2023 15:44:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E076760DF0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A1C41BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 15:44:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F98C81F8A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 15:44:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F98C81F8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i4dv-wTNQ_fQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 15:44:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E06CB81E3A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E06CB81E3A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 15:44:19 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 93BD46244DF88;
 Tue, 28 Feb 2023 16:44:17 +0100 (CET)
Message-ID: <ae212a2d-1ed3-d0d6-7d3d-92f5353b52cd@molgen.mpg.de>
Date: Tue, 28 Feb 2023 16:44:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230228084915.2866564-1-kalyan.kodamagula@intel.com>
 <7d2b1ae3-2bec-1456-3df9-7fb04105c681@molgen.mpg.de>
 <afebb832-6216-6410-3974-5388c3fe7201@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <afebb832-6216-6410-3974-5388c3fe7201@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix implicit cast u32
 to u16
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
Cc: intel-wired-lan@lists.osuosl.org, Marcin Szycik <marcin.szycik@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBbGV4YW5kZXIsCgoKQW0gMjguMDIuMjMgdW0gMTY6MjEgc2NocmllYiBBbGV4YW5kZXIg
TG9iYWtpbjoKPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPgo+IERh
dGU6IFR1ZSwgMjggRmViIDIwMjMgMTE6MDE6MDAgKzAxMDAKCj4+IEFtIDI4LjAyLjIzIHVtIDA5
OjQ5IHNjaHJpZWIgS2FseWFuIEtvZGFtYWd1bGE6Cj4+PiBGcm9tOiBNYXJjaW4gU3p5Y2lrIDxt
YXJjaW4uc3p5Y2lrQGludGVsLmNvbT4KPj4+Cj4+PiBGaXggaW1wbGljaXQgY2FzdCBieSBjaGFu
Z2luZyBhcmd1bWVudCB0eXBlcyBvZiB0d28gZnVuY3Rpb25zIHRvIGNvcnJlY3QKPj4+IHR5cGVz
Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IE1hcmNpbiBTenljaWsgPG1hcmNpbi5zenljaWtAaW50
ZWwuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogS2FseWFuIEtvZGFtYWd1bGEgPGthbHlhbi5rb2Rh
bWFndWxhQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gIMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfZGRwLmMgfCA0ICsrLS0KPj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RkcC5jCj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZGRwLmMKPj4+IGluZGV4IGQ3MWVkMjEwZjljNC4uODMwZmE1M2I1ZTBh
IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZHAu
Ywo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZHAuYwo+Pj4g
QEAgLTcwMSwxNCArNzAxLDE0IEBAIHN0cnVjdCBpY2VfYnVmX2J1aWxkICppY2VfcGtnX2J1Zl9h
bGxvYyhzdHJ1Y3QKPj4+IGljZV9odyAqaHcpCj4+PiAgwqDCoMKgwqDCoCByZXR1cm4gYmxkOwo+
Pj4gIMKgIH0KPj4+ICDCoCAtc3RhdGljIGJvb2wgaWNlX2lzX2d0cF91X3Byb2ZpbGUodTE2IHBy
b2ZfaWR4KQo+Pj4gK3N0YXRpYyBib29sIGljZV9pc19ndHBfdV9wcm9maWxlKHUzMiBwcm9mX2lk
eCkKPj4+ICDCoCB7Cj4+PiAgwqDCoMKgwqDCoCByZXR1cm4gKHByb2ZfaWR4ID49IElDRV9QUk9G
SURfSVBWNl9HVFBVX1RFSUQgJiYKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgcHJvZl9pZHggPD0g
SUNFX1BST0ZJRF9JUFY2X0dUUFVfSVBWNl9UQ1BfSU5ORVIpIHx8Cj4+PiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHByb2ZfaWR4ID09IElDRV9QUk9GSURfSVBWNF9HVFBVX1RFSUQ7Cj4+PiAg
wqAgfQo+Pj4gIMKgIC1zdGF0aWMgYm9vbCBpY2VfaXNfZ3RwX2NfcHJvZmlsZSh1MTYgcHJvZl9p
ZHgpCj4+PiArc3RhdGljIGJvb2wgaWNlX2lzX2d0cF9jX3Byb2ZpbGUodTMyIHByb2ZfaWR4KQo+
Pj4gIMKgIHsKPj4+ICDCoMKgwqDCoMKgIHN3aXRjaCAocHJvZl9pZHgpIHsKPj4+ICDCoMKgwqDC
oMKgIGNhc2UgSUNFX1BST0ZJRF9JUFY0X0dUUENfVEVJRDoKPj4KPj4gSXMgdGhlcmUgYSByZWFz
b24gdG8gbGltaXQgdGhlIGxlbmd0aCBvciBjb3VsZCBgdW5zaWduZWQgaW50YCBiZSB1c2VkPwo+
IAo+IFlvdSBtZWFuIHRoZSBzdHJpbmcgbGVuZ3RoPyBCdXQgd2hhdCdzIHRoZSBwb2ludCBvZiB1
c2luZyBgdW5zaWduZWQgaW50YAo+IGlmIHdlIGhhdmUgc2hvcnRlciBhbmQgbW9yZSBlbGVnYW50
IGB1MzJgLCB3aGljaCBhdCB0aGUgc2FtZSB0aW1lCj4gZXhwbGljaXRseSBzdGF0ZXMgaXRzIHdp
ZHRoPyA6KQo+IEkndmUgYmVlbiBlbmNvdXJhZ2luZyBsb3RzIG8nIGZvbGtzIHRvIHByZWZlciB0
aGUgInNob3J0aWVzIiB3aGVyZQo+IHBvc3NpYmxlIChJIGJhc2ljYWxseSBvbmx5IHVzZSB7LHVu
c2lnbmVkfSBsb25nIGZyb20gdGhlICJiYXNpYyIgdHlwZXMpCj4gYW5kIG5vdyB0aGlzIDpwIEkn
bSBub3Qgc2F5aW5nIGFueSBvcGluaW9uIGlzIGNvcnJlY3Qgb3IgaW5jb3JyZWN0IGhlcmUsCj4g
c2luY2UgaXQncyBhIG1hdHRlciBvZiB0YXN0ZSBtb3N0bHkgSSBiZWxpZXZlLCBqdXN0IGN1cmlv
dXMuCgpJZiBpbiBmdXR1cmUgYXJjaGl0ZWN0dXJlcywgdGhlIHNtYWxsZXN0IG5hdGl2ZSBzaXpl
IGlzIDY0IGJpdCwgdGhhbiAKdW5uZWNlc3NhcmlseSB0cnVuY2F0aW5nIHRoZSBsZW5ndGgsIHdv
dWxkIGNyZWF0ZSBub3Qgb3B0aW1hbCBjb2RlLiAKSnVkZ2luZyBmcm9tIHRoZSBkZWZpbmVkIG1h
Y3JvcywgYHByb2ZfaWR4YCBhbHNvIGRvZXMgbm90IG5lZWQgdG8gYmUgMzIgCmJpdCB3aWRlLiAo
QnV0IGl04oCZcyBhbGwgbWljcm9vcHRpbWl6YXRpb24uKQoKCktpbmQgcmVnYXJkcywKClBhdWwK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
