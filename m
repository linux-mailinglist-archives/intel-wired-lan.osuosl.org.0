Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6836C9EFD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Mar 2023 11:09:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C489409B3;
	Mon, 27 Mar 2023 09:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C489409B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679908147;
	bh=zqCcISe4SFTOMebuosN30J8UnhIdat/z9K5EBkzANH8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=crVfkyEtEnXA7lQL3L4dgCTG1Jv1KKW+I164DD2pUOov7jvYnU2ykAyv2Lgwxt/f4
	 Z0MS2Dt10Gu440IBr3BucdHrqBE3KENjeHvOQR1IG3RP9QJ+Brke47/912MBrYB9Rm
	 aA9yS//KUHASSQU2T8Qr9mM41qmju9t8i5j0JgF4wURZUopl7NNyUzdEXvRYyNnsHx
	 WKC57g/HniD0M8NipvypSusozmy01dhqlxiot8EkpZl8TjxmhZANNVwph8D/y4RcGH
	 FJHMDGlQd8Mlm+ONPGeWcBSlsq2DvcHhpEUv4U4UJLTXIoxkSDtANCI6xeqF/Ljuq3
	 FC7hhwPAtlMoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id za1nFZoNP0HV; Mon, 27 Mar 2023 09:09:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2CA340A02;
	Mon, 27 Mar 2023 09:09:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2CA340A02
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A49F31BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 09:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 788568143F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 09:08:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 788568143F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VJYpFGYNjVNa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Mar 2023 09:08:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 901A381D67
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 901A381D67
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 09:08:57 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 35CDD61CC457B;
 Mon, 27 Mar 2023 11:08:54 +0200 (CEST)
Message-ID: <13024a04-8592-e59b-a2a4-14ce8d17a154@molgen.mpg.de>
Date: Mon, 27 Mar 2023 11:08:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Lingyu Liu <lingyu.liu@intel.com>, Junfeng Guo <junfeng.guo@intel.com>
References: <20230309024934.151120-1-lingyu.liu@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230309024934.151120-1-lingyu.liu@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: add FDIR counter reset in
 FDIR init stage
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

RGVhciBMaW5neXUsIGRlYXIgSnVuZmVuZywKCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCkFt
IDA5LjAzLjIzIHVtIDAzOjQ5IHNjaHJpZWIgTGluZ3l1IExpdToKPiBGcm9tOiBKdW5mZW5nIEd1
byA8anVuZmVuZy5ndW9AaW50ZWwuY29tPgoKQSBzaG9ydGVyIGNvbW1pdCBtZXNzYWdlIHN1bW1h
cnkvdGl0bGUgd291bGQgYmU6CgpSZXNldCBGRElSIGNvdW50ZXIgaW4gRkRJUiBpbml0IHN0YWdl
Cgo+IFRoaXMgcGF0Y2ggYWRkZWQgdGhlIG1pc3NpbmcgRkRJUiBjb3VudGVycyByZXNldCBwcm9j
ZXNzIHdoZW4KCldoYXQgY29tbWl0IGRvIHlvdSByZWZlcmVuY2U/IElmIGl04oCZcyBhYm91dCB0
aGUgY3VycmVudCBjaGFuZ2UsIHBsZWFzZSB1c2U6CgpBZGQgdGhlIG1pc3NpbmcgRkRJUiBjb3Vu
dGVycyByZXNldCBwcm9jZXNzIOKApgoKQmV0dGVyOgoKUmVzZXQgdGhlIEZESVIgY291bnRlcnMg
d2hlbiDigKYKCj4gRkRJUiBpbml0cy4gV2l0aG91dCB0aGlzIHBhdGNoLCB3aGVuIFZGIGluaXRp
YWxpemVzIG9yIHJlc2V0cywKPiBhbGwgdGhlIEZESVIgY291bnRlcnMgd2lsbCBub3QgYmUgY2xl
YW5lZCwgd2hpY2ggbWF5IGNhdXNlCgrigKYgYXJlIG5vdCBjbGVhbmVkIOKApgoKPiB1bmV4cGVj
dGVkIGJlaGF2aW9ycyBmb3IgZnV0dXJlIEZESVIgcnVsZSBjcmVhdGUgKGUuZy4sIHJ1bGUKPiBj
b25mbGljdCkuCj4gCj4gRml4ZXM6IDFmN2VhMWNkNmEzNyAoImljZTogRW5hYmxlIEZESVIgQ29u
ZmlndXJlIGZvciBBVkYiKQo+IFNpZ25lZC1vZmYtYnk6IEp1bmZlbmcgR3VvIDxqdW5mZW5nLmd1
b0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTGluZ3l1IExpdSA8bGluZ3l1LmxpdUBpbnRl
bC5jb20+Cj4gLS0tCj4gdjI6IGNoYW5nZSBjb21taXQgbWVzc2FnZSB0byBhcHBseSBtb3JlIHRv
IGEga2VybmVsIHVzZQo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV92aXJ0Y2hubF9mZGlyLmMgfCAxNSArKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxNSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfdmlydGNobmxfZmRpci5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV92aXJ0Y2hubF9mZGlyLmMKPiBpbmRleCBlNmVmNmIzMDMyMjIuLjYwYzlkYTRh
YWMxZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Zp
cnRjaG5sX2ZkaXIuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
dmlydGNobmxfZmRpci5jCj4gQEAgLTU0MSw2ICs1NDEsMjAgQEAgc3RhdGljIHZvaWQgaWNlX3Zj
X2ZkaXJfcmVtX3Byb2ZfYWxsKHN0cnVjdCBpY2VfdmYgKnZmKQo+ICAgCX0KPiAgIH0KPiAgIAo+
ICsvKioKPiArICogaWNlX3ZjX2ZkaXJfcmVzZXRfY250X2FsbCAtIHJlc2V0IGFsbCBGRElSIGNv
dW50ZXJzIGZvciB0aGlzIFZGIEZESVIKPiArICogQGZkaXI6IHBvaW50ZXIgdG8gdGhlIFZGIEZE
SVIgc3RydWN0dXJlCj4gKyAqLwo+ICtzdGF0aWMgdm9pZCBpY2VfdmNfZmRpcl9yZXNldF9jbnRf
YWxsKHN0cnVjdCBpY2VfdmZfZmRpciAqZmRpcikKPiArewo+ICsJZW51bSBpY2VfZmx0cl9wdHlw
ZSBmbG93ID0gSUNFX0ZMVFJfUFRZUEVfTk9ORl9OT05FOwo+ICsKPiArCWZvciAoOyBmbG93IDwg
SUNFX0ZMVFJfUFRZUEVfTUFYOyBmbG93KyspIHsKPiArCQlmZGlyLT5mZGlyX2ZsdHJfY250W2Zs
b3ddWzBdID0gMDsKPiArCQlmZGlyLT5mZGlyX2ZsdHJfY250W2Zsb3ddWzFdID0gMDsKPiArCX0K
CkluIGFsbCBvdGhlciBwbGFjZXMgdGhpcyBjb25zdHJ1Y3QgaXMgd3JpdHRlbiBsaWtlOgoKCWVu
dW0gaWNlX2ZsdHJfcHR5cGUgZmxvdzsKCglmb3IgKGZsb3cgPSBJQ0VfRkxUUl9QVFlQRV9OT05G
X05PTkU7IGZsb3cgPCDigKYgKSB7CgkJ4oCmCgl9Cgo+ICt9Cj4gKwo+ICAgLyoqCj4gICAgKiBp
Y2VfdmNfZmRpcl93cml0ZV9mbG93X3Byb2YKPiAgICAqIEB2ZjogcG9pbnRlciB0byB0aGUgVkYg
c3RydWN0dXJlCj4gQEAgLTE5MjQsNiArMTkzOCw3IEBAIHZvaWQgaWNlX3ZmX2ZkaXJfaW5pdChz
dHJ1Y3QgaWNlX3ZmICp2ZikKPiAgIAlzcGluX2xvY2tfaW5pdCgmZmRpci0+Y3R4X2xvY2spOwo+
ICAgCWZkaXItPmN0eF9pcnEuZmxhZ3MgPSAwOwo+ICAgCWZkaXItPmN0eF9kb25lLmZsYWdzID0g
MDsKPiArCWljZV92Y19mZGlyX3Jlc2V0X2NudF9hbGwoZmRpcik7Cj4gICB9Cj4gICAKPiAgIC8q
KgoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
