Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D367963C177
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 14:53:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F6BB81E30;
	Tue, 29 Nov 2022 13:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F6BB81E30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669730001;
	bh=5eK06cpO5FCulUQKzcMUCTpcYewJOXAxJMubXllrJrU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NTQEAWT8X2PS3gVreMDM5JB/ijFcGUFk4886iHmrY9ygSBYEiBpNzMN3l2VVWCHEJ
	 /+nFapZotpjb2R72WfMlp/xYdgw0hjA6MAp/BvJvZShXjrWh3nryEb8e7jBO7RUkfv
	 zUvlL49PWuqbCaqCIbI9R/Sc1en3EG1cEtqaPS6tNWrjF+73UpKgcOyFd3x5lfPRgf
	 laGi6UgN2XbHIbns1wNXjXgqHWnOKP+caJn3o2lvY/oKim3DaN2IWrBJM1aSXBEndV
	 Jvq6ZdwYCccxCF+Z+ZWmcBaydjk5PKu5dG5AuRZelXmbrTDT4vwfzCCs7rgc2C3wls
	 1vKl8/pdTlgRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rsem8GqHY90g; Tue, 29 Nov 2022 13:53:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04B3581E28;
	Tue, 29 Nov 2022 13:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04B3581E28
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 896541BF41A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 13:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 256C940050
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 13:53:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 256C940050
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZAx84qTRgBZf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 13:53:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5216141701
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5216141701
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 13:53:12 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 49F2260028141;
 Tue, 29 Nov 2022 14:53:09 +0100 (CET)
Message-ID: <e309ba9e-c908-5e09-c00a-a5dbf3c59f02@molgen.mpg.de>
Date: Tue, 29 Nov 2022 14:53:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-6-paul.m.stillwell.jr@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221128214749.110-6-paul.m.stillwell.jr@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/5] ice: use debugfs to
 output FW log data
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

RGVhciBQYXVsLAoKCkFtIDI4LjExLjIyIHVtIDIyOjQ3IHNjaHJpZWIgUGF1bCBNIFN0aWxsd2Vs
bCBKcjoKPiBUaGUgRlcgbG9nIGRhdGEgY2FuIGJlIHF1aXRlIGxhcmdlIHNvIHdlIGRvbid0IHdh
bnQgdG8gdXNlIHN5c2xvZy4KPiBJbnN0ZWFkIHRha2UgYWR2YW50YWdlIG9mIGRlYnVnZnMgdG8g
d3JpdGUgdGhlIGRhdGEgdG8uCj4gCj4gQWxzbywgYSBwcmV2aW91cyBwYXRjaCBhZGRkZWQgY29k
ZGUgdG8gZGlzYWJsZSBGVyBsb2dnaW5nIHdoZW4KCmFkZGVkIGNvZGUKCj4gdGhlIGRyaXZlciB3
YXMgdW5sb2FkZWQuIFRoZSBjb2RlIHdhcyBhZGRlZCB0bwo+IGljZV9kZXZsaW5rX3VucmVnaXN0
ZXIoKSwgd2hpY2ggZGlkbid0IHNlZW0gY29ycmVjdCBzbyBtb3ZlIHRoZQo+IGRpc2FibGluZyBv
ZiBGVyBsb2dnaW5nIG9uIGRyaXZlciB1bmxvYWQgdG8gYSBiZXR0ZXIgcGxhY2UuCgpJdOKAmWQg
YmUgZ3JlYXQgaWYgeW91IGFkZGVkIGV4YW1wbGVzLCBob3cgdG8gZ2V0IHRoZSBsb2cgZnJvbSBk
ZWJ1Z2ZzLCAKYW5kIGRlY29kZSg/KSBpdC4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCgoKPiBTaWdu
ZWQtb2ZmLWJ5OiBQYXVsIE0gU3RpbGx3ZWxsIEpyIDxwYXVsLm0uc3RpbGx3ZWxsLmpyQGludGVs
LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9NYWtlZmlsZSAg
ICAgICB8ICAgMyArLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oICAg
ICAgICAgIHwgIDI0ICsrKysKPiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZG1p
bnFfY21kLmggICB8ICAgMiArCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2RlYnVnZnMuYyAgfCAxMDkgKysrKysrKysrKysrKysrKysrCj4gICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2RldmxpbmsuYyAgfCAgMjAgLS0tLQo+ICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgICAgIHwgIDk4ICsrKysrKysrKysrKysrKysK
PiAgIDYgZmlsZXMgY2hhbmdlZCwgMjM1IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+
ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
ZGVidWdmcy5jCgpb4oCmXQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
