Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2025A629C22
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 15:31:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB3D0404AA;
	Tue, 15 Nov 2022 14:31:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB3D0404AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668522678;
	bh=ZC6hkOQGndIgCiaq68hAkz4OTwNBQbuOuNk7HY41E5w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4cBKIRubPXXSgsGrRwAa1NEtIM9vsvA0j2yW/+hpwFC8OxkFhAH5pIonfeCq+esBz
	 sKJ5/+iX+VcLgiVJFyREUKV/aKs0A49BjX2pMdlaWja/qo5awB/JUxU7QAKknaMpQU
	 nyg3f7uYNj6kkneHbQO1sESQBnauAx3FdAIp3uVbGUPz2zsoJxdA69K67N4c1sKG9n
	 GgfkoBaNwMPEwL/F0vJ+Mb9Nud4L/PuB/aR/C0xHzp/e/14SJYh56pY7DQq+SUEtSO
	 31CMMqt9wREBd7ARXuF8frZ5ai1Je4O95f2zSFDg24eSKzLX5fXUnoQAOHLGSBfX6L
	 XvNwWLBPGEKPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cEm6jw9dS9Lk; Tue, 15 Nov 2022 14:31:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A223C40179;
	Tue, 15 Nov 2022 14:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A223C40179
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E70321BF83E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 14:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE09981A9C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 14:31:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE09981A9C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TcUDsaiPM353 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 14:31:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 082B581A92
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 082B581A92
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 14:31:10 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E238361EA1930;
 Tue, 15 Nov 2022 15:31:07 +0100 (CET)
Message-ID: <a7b25694-4d1f-916e-d52a-b5c7d211c695@molgen.mpg.de>
Date: Tue, 15 Nov 2022 15:31:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Kamil Maziarz <kamil.maziarz@intel.com>
References: <20221115084925.2489227-1-kamil.maziarz@intel.com>
 <da5ff524-d93a-2aeb-cfe3-56295785e14d@molgen.mpg.de>
In-Reply-To: <da5ff524-d93a-2aeb-cfe3-56295785e14d@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Disallow ip4 and ip6
 l4_4_bytes
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W1RvOiAtIDxwcnplbXlzbGF3eC5wYXR5bm93c2tpQGludGVsLmNvbT4sIHVuZGVsaXZlcmFibGVd
CltDYzogK0phY29iLCBmb3IgcmVhbCB0aGlzIHRpbWVdCgpBbSAxNS4xMS4yMiB1bSAxMDo1NiBz
Y2hyaWViIFBhdWwgTWVuemVsOgo+IFtDYzogK0phY29iXQo+IAo+IERlYXIgUHJ6ZW15c2xhdywg
ZGVhciBLYW1pbCwKPiAKPiAKPiBBbSAxNS4xMS4yMiB1bSAwOTo0OSBzY2hyaWViIEthbWlsIE1h
emlhcno6Cj4+IEZyb206IFByemVteXNsYXcgUGF0eW5vd3NraSA8cHJ6ZW15c2xhd3gucGF0eW5v
d3NraUBpbnRlbC5jb20+Cj4+Cj4+IFJldHVybiAtRU9QTk9UU1VQUCwgd2hlbiB1c2VyIHJlcXVl
c3RzIGw0XzRfYnl0ZXMgZm9yIHJhdyBJUDQgb3IKPj4gSVA2IGZsb3cgZGlyZWN0b3IgZmlsdGVy
cy4gRmxvdyBkaXJlY3RvciBkb2VzIG5vdCBzdXBwb3J0IGZpbHRlcmluZwo+PiBvbiBsNCBieXRl
cyBmb3IgUENUWVBFcyB1c2VkIGJ5IElQNCBhbmQgSVA2IGZpbHRlcnMuCj4+IFdpdGhvdXQgdGhp
cyBwYXRjaCwgdXNlciBjb3VsZCBjcmVhdGUgZmlsdGVycyB3aXRoIGw0XzRfYnl0ZXMgZmllbGRz
LAo+PiB3aGljaCBkaWQgbm90IGRvIGFueSBmaWx0ZXJpbmcgb24gTDQsIGJ1dCBvbmx5IG9uIEwz
IGZpZWxkcy4KPj4KPj4gRml4ZXM6IDM2Nzc3ZDlmYTI0YyAoImk0MGU6IGNoZWNrIGN1cnJlbnQg
Y29uZmlndXJlZCBpbnB1dCBzZXQgd2hlbiAKPj4gYWRkaW5nIG50dXBsZSBmaWx0ZXJzIikKPiAK
PiBBcmUgeW91IHN1cmUgdGhhdCBpcyB0aGUgY29ycmVjdCBjb21taXQuIEl0IG9ubHkgc2VlbXMg
dG8gaGF2ZSAKPiByZWZhY3RvcmVkIHN0dWZmLCDigKYKPiAKPj4gU2lnbmVkLW9mZi1ieTogUHJ6
ZW15c2xhdyBQYXR5bm93c2tpIDxwcnplbXlzbGF3eC5wYXR5bm93c2tpQGludGVsLmNvbT4KPj4g
U2lnbmVkLW9mZi1ieTogS2FtaWwgTWF6aWFyesKgIDxrYW1pbC5tYXppYXJ6QGludGVsLmNvbT4K
Pj4gLS0tCj4+IMKgIHYzOiByZW1vdmVkIGZvb3RlciBhbmQgYWRkZWQgRml4ZXMgdGFnCj4+IC0t
LQo+PiDCoCB2MjogY2hhbmdlZCBhdXRob3IgYW5kIHRyZWUKPj4gLS0tCj4+IMKgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMgfCAxMiArKy0tLS0tLS0tLS0K
Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRo
dG9vbC5jIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29s
LmMKPj4gaW5kZXggMTU2ZTkyYzQzNzgwLi42Njk1ZGJlNjFhMDQgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMKPj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYwo+PiBAQCAtNDQ0Nywx
MSArNDQ0Nyw3IEBAIHN0YXRpYyBpbnQgaTQwZV9jaGVja19mZGlyX2lucHV0X3NldChzdHJ1Y3Qg
aTQwZV92c2kgKnZzaSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FT1BO
T1RTVVBQOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLyogRmlyc3QgNCBieXRlcyBvZiBMNCBoZWFk
ZXIgKi8KPj4gLcKgwqDCoMKgwqDCoMKgIGlmICh1c3JfaXA0X3NwZWMtPmw0XzRfYnl0ZXMgPT0g
aHRvbmwoMHhGRkZGRkZGRikpCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5ld19tYXNrIHw9
IEk0MEVfTDRfU1JDX01BU0sgfCBJNDBFX0w0X0RTVF9NQVNLOwo+PiAtwqDCoMKgwqDCoMKgwqAg
ZWxzZSBpZiAoIXVzcl9pcDRfc3BlYy0+bDRfNF9ieXRlcykKPj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgbmV3X21hc2sgJj0gfihJNDBFX0w0X1NSQ19NQVNLIHwgSTQwRV9MNF9EU1RfTUFTSyk7
Cj4+IC3CoMKgwqDCoMKgwqDCoCBlbHNlCj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAodXNyX2lwNF9z
cGVjLT5sNF80X2J5dGVzKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVP
UE5PVFNVUFA7Cj4gCj4gYW5kIHRoZSBjb25kaXRpb24gYmVmb3JlIHdhcwo+IAo+ICDCoMKgwqAg
aWYgKCF0Y3BfaXA0X3NwZWMtPmlwNGRzdCB8fCB+dGNwX2lwNF9zcGVjLT5pcDRkc3QpCj4gCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBGaWx0ZXJpbmcgb24gVHlwZSBvZiBTZXJ2aWNlIGlzIG5v
dCBzdXBwb3J0ZWQuICovCj4+IEBAIC00NDkwLDExICs0NDg2LDcgQEAgc3RhdGljIGludCBpNDBl
X2NoZWNrX2ZkaXJfaW5wdXRfc2V0KHN0cnVjdCBpNDBlX3ZzaSAqdnNpLAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgZWxzZQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVPUE5P
VFNVUFA7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAodXNyX2lwNl9zcGVjLT5sNF80X2J5dGVzID09
IGh0b25sKDB4RkZGRkZGRkYpKQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXdfbWFzayB8
PSBJNDBFX0w0X1NSQ19NQVNLIHwgSTQwRV9MNF9EU1RfTUFTSzsKPj4gLcKgwqDCoMKgwqDCoMKg
IGVsc2UgaWYgKCF1c3JfaXA2X3NwZWMtPmw0XzRfYnl0ZXMpCj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIG5ld19tYXNrICY9IH4oSTQwRV9MNF9TUkNfTUFTSyB8IEk0MEVfTDRfRFNUX01BU0sp
Owo+PiAtwqDCoMKgwqDCoMKgwqAgZWxzZQo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHVzcl9pcDZf
c3BlYy0+bDRfNF9ieXRlcykKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1F
T1BOT1RTVVBQOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLyogRmlsdGVyaW5nIG9uIFRyYWZmaWMg
Y2xhc3MgaXMgbm90IHN1cHBvcnRlZC4gKi8KPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
