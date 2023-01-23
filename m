Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B120A67765F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 09:38:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD9D84020C;
	Mon, 23 Jan 2023 08:38:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD9D84020C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674463102;
	bh=G4UJxTACqdr5C2Db7Z7K3OXbJPioeZ9+NJGZL6fDlRc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mL+7HbhBG7hamDze1b1pKJ9bsHcLlmj3Xg4JngshOoGPBoXbYHmM0u7yCZ057pjT5
	 W1X82ziluihGar6+ivWB2O0t5zerdZ5lh5upsJxW5Ew5m0huTurLJ6CMlr3rXS5LKy
	 WM0gatfUhplRBXJ20AcqOBPHwUNwtuOYCsN03Zhxa/azrtAuqa6L9bBlLQvthwUvtK
	 35y9mLPFeCQ9YGB1/0AYtBX/NWkaVGPIjeQtjpsLngSst1MLtrKckz1JOqQ6i/QWAi
	 64Wx6GEWNT9QxhgAiA4zQt/7U9rOQufkuHa91LJiscNfuuEyC2/LaRDqYlbXGUmP9R
	 vOw+EHuPK6SwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id otEGPogrYbzQ; Mon, 23 Jan 2023 08:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 351A84091C;
	Mon, 23 Jan 2023 08:38:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 351A84091C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD1541BF369
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 08:38:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1A0740232
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 08:38:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1A0740232
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pl6neeTY7Pw0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 08:38:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1749402CE
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1749402CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 08:38:13 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae968.dynamic.kabel-deutschland.de
 [95.90.233.104])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C921F60027FD0;
 Mon, 23 Jan 2023 09:38:10 +0100 (CET)
Message-ID: <ecc47327-2f84-9499-6e7f-8af8ff921516@molgen.mpg.de>
Date: Mon, 23 Jan 2023 09:38:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: "Neftin, Sasha" <sasha.neftin@intel.com>
References: <bff5f4d7-bb85-e3fa-b8b1-76d1b8e0133a@molgen.mpg.de>
 <9505bc04-edbd-ab64-bc95-a06150bbba38@intel.com>
 <20e6d930-c50f-45b7-f98e-3d11c35a09d1@molgen.mpg.de>
 <9a5af9c0-e58a-250c-b030-05e3b73035b9@intel.com>
 <53168857-3dd4-17fe-67cb-15ab0c005ca5@molgen.mpg.de>
 <31d7cee2-86cf-9a57-18bf-db57a9282d15@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <31d7cee2-86cf-9a57-18bf-db57a9282d15@intel.com>
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org,
 Amir Avivi <amir.avivi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcXVpY2sgcmVwbHkuCgpBbSAyMy4wMS4y
MyB1bSAwODoxNSBzY2hyaWViIE5lZnRpbiwgU2FzaGE6Cj4gT24gMS8xOS8yMDIzIDE2OjE1LCBQ
YXVsIE1lbnplbCB3cm90ZToKCj4+IEFtIDE0LjA0LjIyIHVtIDA5OjA3IHNjaHJpZWIgTmVmdGlu
LCBTYXNoYToKPj4+IE9uIDQvNy8yMDIyIDE4OjU4LCBQYXVsIE1lbnplbCB3cm90ZToKPj4KPj4+
PiBBbSAwNy4wNC4yMiB1bSAxMzowMyBzY2hyaWViIE5lZnRpbiwgU2FzaGE6Cj4+Pj4+IE9uIDQv
Ni8yMDIyIDEzOjA5LCBQYXVsIE1lbnplbCB3cm90ZToKPj4+Pgo+Pj4+Pj4gT24gYSBEZWxsIExh
dGl0dWRlIEU3MjUwIHdpdGggRGViaWFuIHNpZC91bnN0YWJsZSwgUG93ZXJUT1AgMi4xNCAKPj4+
Pj4+IHJlcG9ydHMgdGhlIG5ldHdvcmsgZGV2aWNlIHVzZXMgb3ZlciAxLjUgV2F0dCwgd2hpY2gg
aXMgYWxtb3N0IHRlbiAKPj4+Pj4+IHBlcmNlbnQgb2YgdGhlIHdob2xlIHN5c3RlbS4KPj4+Pj4+
Cj4+Pj4+PiDCoMKgwqDCoMKgwqAgMS42MiBXwqDCoMKgIDQzNSw5IHBrdHMvc8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBEZXZpY2UgTmV0endlcmtzY2huaXR0c3RlbGxlOiBlbm8xIChl
MTAwMGUpCj4+Pj4+Pgo+Pj4+Pj4gwqDCoMKgwqAgJCBsc3BjaSAtbm4gfCBncmVwIEV0aGVyCj4+
Pj4+PiDCoMKgwqDCoCAwMDoxOS4wIEV0aGVybmV0IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBD
b3Jwb3JhdGlvbiBFdGhlcm5ldCBDb25uZWN0aW9uICgzKSBJMjE4LUxNIFs4MDg2OjE1YTJdIChy
ZXYgMDMpCj4+Pj4+PiDCoMKgwqDCoCAkIHVuYW1lIC1hCj4+Pj4+PiDCoMKgwqDCoCBMaW51eCBl
cnNhdHogNS4xNy4wLXRydW5rLWFtZDY0ICMxIFNNUCBQUkVFTVBUIERlYmlhbiA1LjE3LjEtMX5l
eHAxICgyMDIyLTAzLTI5KSB4ODZfNjQgR05VL0xpbnV4Cj4+Pj4+Pgo+Pj4+Pj4gwqBGcm9tIGF0
b3A6Cj4+Pj4+Pgo+Pj4+Pj4gwqDCoMKgwqAgTkVUIHzCoCBlbm8xwqDCoMKgwqDCoCAwJSB8wqAg
cGNracKgwqDCoCAyNDIxIHzCoCBwY2tvwqDCoMKgIDIxOTQgfMKgIHNwIDEwMDAgTWJwcyB8wqAg
c2kgMTUwMSBLYnBzwqAgfCBzb8KgIDE0MCBLYnBzwqAgfCBlcnJpwqDCoMKgwqDCoMKgIDDCoCB8
IGVycm8gMCB8IGRycG8gwqDCoMKgwqDCoCAwwqAgfAo+Pj4+Pj4KPj4+Pj4+IFNvIEkgcmVjZWl2
ZSAxLjUgTWJwcywgYW5kIHNlbmQgMC4xNCBNYnBzLgo+Pj4+Pj4KPj4+Pj4+IElzIHN1Y2ggaGln
aCBlbmVyZ3kgdXNhZ2UgZXhwZWN0ZWQgb2YgdGhlIG5ldHdvcmsgaGFyZHdhcmU/Cj4+Pj4KPj4+
Pj4gSXQgaXMgbm90IHRoZSBwb3dlciBjb25zdW1wdGlvbiB3ZSBleHBlY3RlZC5Ib3cgZG8geW91
IG1lYXN1cmUgaXQ/IAo+Pj4+PiAoYXMgSSBrbm93IHBvd2VydG9wIGRvZXMgbm90IHNob3cgaXQp
Cj4+Pj4KPj4+PiBPbiBteSBzeXN0ZW0sIFBvd2VyVE9QIHNob3dzIGl0LiBUaG91Z2ggbWF5YmUg
aXTigJlzIGEgYnVnIGluIAo+Pj4+IFBvd2VyVE9Q4oCZcyBwb3dlciB1c2FnZSBlc3RpbWF0aW9u
IGFsZ29yaXRobS4gTm8gaWRlYS4gQXQgbGVhc3Qgd2l0aCAKPj4+PiBubyBuZXR3b3JrIGNhYmxl
IGNvbm5lY3RlZCwgaXQgc2hvd3MgemVybyBXYXR0cyBiZWluZyB1c2VkLgo+Pj4+Cj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoCAwIG1XwqDCoMKgwqDCoCAwLDAgcGt0cy9zwqAgTmV0endlcmtzY2huaXR0
c3RlbGxlOiBlbm8xIChlMTAwMGUpCj4+Pj4KPj4+Pj4gV2Ugd2lsbCB0cnkgdG8gZmluZCBvdXQg
YWJvdXQgcG93ZXIgY29uc3VtcHRpb24uCj4+Pj4KPj4+PiBUaGFuayB5b3UgdmVyeSBtdWNoLgo+
Pj4KPj4+IFRoZSBwb3dlciBjb25zdW1wdGlvbiBkdXJpbmcgbm9ybWFsIG9wZXJhdGlvbiBtb2Rl
IGV4cGVjdGVkIHRvIGJlIAo+Pj4gfjYwMG1XLgo+Pgo+PiBXaXRoIExpbnV4IDYuMS40IEkgc3Rp
bGwgc2VlIGhpZ2ggcG93ZXIgdXNhZ2U6Cj4+Cj4+IMKgwqDCoMKgwqDCoCA0LjAxIFfCoMKgwqDC
oCAyNiwwIHBrdHMvc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEZXZpY2UgTmV0endl
cmtzY2huaXR0c3RlbGxlOiBlbm8xIChlMTAwMGUpCj4+Cj4+IERpc2Nvbm5lY3RpbmcgdGhlIGNh
YmxlLCBpdCBzdGlsbCBzaG93cyBoaWdoIHVzYWdlOgo+Pgo+PiDCoMKgwqDCoMKgwqAgNS4zNCBX
wqDCoMKgwqDCoCAwLDAgcGt0cy9zwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERldmlj
ZSBOZXR6d2Vya3NjaG5pdHRzdGVsbGU6IGVubzEgKGUxMDAwZSkKPj4KPj4gV2VyZSB5b3UgYWJs
ZSB0byByZXByb2R1Y2UgaXQgb24geW91ciB0ZXN0IHN5c3RlbXM/Cj4gScKgIGRpZG4ndCByZXBy
b2R1Y2UuCgpPbiB3aGF0IHN5c3RlbSBkaWQgeW91IHRyeSBpdD8KCj4gSSBkbyBub3Qga25vdyBp
ZiB3ZSBjYW4gdHJ1c3QgdGhlIHBvd2VydG9wIHRvb2wuIChMQU4gcG93ZXIgY29uc3VtcHRpb24g
Cj4gY291bGQgYmUgbWVhc3VyZWQgdmlhIGEgcmVzaXN0b3Igb24gdGhlIGNvbnRyb2xsZXIgY29u
bmVjdGlvbiBsYW5lcy4pCgpJIGRvIG5vdCBrbm93IHRoZSBjb2RlIG9mIFBvd2VyVE9QLiBJIGFs
c28gZG8gbm90IGhhdmUgdGhlIGVxdWlwbWVudCB0byAKbWVhc3VyZSBpdCBkaXJlY3RseS4KCj4g
RGlkIHlvdSBjb250YWN0IHlvdXIgdmVuZG9ycyByZWdhcmRzIHRoaXMgcHJvYmxlbT8KCk5vLiBG
aXJzdCB0aGUgRGVsbCBMYXRpdHVkZSBFNzI1MCBpcyBmcm9tIDIwMTUsIHNvIGxvbmcgb3V0IG9m
IHdhcnJhbnR5LiAKU2Vjb25kbHksIGRlc3BpdGUgaGF2aW5nIFVidW50dSBHTlUvTGludXggcHJl
aW5zdGFsbGVkLCB0aGUgRGVsbCBzdXBwb3J0IApwZXJzb25hbCByZXBseSwgdGhhdCB0aGV5IG9u
bHkgc3VwcG9ydCBNaWNyb3NvZnQgV2luZG93cywgYW5kIHRoYXQgdGhlIApzdXBwb3J0IGZvciBH
TlUvTGludXggaXMgZ2l2ZW4gYnkgdGhlIOKAnGNvbW11bml0eeKAnS4KCkl0IHNob3VsZCBiZSBw
b3NzaWJsZSB0byBnZXQgdGhlIHBvd2VyIGNvbnN1bXB0aW9uIHZpYSBzb2Z0d2FyZSBvbiBJbnRl
bCAKZGV2aWNlcyBmcm9tIHRoZSBsYXN0IHRlbiB5ZWFycy4gSG93IGFyZSB5b3UgZG9pbmcgaXQg
aW4geW91ciBRQSBzZXR1cHM/CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
