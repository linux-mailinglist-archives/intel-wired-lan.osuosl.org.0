Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6644F8462
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Apr 2022 17:59:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCC2741A5B;
	Thu,  7 Apr 2022 15:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gCGxrlVtGYPW; Thu,  7 Apr 2022 15:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73B8741A24;
	Thu,  7 Apr 2022 15:59:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BC361BF300
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Apr 2022 15:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EE4918346C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Apr 2022 15:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t4rOLCrqsGrx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Apr 2022 15:59:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FEC681384
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Apr 2022 15:59:01 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aef77.dynamic.kabel-deutschland.de
 [95.90.239.119])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B51B061EA192A;
 Thu,  7 Apr 2022 17:58:57 +0200 (CEST)
Message-ID: <20e6d930-c50f-45b7-f98e-3d11c35a09d1@molgen.mpg.de>
Date: Thu, 7 Apr 2022 17:58:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>
References: <bff5f4d7-bb85-e3fa-b8b1-76d1b8e0133a@molgen.mpg.de>
 <9505bc04-edbd-ab64-bc95-a06150bbba38@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <9505bc04-edbd-ab64-bc95-a06150bbba38@intel.com>
Subject: Re: [Intel-wired-lan] I218-LM uses > 1 W with low traffic
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
Cc: Devora Fuxbrumer <devora.fuxbrumer@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAwNy4wNC4yMiB1bSAxMzowMyBzY2hyaWViIE5lZnRpbiwgU2FzaGE6
Cj4gT24gNC82LzIwMjIgMTM6MDksIFBhdWwgTWVuemVsIHdyb3RlOgoKPj4gT24gYSBEZWxsIExh
dGl0dWRlIEU3MjUwIHdpdGggRGViaWFuIHNpZC91bnN0YWJsZSwgUG93ZXJUT1AgMi4xNCAKPj4g
cmVwb3J0cyB0aGUgbmV0d29yayBkZXZpY2UgdXNlcyBvdmVyIDEuNSBXYXR0LCB3aGljaCBpcyBh
bG1vc3QgdGVuIAo+PiBwZXJjZW50IG9mIHRoZSB3aG9sZSBzeXN0ZW0uCj4+Cj4+IMKgwqDCoMKg
wqDCoCAxLjYyIFfCoMKgwqAgNDM1LDkgcGt0cy9zwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIERldmljZSBOZXR6d2Vya3NjaG5pdHRzdGVsbGU6IGVubzEgKGUxMDAwZSkKPj4KPj4gwqDC
oMKgwqAgJCBsc3BjaSAtbm4gfCBncmVwIEV0aGVyCj4+IMKgwqDCoMKgIDAwOjE5LjAgRXRoZXJu
ZXQgY29udHJvbGxlciBbMDIwMF06IEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0IENvbm5lY3Rp
b24gKDMpIEkyMTgtTE0gWzgwODY6MTVhMl0gKHJldiAwMykKPj4gwqDCoMKgwqAgJCB1bmFtZSAt
YQo+PiDCoMKgwqDCoCBMaW51eCBlcnNhdHogNS4xNy4wLXRydW5rLWFtZDY0ICMxIFNNUCBQUkVF
TVBUIERlYmlhbiA1LjE3LjEtMX5leHAxICgyMDIyLTAzLTI5KSB4ODZfNjQgR05VL0xpbnV4Cj4+
Cj4+IMKgRnJvbSBhdG9wOgo+Pgo+PiDCoMKgwqDCoCBORVQgfMKgIGVubzHCoMKgwqDCoMKgIDAl
IHzCoCBwY2tpwqDCoMKgIDI0MjEgfMKgIHBja2/CoMKgwqAgMjE5NCB8wqAgc3AgMTAwMCBNYnBz
IHzCoCBzaSAxNTAxIEticHPCoCB8IHNvwqAgMTQwIEticHPCoCB8IGVycmnCoMKgwqDCoMKgwqAg
MMKgIHwgZXJyb8KgwqDCoMKgwqDCoCAwwqAgfCBkcnBvIMKgwqDCoMKgwqAgMMKgIHwKPj4KPj4g
U28gSSByZWNlaXZlIDEuNSBNYnBzLCBhbmQgc2VuZCAwLjE0IE1icHMuCj4+Cj4+IElzIHN1Y2gg
aGlnaCBlbmVyZ3kgdXNhZ2UgZXhwZWN0ZWQgb2YgdGhlIG5ldHdvcmsgaGFyZHdhcmU/Cgo+IEl0
IGlzIG5vdCB0aGUgcG93ZXIgY29uc3VtcHRpb24gd2UgZXhwZWN0ZWQuSG93IGRvIHlvdSBtZWFz
dXJlIGl0PyAoYXMgSSAKPiBrbm93IHBvd2VydG9wIGRvZXMgbm90IHNob3cgaXQpCgpPbiBteSBz
eXN0ZW0sIFBvd2VyVE9QIHNob3dzIGl0LiBUaG91Z2ggbWF5YmUgaXTigJlzIGEgYnVnIGluIFBv
d2VyVE9Q4oCZcyAKcG93ZXIgdXNhZ2UgZXN0aW1hdGlvbiBhbGdvcml0aG0uIE5vIGlkZWEuIEF0
IGxlYXN0IHdpdGggbm8gbmV0d29yayAKY2FibGUgY29ubmVjdGVkLCBpdCBzaG93cyB6ZXJvIFdh
dHRzIGJlaW5nIHVzZWQuCgogICAgICAgICAwIG1XICAgICAgMCwwIHBrdHMvcyAgTmV0endlcmtz
Y2huaXR0c3RlbGxlOiBlbm8xIChlMTAwMGUpCgoKPiBXZSB3aWxsIHRyeSB0byBmaW5kIG91dCBh
Ym91dCBwb3dlciBjb25zdW1wdGlvbi4KClRoYW5rIHlvdSB2ZXJ5IG11Y2guCgoKS2luZCByZWdh
cmRzLAoKUGF1bGwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
