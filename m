Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC173AFF2E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 10:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 597B44047B;
	Tue, 22 Jun 2021 08:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uvCsPT8FECrj; Tue, 22 Jun 2021 08:23:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 379684043B;
	Tue, 22 Jun 2021 08:23:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BC891BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 08:23:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED85F82C61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 08:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0-jj7ND_G7XN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jun 2021 08:23:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1697482C3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 08:23:18 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aeee3.dynamic.kabel-deutschland.de
 [95.90.238.227])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AC7C161EA192B;
 Tue, 22 Jun 2021 10:23:14 +0200 (CEST)
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20210608233517.3135522-1-jesse.brandeburg@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <43730a28-ccc6-1898-97b5-b4833038a425@molgen.mpg.de>
Date: Tue, 22 Jun 2021 10:23:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210608233517.3135522-1-jesse.brandeburg@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: add tracepoints
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
Cc: Ben Shelton <benjamin.h.shelton@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZXNzZSwKCgpBbSAwOS4wNi4yMSB1bSAwMTozNSBzY2hyaWViIEplc3NlIEJyYW5kZWJ1
cmc6Cj4gVGhpcyBwYXRjaCBpcyBtb2RlbGVkIGFmdGVyIG9uZSBieSBTY290dCBQZXRlcnNvbiBm
b3IgaTQwZS4KPiAKPiBBZGQgdHJhY2Vwb2ludHMgdG8gdGhlIGRyaXZlciwgdmlhIGEgbmV3IGZp
bGUgaWNlX3RyYWNlLmggYW5kIHNvbWUgbmV3Cj4gdHJhY2UgY2FsbHMgYWRkZWQgaW4gaW50ZXJl
c3RpbmcgcGxhY2VzIGluIHRoZSBkcml2ZXIuIEFkZCBzb21lIHRyYWNpbmcKPiBmb3IgRElNTElC
IHRvIGhlbHAgZGVidWcgaW50ZXJydXB0IG1vZGVyYXRpb24gcHJvYmxlbXMuCj4gCj4gUGVyZm9y
bWFuY2Ugc2hvdWxkIG5vdCBiZSBhZmZlY3RlZCwgYW5kIHRoaXMgY2FuIGJlIHZlcnkgdXNlZnVs
Cj4gZm9yIGRlYnVnZ2luZyBhbmQgYWRkaW5nIG5ldyB0cmFjZSBldmVudHMgdG8gcGF0aHMgaW4g
dGhlIGZ1dHVyZS4KPiAKPiBOb3RlIGVCUEYgcHJvZ3JhbXMgY2FuIGF0dGFjaCB0byB0aGVzZSBl
dmVudHMsIGFzIHdlbGwgYXMgcGVyZgo+IGNhbiBjb3VudCB0aGVtIHNpbmNlIHdlJ3JlIGF0dGFj
aGluZyB0byB0aGUgZXZlbnRzIHN1YnN5c3RlbQo+IGluIHRoZSBrZXJuZWwuCj4gCj4gQ28tZGV2
ZWxvcGVkLWJ5OiBCZW4gU2hlbHRvbiA8YmVuamFtaW4uaC5zaGVsdG9uQGludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBCZW4gU2hlbHRvbiA8YmVuamFtaW4uaC5zaGVsdG9uQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVs
LmNvbT4KPiAtLS0KPiBOT1RFOiBjaGVja3BhdGNoIHdpbGwgY29tcGxhaW4gYWJvdXQgdGhpcyBw
YXRjaCBkdWUgdG8gdGhlIG1hY3Jvcwo+IGRlZmluaW5nIHRoZSBuZXcgdHJhY2UgZnVuY3Rpb25h
bGl0eSBiZWluZyBmb3JtYXR0ZWQgZm9yIHJlYWRhYmlsaXR5Lgo+IAo+IFRlc3RpbmcgSGludHM6
Cj4gU2VlIHRoYXQgcGVyZm9ybWFuY2UgaXMgdW5hZmZlY3RlZCB3aGlsZSB0cmFjZXBvaW50cyBh
cmUgcHJlc2VudCBidXQKPiBkaXNhYmxlZCAoZGVmYXVsdCBzdGF0ZSkuIEVuYWJsZSB0aGVtIGFs
bCBhbmQgc2VlIHRoZXkgYXBwZWFyIGluCj4gL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy90cmFj
ZSB3aGVuIGV4ZXJjaXNlZCwgYW5kIGFmdGVyICdtYWtlIGluc3RhbGwnCj4geW91IGNhbiBzZWUg
dGhlIGV2ZW50cyBpbiBwZXJmIGxpc3QuCj4gCj4gV2hlbiBkaXNhYmxlZCwgYSB0cmFjZXBvaW50
IHJlZHVjZXMgdG8gYSA1LWJ5dGUgbm8tb3AuIFdoZW4gZW5hYmxlZCwKPiB0aGF0IGNvZGUgaXMg
cGF0Y2hlZCB0byBqdW1wIHRvIHRoZSB0cmFjZXBvaW50IGNsYXVzZSwgd2hpY2ggaXMgbG9jYXRl
ZAo+IHNvbWV3aGVyZSBuZWFyYnkuICBTZWUgaW5jbHVkZS9saW51eC9qdW1wX2xhYmVsLmggZm9y
IGluZm8gaW4gc3RhdGljCj4ga2V5cywgYW5kIHNhbXBsZXMvdHJhY2UtZXZlbnRzL3RyYWNlLWV2
ZW50cy1zYW1wbGVzLltjaF0gZm9yIGluZm8gb24gdGhlCj4gdHJhY2UgZXZlbnRzLgo+IAo+IFRv
IHRlc3QgdHJhY2Vwb2ludHM6Cj4gaW5zbW9kIGljZSBhbmQgYnJpbmcgdXAgYSBsaW5rCj4gY2Qg
L3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZwo+IGVjaG8gPiB0cmFjZQo+IGVjaG8gMSA+IGV2ZW50
cy9pY2UvZW5hYmxlCj4gc2VuZCBzb21ldGhpbmcgb3ZlciBpY2UKPiBjYXQgdHJhY2UKPiBlY2hv
IDAgPiBldmVudHMvaWNlL2VuYWJsZQoKSeKAmWQgcHV0IHRoYXQgZXhhbXBsZSBpbnRvIHRoZSBj
b21taXQgbWVzc2FnZS4KClvigKZdCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
