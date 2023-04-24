Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A746ED519
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 21:08:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BEA5813D6;
	Mon, 24 Apr 2023 19:08:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BEA5813D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682363330;
	bh=rjQ58psUBvVvcYcwXxLo+nKbE6OG1H93JlDxuca1mq0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rXobxKzbtx/EtSs7AsWteEKVtd3vMtfRun5dsMgoxRQl06rwTvd2hwD+Xv+k/Q+8M
	 459q/WRm1CUlzM+5EGr5fe9GSUReYrH76IJHvhO+ZyzvBHpRVWm2xO+S7DZaIFG82N
	 fyI0ITXhNy2u2pRvOwYd38NNWT4vwxsUPgGVA4XaTu3CJxpMlMt1PGfTun1dudlpZD
	 JoTJlHVeXmZ1rT9KzKPlQ7RKqNaWtmNgfl65NXzN2J+JvxTngo6Ns9aKjyRcowApxY
	 8QfuFRZxPE6MEcpTy5z671Z0nl2H8dT6yq+Mhkof8O9xVxehLkUHgy8aq8hea+P3a1
	 8DLdTV2+hEF7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FuCgB2Xlh3qS; Mon, 24 Apr 2023 19:08:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38B7380EC4;
	Mon, 24 Apr 2023 19:08:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38B7380EC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80F7A1BF487
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 19:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5818F607A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 19:08:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5818F607A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-hP9yJStiHE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Apr 2023 19:08:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADEC360810
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADEC360810
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 19:08:40 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aebe8.dynamic.kabel-deutschland.de
 [95.90.235.232])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 31FC161E4052B;
 Mon, 24 Apr 2023 21:08:38 +0200 (CEST)
Message-ID: <4c498ee9-9b8f-425c-2749-d92fb081befc@molgen.mpg.de>
Date: Mon, 24 Apr 2023 21:08:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: xiaoyan.gong@intel.com
References: <20230423075312.544244-1-xiaoyan.gong@intel.com>
 <b6a13b7f-b140-114b-781f-16299ec3379c@molgen.mpg.de>
In-Reply-To: <b6a13b7f-b140-114b-781f-16299ec3379c@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: enable multiple TXSTMP
 registers reporting TX timestamp.
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W1Jlc2VudCB3aXRoIGNvcnJlY3RlZCBhZGRyZXNzIGxpbnV4LWtlcm5lbEAgZnJvbSBvcmlnaW5h
bCBtYWlsXQoKQW0gMjQuMDQuMjMgdW0gMjE6MDEgc2NocmllYiBQYXVsIE1lbnplbDoKPiBEZWFy
wqAgWGlhbyBZYW4sCj4gCj4gCj4gQW0gMjMuMDQuMjMgdW0gMDk6NTMgc2NocmllYiBnb25neGlh
by1pbnRlbDoKPiAKPiBZb3VyIG5hbWUgaXMgaW5jb3JyZWN0bHkgY29uZmlndXJlZC4gUGxlYXNl
IGRvIChwbGVhc2UgY29ycmVjdCB0aGUgCj4gc3BlbGxpbmcpOgo+IAo+ICDCoMKgwqAgJCBnaXQg
Y29uZmlnIC0tZ2xvYmFsIHVzZXIubmFtZSAiWGlhbyBZYW4gR29uZyIKPiAgwqDCoMKgICQgZ2l0
IGNvbW1pdCAtLWFtZW5kIC1zIC0tYXV0aG9yPSJYaWFvIFlhbiBHb25nIDx4aWFveWFuLmdvbmdA
aW50ZWwuY29tPiIKPiAKPiBBbHNvLCBwbGVhc2UgcmVtb3ZlIHRoZSBkb3QvcGVyaW9kIGZyb20g
dGhlIGVuZCBvZiB0aGUgY29tbWl0IG1lc3NhZ2UgCj4gc3VtbWFyeS4KPiAKPj4gVGhlIEhXIFRY
IHRpbWVzdGFtcHMgY3JlYXRlZCBieSB0aGUgTklDIHZpYSBzb2NrZXQgb3B0aW9ucyBjYW4gYmUK
Pj4gcmVxdWVzdGVkIHVzaW5nIHRoZSBjdXJyZW50IG5ldHdvcmsgdGltZXN0YW1wcyBnZW5lcmF0
aW9uIGNhcGFiaWxpdHkgb2YKPj4gU09GX1RJTUVTVEFNUElOR19UWF9IQVJEV0FSRS4gVGhlIG1v
c3QgY29tbW9uIHVzZXJzIG9mIHRoaXMgc29ja2V0IGZsYWcKPj4gaXMgUFRQLCBob3dldmVyIG90
aGVyIHBhY2tldCBhcHBsaWNhdGlvbnMgdGhhdCByZXF1aXJlIHR4IHRpbWVzdGFtcHMgbWlnaHQK
Pj4gYWxzbyBhc2sgZm9yIGl0Lgo+Pgo+PiBUaGUgcHJvYmxlbSBpcyB0aGF0LCB3aGVuIHRoZXJl
IGlzIGEgbG90IG9mIHRyYWZmaWMsIHRoZXJlIGlzIGEgaGlnaCBjaGFuY2UKPj4gdGhhdCB0aGUg
dGltZXN0YW1wcyBmb3IgYSBQVFAgcGFja2V0IHdpbGwgYmUgbG9zdCBpZiBib3RoIFBUUCBhbmQg
Tm9uLVBUUAo+IAo+IG5vbi1QVFAKPiAKPj4gcGFja2V0cyB1c2UgdGhlIHNhbWUgU09GX1RJTUVT
VEFNUElOR19UWF9IQVJEV0FSRSBjYXVzaW5nIHRoZSB0eCB0aW1lb3V0Lgo+IAo+IElzIExpbnV4
IGxvZ2dpbmcgdGhpcz8gSWYgc28sIHBsZWFzZSBwYXN0ZSBzdWNoIGEgbWVzc2FnZS4KPiAKPj4g
VGhlIHJvb3QgY2F1c2Ugb2YgdGhpcyBwcm9ibGVtIGlzIHRoYXQgaWdjIG9ubHkgdXNlIG9uZSBU
WFNUTVAgCj4+IHJlZ2lzdGVyIHRvCj4gCj4gdXNlKnMqCj4gCj4+IHJlcG9ydCBUWCB0aW1lc3Rh
bXAuIFN1Y2ggaW1wbGVtZW50YXRpb24gaW50ZW5zaWZ5IHRoZSByYWNlIG9mIFRYIAo+PiB0aW1l
c3RhbXAKPiAKPiBpbnRlbnNpZippZXMqCj4gCj4+IHF1ZXJ5IGZyb20gbXVsdGlwbGUgc29ja2V0
cy4KPj4KPj4gSG93ZXZlciwgSW50ZWwgaTIyNS9pMjI2IGNvbnRyb2xsZXIgaGFzIDQgVFhTVE1Q
IHJlZ2lzdGVycy4gVGhpcyBwYXRjaCBmdWxseQo+PiB1dGlsaXplcyA0IFRYU1RNUCByZWdpc3Rl
cnMgdG8gcmVkdWNlIHRoZSByYWNlIG9mIFRYIHRpbWVzdGFtcCBxdWVyeS4KPj4KPj4gVGhpcyBw
YXRjaCBkZWRpY2F0ZXMgVFhTVE1QIHJlZ2lzdGVyIDAgdG8gYWxsIFBUUCBwYWNrZXRzLiBJbiBt
b3N0IGNhc2UsIG9ubHkKPj4gb25lIFBUUCBzeW5jIHByb2Nlc3Mgd2lsbCBydW4gb24gYSBuZXR3
b3JrIHBvcnQuIFNvLCBvbmUgVFhTVE1QIHJlZ2lzdGVyIGlzCj4+IGVub3VnaCBmb3IgUFRQIHN0
cmVhbS4KPj4KPj4gRm9yIFRYU1RNUCByZWdpc3RlciAxIC0gMywgdGhleSBhcmUgYWxsb2NhdGVk
IHRvIHNvY2tldHMgcm91bmQgcm9iaW4uIAo+PiBBbmQgZWFjaAo+IAo+IHJlZ2lzdGVyKnMqCj4g
Cj4+IHNvY2tldCBjYW4gb25seSBvY2N1cHkgb25lIHJlZ2lzdGVyIGF0IGEgdGltZS4gU28sIGF0
IGxlYXN0IDMgc29ja2V0cyAKPj4gY2FuIHJlcXVpZXN0Cj4gCj4gcmVxdWVzdAo+IAo+PiBUWCB0
aW1lc3RhbXAgc2ltdWx0YW5lb3VzbHkuCj4gCj4gUGxlYXNlIGFkZCBTaWduZWQtb2ZmLWJ5IGxp
bmUuCj4gCj4gSG93IGRpZCB5b3UgdGVzdCB5b3VyIHBhdGNoPwo+IAo+PiAtLS0KPj4gwqAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5owqDCoMKgwqDCoMKgwqDCoCB8IDI0ICsr
Ky0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfYmFzZS5owqDCoMKg
IHzCoCAyICstCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZGVmaW5l
cy5oIHzCoCAyICstCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFp
bi5jwqDCoMKgIHwgNTUgKysrKysrKysrLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdjL2lnY19wdHAuY8KgwqDCoMKgIHwgOTcgKysrKysrKysrKysrKy0tLS0tLS0KPj4gwqAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19yZWdzLmjCoMKgwqAgfMKgIDQgKy0K
Pj4gwqAgNiBmaWxlcyBjaGFuZ2VkLCAxMjkgaW5zZXJ0aW9ucygrKSwgNTUgZGVsZXRpb25zKC0p
Cj4gCj4gW+KApl0KPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
