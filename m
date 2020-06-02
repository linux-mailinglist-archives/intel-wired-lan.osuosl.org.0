Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D35F1EBB89
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jun 2020 14:22:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A4AE8204B4;
	Tue,  2 Jun 2020 12:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NJWdNcq86skM; Tue,  2 Jun 2020 12:22:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B5876204F7;
	Tue,  2 Jun 2020 12:22:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 775501BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 12:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 694C5204B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 12:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01eYoLvcYp47 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2020 12:21:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 3787A2044F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 12:21:56 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id x14so3218991wrp.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Jun 2020 05:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zVkoeEucMeIB6OH4Qmi1bhGaxhtXTko9euXWTEwxvl0=;
 b=XscHkRVto8JiXm+09mevclIQBPj9mO0eUQeqbr2EOFQD1wBZuQYDPTkHMsUKzYllY+
 8JG0gu+OEHHme4sIVkhkWKa+urWzI9Jcg3CxzaveH+UiFR04e6s9ZAN3f2sT0ozr0c77
 ld4LKdO1cXAiEBh+wECRRew7L3xF+wxpUHG9A7seynd8pLlVkCbwLd0UYMXbIL2stsFb
 ZSSiqtc9Ad+wuX9HxwIAN2MIeVmZxAiDNby1VtwQYkC+zVQWJoHypm4KkaJmtanm95+a
 eRpHR4FGVBZtPD7GeoQihdrtESR6ERYVQIA/NjvYqnJrDY/phmdjWJG8iHWPpHhJ+Xvf
 BQDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zVkoeEucMeIB6OH4Qmi1bhGaxhtXTko9euXWTEwxvl0=;
 b=SOJrg1/ZYz28gepHxkMNTEAZUGVigODWCaOaDSbIa7nQci6ZoYHD0WjzAte1o4qW4C
 /l2PnZJfuuq3vK6sWVCHMeVTHT3rDKIX0dYh/1B2TyxGdtMFpEOrPUa1FIRvL1n2rUAU
 gFe7j6knZa7Tw0oFCmct/p6KDeyMunuuf8bBSSjGr5mwpqCurT910bnQ9lApvPzMkwCm
 Llu25Ex/cdvpKVmlZ2iKDRicxtIYHOwQYUXqsc523jSwiVPpAo7fngsZkVCTvKrPnc1I
 0svO1QIQTQBWoZ223K/ej7Ta3u/AvE0Fp9T7fEErocndxOHSpjQ1onvIAf1t55ShFjC4
 2eiw==
X-Gm-Message-State: AOAM533rfeHJsOFlLTxtJZ3oxVZAvC/htw3ug0GhjLUGt/c+i11V9wFA
 5avwKuZ73ZIbHwpm9YqF/7N5ajbJaMQdLrbCdGs=
X-Google-Smtp-Source: ABdhPJysJTB7g4BRZDYt/1PUgTUC9O1tUv0IHmEXYc46vBbqJHejZsDndVIn+FSCxZYfOZRCtR1fxnUlrpUMR1Godn0=
X-Received: by 2002:adf:edc8:: with SMTP id v8mr25154696wro.176.1591100514661; 
 Tue, 02 Jun 2020 05:21:54 -0700 (PDT)
MIME-Version: 1.0
References: <1591099973-3091-1-git-send-email-lirongqing@baidu.com>
In-Reply-To: <1591099973-3091-1-git-send-email-lirongqing@baidu.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 2 Jun 2020 14:21:42 +0200
Message-ID: <CAJ+HfNgOoFecFbA3p7QM=bFwuV1k6895w57yH4EWFtSPNZ_wQg@mail.gmail.com>
To: Li RongQing <lirongqing@baidu.com>, Netdev <netdev@vger.kernel.org>, 
 David Miller <davem@davemloft.net>
Subject: Re: [Intel-wired-lan] [PATCH][v2] i40e: fix wrong index in
 i40e_xsk_umem_dma_map
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
Cc: bpf <bpf@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyIEp1biAyMDIwIGF0IDE0OjEzLCBMaSBSb25nUWluZyA8bGlyb25ncWluZ0BiYWlk
dS5jb20+IHdyb3RlOgo+Cj4gVGhlIGRtYSBzaG91bGQgYmUgdW5tYXBwZWQgaW4gcm9sbGJhY2sg
cGF0aCBmcm9tCj4gdW1lbS0+cGFnZXNbMF0uZG1hIHRpbGwgdW1lbS0+cGFnZXNbaS0xXS5kbWEg
d2hpY2gKPiBpcyBsYXN0IGRtYSBtYXAgYWRkcmVzcwo+Cj4gRml4ZXM6IDBhNzE0MTg2ZDNjMCAi
KGk0MGU6IGFkZCBBRl9YRFAgemVyby1jb3B5IFJ4IHN1cHBvcnQpIgo+IFNpZ25lZC1vZmYtYnk6
IExpIFJvbmdRaW5nIDxsaXJvbmdxaW5nQGJhaWR1LmNvbT4KPiAtLS0KPiBkaWZmIHdpdGggdjE6
IGFkZCBkZXNjcmlwdGlvbgo+CgpUaGFua3MhIEkgdGhpbmsgdGhpcyBzaG91bGQgYmUgcXVldWVk
IGZvciAtc3RhYmxlLgoKQWNrZWQtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVs
LmNvbT4KCgo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgfCA0
ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNr
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKPiBpbmRleCAw
YjdkMjkxOTJiMmMuLmM5MjY0MzgxMThlYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfeHNrLmMKPiBAQCAtMzcsOSArMzcsOSBAQCBzdGF0aWMgaW50IGk0MGVf
eHNrX3VtZW1fZG1hX21hcChzdHJ1Y3QgaTQwZV92c2kgKnZzaSwgc3RydWN0IHhkcF91bWVtICp1
bWVtKQo+Cj4gIG91dF91bm1hcDoKPiAgICAgICAgIGZvciAoaiA9IDA7IGogPCBpOyBqKyspIHsK
PiAtICAgICAgICAgICAgICAgZG1hX3VubWFwX3BhZ2VfYXR0cnMoZGV2LCB1bWVtLT5wYWdlc1tp
XS5kbWEsIFBBR0VfU0laRSwKPiArICAgICAgICAgICAgICAgZG1hX3VubWFwX3BhZ2VfYXR0cnMo
ZGV2LCB1bWVtLT5wYWdlc1tqXS5kbWEsIFBBR0VfU0laRSwKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgRE1BX0JJRElSRUNUSU9OQUwsIEk0MEVfUlhfRE1BX0FUVFIpOwo+
IC0gICAgICAgICAgICAgICB1bWVtLT5wYWdlc1tpXS5kbWEgPSAwOwo+ICsgICAgICAgICAgICAg
ICB1bWVtLT5wYWdlc1tqXS5kbWEgPSAwOwo+ICAgICAgICAgfQo+Cj4gICAgICAgICByZXR1cm4g
LTE7Cj4gLS0KPiAyLjE2LjIKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
