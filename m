Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C865E697C79
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 13:58:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27E3440246;
	Wed, 15 Feb 2023 12:58:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27E3440246
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676465901;
	bh=AHJ88Je4/uT2Ha2BPUYsQ3vjWHBl3bfWPr288+FRJ0g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h2/AEw27LsDGKsZY95PNW2xhHZIXAqDcerbcMguy/ZhssXJwWT2Zb9AE4X2WpJ6bH
	 iVI64A0ORQ7S6+76mBYOh5yHPG0iG8ALcbcDDgrK0wIXAdBFr8rN1jBi/ugOg/TQeD
	 bgcavEIeOEEBPE5S52qhDw9/ciTNtNzAPPdovQ1zYtw5YFSdtjp5QgkKBENwGrPQYi
	 V6JPN9nJ63AYc+5BHkgJ6MAeKUdLVqA9WfEoM6tPjQ1vsKKEeoNXxwdud9Eeg5hisu
	 IhjY2D9a+liEdMe0HxWsAQfksYLDWyt1/qrvI4be9jRVp8aW4cvLnCBewfxTa6BGy0
	 OYhOgsb1ubA6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z_3L98PvJ7CX; Wed, 15 Feb 2023 12:58:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA7614029A;
	Wed, 15 Feb 2023 12:58:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA7614029A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38BBA1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13125819F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13125819F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D6jSiD2xANIa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Feb 2023 12:58:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5688F81990
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5688F81990
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:58:11 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aed2d.dynamic.kabel-deutschland.de
 [95.90.237.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8ECDD61CC457B;
 Wed, 15 Feb 2023 13:58:08 +0100 (CET)
Message-ID: <1ca32b04-2f29-5a25-3f9c-be7a11e3ab2e@molgen.mpg.de>
Date: Wed, 15 Feb 2023 13:58:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>
References: <20230215103625.107743-1-karol.kolacinski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230215103625.107743-1-karol.kolacinski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Write all GNSS buffers
 instead of first one
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

RGVhciBLYXJvbCwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAxNS4wMi4yMyB1bSAx
MTozNiBzY2hyaWViIEthcm9sIEtvbGFjaW5za2k6Cj4gV2hlbiB1c2VyIHdyaXRlcyBtdWx0aXBs
ZSBtZXNzYWdlcyBpbiBhIHNob3J0IHBlcmlvZCBvZiB0aW1lLCB0aGUgZHJpdmVyCj4gd3JpdGVz
IG9ubHkgdGhlIGZpcnN0IG9uZS4KPiBGaXggdGhpcyBiZWhhdmlvciB0byB3cml0ZSBhbGwgcGVu
ZGluZyBidWZmZXJzIGluc3RlYWQgb2Ygb25seSB0aGUgZmlyc3QKPiBvbmUuCgpQbGVhc2UgYWRk
IGEgYmxhbmsgbGluZSBiZXR3ZWVuIHBhcmFncmFwaHMuCgpJdOKAmWQgYmUgZ3JlYXQsIGlmIHlv
dSBhZGRlZCwgaG93IHRvIHJlcHJvZHVjZSB0aGUgaXNzdWUsIGFuZCB2ZXJpZnkgdGhlIApmaXgu
IChFc3BlY2lhbGx5IGFzIHRoZSBjb21taXQgaW4gcXVlc3Rpb24gaGFzIGEgVGVzdGVkLWJ5IGxp
bmUuKQoKPiBGaXhlczogZDZiOThjOGQyNDJhICgiaWNlOiBhZGQgd3JpdGUgZnVuY3Rpb25hbGl0
eSBmb3IgR05TUyBUVFkiKQoKUGxlYXNlIGFkZCBhIGJsYW5rIGxpbmUgYmVmb3JlIHRoZSBGaXhl
czogdGFnLCBhbmQgdGhlIHJlbW92ZSB0aGUgb25lIGJlbG93LgoKPiBTaWduZWQtb2ZmLWJ5OiBL
YXJvbCBLb2xhY2luc2tpIDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZ25zcy5jIHwgMiArLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZ25zcy5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9nbnNzLmMKPiBpbmRleCA4ZGVjNzQ4YmI1M2EuLjFmYTdi
ZjMxODE2ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2duc3MuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZ25zcy5j
Cj4gQEAgLTkxLDcgKzkxLDcgQEAgc3RhdGljIHZvaWQgaWNlX2duc3Nfd3JpdGVfcGVuZGluZyhz
dHJ1Y3Qga3RocmVhZF93b3JrICp3b3JrKQo+ICAgCWlmICghdGVzdF9iaXQoSUNFX0ZMQUdfR05T
UywgcGYtPmZsYWdzKSkKPiAgIAkJcmV0dXJuOwo+ICAgCj4gLQlpZiAoIWxpc3RfZW1wdHkoJmdu
c3MtPnF1ZXVlKSkgewo+ICsJd2hpbGUgKCFsaXN0X2VtcHR5KCZnbnNzLT5xdWV1ZSkpIHsKPiAg
IAkJc3RydWN0IGduc3Nfd3JpdGVfYnVmICp3cml0ZV9idWYgPSBOVUxMOwo+ICAgCQl1bnNpZ25l
ZCBpbnQgYnl0ZXM7Cj4gICAKClRoZSBkaWZmIGxvb2tzIGdvb2QuCgoKS2luZCByZWdhcmRzLAoK
UGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
