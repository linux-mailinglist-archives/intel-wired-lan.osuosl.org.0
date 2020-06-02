Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ACF1EBA5B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jun 2020 13:27:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD672847EB;
	Tue,  2 Jun 2020 11:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L7kVzSyXumPn; Tue,  2 Jun 2020 11:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0929684922;
	Tue,  2 Jun 2020 11:27:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47F4B1BF276
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 11:27:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 373D9204D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 11:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bxpN0eiuK5xc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2020 11:27:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id E371B20367
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 11:27:07 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id t18so3016591wru.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Jun 2020 04:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3Fvjz5nBs/wCPZQr4wyZqYWxZlG2zuno0ejPtDD3mqU=;
 b=ctgK7uh3jB8lao2PJrtxn1AgQt7DY3C9KKjwPEMP2Xld3UXepVhpOf/Q62b5pJwWcw
 4xE7xu6YoXVDIR0VkU1CWdx+owZXci96PLl0MKlZhuAAbNmdc/TXme2y7BeqwOMNLbiq
 ErPDweuzXSEIjhHR7n5o8Jy3v8FtfXyrvKvHJ+iAtGHOecUpth6PFG5ISAKf6SmB10D/
 V3q6x8scgl4hWVTb7bGbV+Cu+dgicXXbsaPD+AeJvMrtZcbBloFtnnmYMszHJ1bj5PQA
 RXb2gEnRHyL+h9FNmcL+CJC+wBtUxkQzTcfvGewvjf0Y6xV3fmBS8QlLwQQufrFKI/5C
 IWuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3Fvjz5nBs/wCPZQr4wyZqYWxZlG2zuno0ejPtDD3mqU=;
 b=jpCmGevb8z8qPGEbyGfD5CX3cRZm62Jr5XM2gsODSnozz8SJmVMC85ApcDRvMUIom/
 Ia1a/sXfb84KPmmqGohIuTDaDkViBtjnDYltTuI49qolkV1Lor5APr3ZQELkPpfJGPEn
 aFvNsFuv6NIO/SVvszr5RivcPiLAem0JW12Eox8O6bZEssAm2qpaVsaewXccOZaVE13f
 SIvzTE1LblP3nnTC2oYuVIB4zsjnrmy9dg6zRtgeeypMOcXn+g0yCVPW/Y090XHdd2G/
 7AJTWTK7I1cOdwbx/UCxzYp28S/QDPoVoBB5xkgrvnguv6Mr0+t8DefxIWm5kv+Aqu8l
 zkPg==
X-Gm-Message-State: AOAM531KJrBH73vPBqTilJaZ/+sVEIbnkxzkTedv8Gf9vSYTGwUUr5RF
 cdNCMcbKjVCClGsP/i+LOAbuWlp/tSO5tA3oXtQ=
X-Google-Smtp-Source: ABdhPJwdEnHroVV2FiwYU0FGgqX8cmpzRgjiDdPOUkntb86drOV2W4P2ZkFWMlv2sB1PM4Gz5YyVYxaBo3cRqMT02Lc=
X-Received: by 2002:adf:e90b:: with SMTP id f11mr25491527wrm.248.1591097226370; 
 Tue, 02 Jun 2020 04:27:06 -0700 (PDT)
MIME-Version: 1.0
References: <1591089148-959-1-git-send-email-lirongqing@baidu.com>
In-Reply-To: <1591089148-959-1-git-send-email-lirongqing@baidu.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 2 Jun 2020 13:26:55 +0200
Message-ID: <CAJ+HfNjXh882Dc2N9qpYDGhEuTed9Vp36RuHSXnBMmWXfV9iHg@mail.gmail.com>
To: Li RongQing <lirongqing@baidu.com>, 
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Netdev <netdev@vger.kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix wrong index in
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
Cc: bpf <bpf@vger.kernel.org>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyIEp1biAyMDIwIGF0IDExOjIwLCBMaSBSb25nUWluZyA8bGlyb25ncWluZ0BiYWlk
dS5jb20+IHdyb3RlOgo+CgpMaSwgdGhhbmtzIGZvciB0aGUgcGF0Y2ghIEdvb2QgY2F0Y2ghCgpQ
bGVhc2UgYWRkIGEgcHJvcGVyIGRlc2NyaXB0aW9uIGZvciB0aGUgcGF0Y2guIFRoZSBmaXggc2hv
dWxkIGJlIGFkZGVkCnRvIHRoZSBzdGFibGUgYnJhbmNoZXMgKDUuNyBhbmQgZWFybGllcikuIE5v
dGUgdGhhdCB0aGlzIGNvZGUgd2FzCnJlY2VudGx5IHJlbW92ZWQgaW4gZmF2b3Igb2YgdGhlIG5l
dyBBRl9YRFAgYnVmZmVyIGFsbG9jYXRpb24gc2NoZW1lLgoKCkJqw7ZybgoKPiBGaXhlczogMGE3
MTQxODZkM2MwICIoaTQwZTogYWRkIEFGX1hEUCB6ZXJvLWNvcHkgUnggc3VwcG9ydCkiCj4gU2ln
bmVkLW9mZi1ieTogTGkgUm9uZ1FpbmcgPGxpcm9uZ3FpbmdAYmFpZHUuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgfCA0ICsrLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKPiBpbmRleCAwYjdkMjkxOTJiMmMu
LmM5MjY0MzgxMThlYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfeHNrLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfeHNrLmMKPiBAQCAtMzcsOSArMzcsOSBAQCBzdGF0aWMgaW50IGk0MGVfeHNrX3VtZW1fZG1h
X21hcChzdHJ1Y3QgaTQwZV92c2kgKnZzaSwgc3RydWN0IHhkcF91bWVtICp1bWVtKQo+Cj4gIG91
dF91bm1hcDoKPiAgICAgICAgIGZvciAoaiA9IDA7IGogPCBpOyBqKyspIHsKPiAtICAgICAgICAg
ICAgICAgZG1hX3VubWFwX3BhZ2VfYXR0cnMoZGV2LCB1bWVtLT5wYWdlc1tpXS5kbWEsIFBBR0Vf
U0laRSwKPiArICAgICAgICAgICAgICAgZG1hX3VubWFwX3BhZ2VfYXR0cnMoZGV2LCB1bWVtLT5w
YWdlc1tqXS5kbWEsIFBBR0VfU0laRSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgRE1BX0JJRElSRUNUSU9OQUwsIEk0MEVfUlhfRE1BX0FUVFIpOwo+IC0gICAgICAgICAg
ICAgICB1bWVtLT5wYWdlc1tpXS5kbWEgPSAwOwo+ICsgICAgICAgICAgICAgICB1bWVtLT5wYWdl
c1tqXS5kbWEgPSAwOwo+ICAgICAgICAgfQo+Cj4gICAgICAgICByZXR1cm4gLTE7Cj4gLS0KPiAy
LjE2LjIKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
