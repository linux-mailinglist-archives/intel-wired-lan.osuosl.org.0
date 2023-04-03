Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5996D4601
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Apr 2023 15:42:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9191A408DB;
	Mon,  3 Apr 2023 13:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9191A408DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680529356;
	bh=EdOsTKdeXENRkXFovwiH3K/6P10Oc1LmHZ5SnAsa184=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d61EaRc+jfU3FlXF/2BmMip0p70WxwDqKtNOn+x68BFxt/paYMAi45RWdVIDj9oq8
	 vmsGyvtlv5l5D9oyproYRQ/1XXCwNciUmpSCQGbJMoCO29mRBTslXIC1zZAcB2+mQK
	 nF6ypFKHeFI06n9v42LVfy7TWwAR3x+0U7MSssoY3ekzEdzDhNtlUGt6ZKT2vbi1pI
	 v/Hz88H08kpKtgKJplazHZGS3P2ihrmFewAsdaH4Pb/uCBoZHGsKvg0Hca5PYgS1JT
	 QmDjVRq6PzNqRCuDRT02M9fd46pVfuFksYZR1K70z4xrcipONNynxjV9QVHl5ntHvy
	 CFyjkbLl1zEBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ARcomfEvBtfD; Mon,  3 Apr 2023 13:42:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79999408E0;
	Mon,  3 Apr 2023 13:42:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79999408E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 498401BF97E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 13:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 21A7260FB9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 13:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21A7260FB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oze2GoCv49nU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 13:42:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E0E060FAE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E0E060FAE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 13:42:29 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-158-rLFMSEHaN-CQCVWBsAQ5HA-1; Mon, 03 Apr 2023 09:42:26 -0400
X-MC-Unique: rLFMSEHaN-CQCVWBsAQ5HA-1
Received: by mail-ed1-f72.google.com with SMTP id
 b6-20020a509f06000000b005029d95390aso4808167edf.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 Apr 2023 06:42:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680529345;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OS4NCzI4dMmryLR3VX28JbtikJ9tRfdvXYd2DIsne/k=;
 b=cdT7hX38hq45pH6YiKMjIlUZgTT7G69zhTfsUPpUxU1XMYdFSeod/aOV5HDJjKwy/D
 BC9Od1QlhUAWmUo+lusXu0MLz4FrnOIfCP/xY9sVHNWDNZ22WQUNNINPLxpKYTnB3XRY
 GX9bFe9+C/gYZdUWz2+aPGvf6iC48MraDLLZkH1C7Qfe3KC1P9y+43oIj/7aUlepVVq+
 ufaldvR4Ep8FM1otWR50CZgmrAH0DHESM2Osazn6x7orMmnV1x45+wYPliyEXMigeqrm
 mYEPEshOQWbXCxmY1VKKD5XqbIyPphDT7WJr3dta3ivFw8E3SLxGgB239DJVRaUs0dbR
 fqHg==
X-Gm-Message-State: AAQBX9fJEyxzcVjZfEdSxn6UsLhNXlJZcBJsSlGBu+GNG0IgU+Io13KR
 UYTPR2l7uBqayiZr+MCh/yRY+yepfgGMiwkv0pSjZIKqGiJKLOAGLwRmOTZX+mWCDObKfihO1Ky
 o3/fwoVkuTum1QVaQRDWqXFa6O0bl1c8AhojJxHLe2qBii6tAtl5WAQ==
X-Received: by 2002:a17:907:20bc:b0:92a:581:ac49 with SMTP id
 pw28-20020a17090720bc00b0092a0581ac49mr15782074ejb.3.1680529345227; 
 Mon, 03 Apr 2023 06:42:25 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZS9NMl87IhXkFK8bF38G0BJCoJTDkYI0Flb56ddP0Lds2UzLtWXLCBUSsgQLOcelrjn/JtLl3IKiAL0t/rwSI=
X-Received: by 2002:a17:907:20bc:b0:92a:581:ac49 with SMTP id
 pw28-20020a17090720bc00b0092a0581ac49mr15782055ejb.3.1680529344974; Mon, 03
 Apr 2023 06:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230401172659.38508-1-mschmidt@redhat.com>
 <20230401172659.38508-3-mschmidt@redhat.com>
 <ZClkczf8EvDsPidF@corigine.com>
In-Reply-To: <ZClkczf8EvDsPidF@corigine.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 3 Apr 2023 15:42:13 +0200
Message-ID: <CADEbmW1kvoqs3hAnPsrFRB3Emyf94_0WL=jt1QN+awZPCE50Cg@mail.gmail.com>
To: Simon Horman <simon.horman@corigine.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680529348;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OS4NCzI4dMmryLR3VX28JbtikJ9tRfdvXYd2DIsne/k=;
 b=bp56sjf+Xw2Nz5PVm0TG3mKW5/atc5ANgUsBJc3UeOpq6qnqBmGc5yoUYc1FA9t/glu9pT
 7lqvB39BwurD+JNc/ZwvbsJsccHNjOvG4k+/BExH3s+wp5YSgQ52Q3HDqzl/hKJijv4xnu
 0S9KHG3w6w6m0012vx6F+UfSq7IeOtw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=bp56sjf+
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/4] ice: sleep,
 don't busy-wait, for sq_cmd_timeout
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU3VuLCBBcHIgMiwgMjAyMyBhdCAxOjE44oCvUE0gU2ltb24gSG9ybWFuIDxzaW1vbi5ob3Jt
YW5AY29yaWdpbmUuY29tPiB3cm90ZToKPiBPbiBTYXQsIEFwciAwMSwgMjAyMyBhdCAwNzoyNjo1
N1BNICswMjAwLCBNaWNoYWwgU2NobWlkdCB3cm90ZToKPiA+IFRoZSBkcml2ZXIgcG9sbHMgZm9y
IGljZV9zcV9kb25lKCkgd2l0aCBhIDEwMCDCtXMgcGVyaW9kIGZvciB1cCB0byAxIHMKPiA+IGFu
ZCBpdCB1c2VzIHVkZWxheSB0byBkbyB0aGF0Lgo+ID4KPiA+IExldCdzIHVzZSB1c2xlZXBfcmFu
Z2UgaW5zdGVhZC4gV2Uga25vdyBzbGVlcGluZyBpcyBhbGxvd2VkIGhlcmUsCj4gPiBiZWNhdXNl
IHdlJ3JlIGhvbGRpbmcgYSBtdXRleCAoY3EtPnNxX2xvY2spLiBUbyBwcmVzZXJ2ZSB0aGUgdG90
YWwKPiA+IG1heCB3YWl0aW5nIHRpbWUsIG1lYXN1cmUgY3EtPnNxX2NtZF90aW1lb3V0IGluIGpp
ZmZpZXMuCj4gPgo+ID4gVGhlIHNxX2NtZF90aW1lb3V0IGlzIHJlZmVyZW5jZWQgYWxzbyBpbiBp
Y2VfcmVsZWFzZV9yZXMoKSwgYnV0IHRoZXJlCj4gPiB0aGUgcG9sbGluZyBwZXJpb2QgaXMgMSBt
cyAoaS5lLiAxMCB0aW1lcyBsb25nZXIpLiBTaW5jZSB0aGUgdGltZW91dAo+ID4gd2FzIGV4cHJl
c3NlZCBpbiB0ZXJtcyBvZiB0aGUgbnVtYmVyIG9mIGxvb3BzLCB0aGUgdG90YWwgdGltZW91dCBp
biB0aGlzCj4gPiBmdW5jdGlvbiBpcyAxMCBzLiBJIGRvIG5vdCBrbm93IGlmIHRoaXMgaXMgaW50
ZW50aW9uYWwuIFRoaXMgcGF0Y2gga2VlcHMKPiA+IGl0Lgo+ID4KPiA+IFRoZSBwYXRjaCBsb3dl
cnMgdGhlIENQVSB1c2FnZSBvZiB0aGUgaWNlLWduc3MtPGRldl9uYW1lPiBrZXJuZWwgdGhyZWFk
Cj4gPiBvbiBteSBzeXN0ZW0gZnJvbSB+OCAlIHRvIGxlc3MgdGhhbiAxICUuCj4gPiBJIHNhdyBh
IHJlcG9ydCBvZiBoaWdoIENQVSB1c2FnZSB3aXRoIHB0cDRsIHdoZXJlIHRoZSBidXN5LXdhaXRp
bmcgaW4KPiA+IGljZV9zcV9zZW5kX2NtZCBkb21pbmF0ZWQgdGhlIHByb2ZpbGUuIFRoZSBwYXRj
aCBzaG91bGQgaGVscCB3aXRoIHRoYXQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFNj
aG1pZHQgPG1zY2htaWR0QHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jICAgfCAxNCArKysrKysrLS0tLS0tLQo+ID4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYyB8ICA5ICsrKysrLS0t
LQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaCB8ICAy
ICstCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMo
LSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9jb21tb24uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMK
PiA+IGluZGV4IGMyZmRhNGZhNDE4OC4uMTRjZmZlNDlmYThjIDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+ID4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+ID4gQEAgLTE5OTIsMTkgKzE5
OTIsMTkgQEAgaWNlX2FjcXVpcmVfcmVzKHN0cnVjdCBpY2VfaHcgKmh3LCBlbnVtIGljZV9hcV9y
ZXNfaWRzIHJlcywKPiA+ICAgKi8KPiA+ICB2b2lkIGljZV9yZWxlYXNlX3JlcyhzdHJ1Y3QgaWNl
X2h3ICpodywgZW51bSBpY2VfYXFfcmVzX2lkcyByZXMpCj4gPiAgewo+ID4gLSAgICAgdTMyIHRv
dGFsX2RlbGF5ID0gMDsKPiA+ICsgICAgIHVuc2lnbmVkIGxvbmcgdGltZW91dDsKPiA+ICAgICAg
IGludCBzdGF0dXM7Cj4gPgo+ID4gLSAgICAgc3RhdHVzID0gaWNlX2FxX3JlbGVhc2VfcmVzKGh3
LCByZXMsIDAsIE5VTEwpOwo+ID4gLQo+ID4gICAgICAgLyogdGhlcmUgYXJlIHNvbWUgcmFyZSBj
YXNlcyB3aGVuIHRyeWluZyB0byByZWxlYXNlIHRoZSByZXNvdXJjZQo+ID4gICAgICAgICogcmVz
dWx0cyBpbiBhbiBhZG1pbiBxdWV1ZSB0aW1lb3V0LCBzbyBoYW5kbGUgdGhlbSBjb3JyZWN0bHkK
PiA+ICAgICAgICAqLwo+ID4gLSAgICAgd2hpbGUgKChzdGF0dXMgPT0gLUVJTykgJiYgKHRvdGFs
X2RlbGF5IDwgaHctPmFkbWlucS5zcV9jbWRfdGltZW91dCkpIHsKPiA+IC0gICAgICAgICAgICAg
bWRlbGF5KDEpOwo+ID4gKyAgICAgdGltZW91dCA9IGppZmZpZXMgKyAxMCAqIGh3LT5hZG1pbnEu
c3FfY21kX3RpbWVvdXQ7Cj4KPiBOb3QgbmVlZGVkIGZvciB0aGlzIHNlcmllcy4gQnV0IGl0IG9j
Y3VycyB0byBtZSB0aGF0IGEgY2xlYW4tdXAgd291bGQgYmUgdG8KPiB1c2UgSUNFX0NUTF9RX1NR
X0NNRF9USU1FT1VUIGRpcmVjdGx5IGFuZCByZW1vdmUgdGhlIHNxX2NtZF90aW1lb3V0IGZpZWxk
LAo+IGFzIGl0IHNlZW1zIHRvIGJlIG9ubHkgc2V0IHRvIHRoYXQgY29uc3RhbnQuCgpTaW1vbiwK
WW91IGFyZSByaWdodC4gSSBjYW4gZG8gdGhhdCBpbiB2Mi4KQlRXLCBpNDBlIGFuZCBpYXZmIGFy
ZSBzaW1pbGFyIHRvIGljZSBoZXJlLgpUaGFua3MsCk1pY2hhbAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
