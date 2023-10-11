Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 753717C765D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05168612FE;
	Thu, 12 Oct 2023 19:08:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05168612FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137724;
	bh=aFnM2rKwx3UaMEd5fvC0TiM3L85eyFMmhBpZ3/qymAs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=02vBzSbq+XI+S60TgKcCauP6X6Lqt+CjdFTRp3cqP2OqVMTZRtkjZ4vyfIiEvzK2I
	 0BEi4tqpYrpFEMbw/I2n2NiN9q2qVSWCLByvhOUC7iYYwidJR/AHTVv1NtA6bexBk0
	 L1/b+ij6COp/pIur1dBTfM62axVY4tN5qI2PFWG8hoJe7kjxpEiraZbjPLPWeReHDy
	 M441+cs9biM105eNZcqsIJyJfJIbASZXNf5zEMCIEJZMilE1SotukGAvSYb9yY6CEK
	 6BegEmonCshpTbilLXHP8YmDg2TBJlgSVypMkCxqEYlLw2C4Z6VnYD2c8bRfjeZq35
	 UOmtbw9W3J/xQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DqxPjVGCwLuo; Thu, 12 Oct 2023 19:08:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E46E606EB;
	Thu, 12 Oct 2023 19:08:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E46E606EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 971DB1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 01:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C39E40108
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 01:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C39E40108
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pk8auw930ner for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 01:56:29 +0000 (UTC)
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41CE1400C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 01:56:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41CE1400C6
Received: by mail-yb1-xb30.google.com with SMTP id
 3f1490d57ef6-d9a50ac5eabso1880740276.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 18:56:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696989388; x=1697594188;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XC8PueYOq+Wqn3z5e3szqjiYXCBBwjuhKP8Z06nA7jo=;
 b=pJ3zCWuyb7xD5Xz8ug4PFhMeGT4R9uOdHQV1IFVeYR411R88wqinMQ3C1hbFPGX0nV
 rMMecDzKRuWRAvQ9PSiTG8FKmELbE+5GZk/lZk/+xCBTO49wtpbL9KxeuiBCnO+eZVfu
 Rd/KL3nFOIE1cFEU9wEPxUvHNrRykuRSC4vHKofqqF7yZ44GZt0EXjlQQZLxRqCsFaaz
 q/tug9Z7SC55qQwbrA1Tvf5B5CMTXsTJio8eSAeJh9DiTg8aHnCXZkRqMwDwSoXixM78
 o/X5vrVrhWoExb+heLRf4SoV+/XCqvx9avObBwmqPlwqn5klJby9CPUN8I5LtgtwcyYc
 VZXg==
X-Gm-Message-State: AOJu0Yzxb6vlLIVu5kkwuGpTZQ1CT5+Fmx9zGNChvdLgse1ZnQ75uG6o
 TQsSBBa/sAf9cEGYkRxkMLS1PL8SRrH3k9blJ0uwXlWBezEq7STR
X-Google-Smtp-Source: AGHT+IFBPmknZnGhZ1ErD5xVPYQ4SLsQM4mNULHR3goKFPrtKDGF7axQoNhjZX5Ssec1Ue983aiMxqGLy8KoXKHYAvI=
X-Received: by 2002:a5b:151:0:b0:d81:8da3:348e with SMTP id
 c17-20020a5b0151000000b00d818da3348emr17706213ybp.41.1696989388082; Tue, 10
 Oct 2023 18:56:28 -0700 (PDT)
MIME-Version: 1.0
References: <20231008075221.61863-1-hayatake396@gmail.com>
 <20231010123235.4a6498da@kernel.org>
In-Reply-To: <20231010123235.4a6498da@kernel.org>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Wed, 11 Oct 2023 10:56:17 +0900
Message-ID: <CADFiAcKF08osdvd4EiXSR1YJ22TXrMu3b7ujkMTwAsEE8jzgOw@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696989388; x=1697594188; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XC8PueYOq+Wqn3z5e3szqjiYXCBBwjuhKP8Z06nA7jo=;
 b=knc2xCFg6z0pFUlPjXd+sfl84U0FCUfVoAweOjADme6T3f8eASRq6Tb7PJsE3rLAax
 73VZV7tuVZ2DcdmccFZJZCQ17XzgdSjq2kIvmtQDN7Kn4zgWpR2a8RONrI8egAHPi2KP
 IFzQBUeOs3WamcT4GpR5zXHt9KfyuTNpeO7lNohsFt0rkwQTzDd8ndFEXRID19arlFCy
 5Q+oYPyEDFkE9MTZdQ7oUHKZbjbNgCBdncFqkUy6k7S0KbUVImSREMvrvpcqZtl0aJ4a
 A0IoohwClsqCezGuePICUKwuw7Wj08JvevAG2BDc2gLfZXBT/gvdW/b8pTovhcnBwZmj
 Bt6g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=knc2xCFg
Subject: Re: [Intel-wired-lan] [PATCH net-next] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSmFrdWIgc2FuClRoYW5rIHlvdSBmb3IgeW91ciByZXBseSEKCkdUUCBnZW5lcmF0ZXMgYSBm
bG93IHRoYXQgaW5jbHVkZXMgYW4gSUQgY2FsbGVkIFRFSUQgdG8gaWRlbnRpZnkgdGhlCnR1bm5l
bC4gVGhpcyB0dW5uZWwgaXMgY3JlYXRlZCBmb3IgZWFjaCBVRSAoVXNlciBFcXVpcG1lbnQpLgpC
eSBwZXJmb3JtaW5nIFJTUyBiYXNlZCBvbiB0aGlzIGZsb3csIGl0IGlzIHBvc3NpYmxlIHRvIGFw
cGx5IFJTUyBmb3IKZWFjaCBjb21tdW5pY2F0aW9uIHVuaXQgZnJvbSB0aGUgVUUuCldpdGhvdXQg
dGhpcywgUlNTIHdvdWxkIG9ubHkgYmUgZWZmZWN0aXZlIHdpdGhpbiB0aGUgcmFuZ2Ugb2YgSVAg
YWRkcmVzc2VzLgpGb3IgaW5zdGFuY2UsIHRoZSBQR1cgY2FuIG9ubHkgcGVyZm9ybSBSU1Mgd2l0
aGluIHRoZSBJUCByYW5nZSBvZiB0aGUgU0dXLgpXaGF0IEknbSB0cnlpbmcgdG8gc2F5IGlzIHRo
YXQgUlNTIGJhc2VkIHNvbGVseSBvbiBJUCBhZGRyZXNzZXMgY2FuIGJlCnByb2JsZW1hdGljIGZy
b20gYSBsb2FkIGRpc3RyaWJ1dGlvbiBwZXJzcGVjdGl2ZSwgZXNwZWNpYWxseSBpZgp0aGVyZSdz
IGEgYmlhcyBpbiB0aGUgdGVybWluYWxzIGNvbm5lY3RlZCB0byBhIHBhcnRpY3VsYXIgYmFzZQpz
dGF0aW9uLgpBcyBhIHJlZmVyZW5jZSB0aGF0IGRpc2N1c3NlcyBhIHNpbWlsYXIgdG9waWMsIHBs
ZWFzZSBzZWUgdGhlIGxpbmsKYmVsb3coaXMgbm90IFJTUywgaXMgVEVJRCBGbG93KToKaHR0cHM6
Ly9kb2NzLm52aWRpYS5jb20vbmV0d29ya2luZy1ldGhlcm5ldC1zb2Z0d2FyZS9jdW11bHVzLWxp
bnV4LTU2L0xheWVyLTMvUm91dGluZy9FcXVhbC1Db3N0LU11bHRpcGF0aC1Mb2FkLVNoYXJpbmcv
I2d0cC1oYXNoaW5nCgpUaGFuayB5b3UgZm9yIHlvdXIgdW5kZXJzdGFuZGluZy4KLS0tClNvcnJ5
ISBNeSBlbWFpbCB3YXMgYmxvY2tlZCBiZWNhdXNlIGl0IHdhc24ndCBzZW50IGluIHBsYWluIHRl
eHQgbW9kZS4KSSd2ZSBtYWRlIHRoZSBuZWNlc3NhcnkgY2hhbmdlcyBhbmQgd2lsbCByZXNlbmQg
aXQuCgoyMDIz5bm0MTDmnIgxMeaXpSjmsLQpIDQ6MzIgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2Vy
bmVsLm9yZz46Cj4KPiBPbiBTdW4sICA4IE9jdCAyMDIzIDA3OjUyOjIyICswMDAwIFRha2VydSBI
YXlhc2FrYSB3cm90ZToKPiA+IFRoaXMgaXMgYSBwYXRjaCB0aGF0IGVuYWJsZXMgUlNTIGZ1bmN0
aW9uYWxpdHkgZm9yIEdUUCBwYWNrZXRzIHVzaW5nCj4gPiBldGh0b29sLgo+ID4gQSB1c2VyIGNh
biBpbmNsdWRlIGhlciBURUlEIGFuZCBtYWtlIFJTUyB3b3JrIGZvciBHVFAtVSBvdmVyIElQdjQg
YnkKPiA+IGRvaW5nIHRoZSBmb2xsb3dpbmc6Cj4gPiBgZXRodG9vbCAtTiBlbnMzIHJ4LWZsb3ct
aGFzaCBndHB1NCBzZGAKPiA+IEluIGFkZGl0aW9uIHRvIGd0cHUoNHw2KSwgd2Ugbm93IHN1cHBv
cnQgZ3RwYyg0fDYpLCBndHB1KDR8NillLAo+ID4gZ3RwdSg0fDYpdSwgYW5kIGd0cHUoNHw2KWQu
Cj4KPiBUaGlzIGlzIGZvciB0dW5uZWxpbmcsIHJpZ2h0PyBJREsgbXVjaCBhYm91dCBHVFAgYnV0
IHdlIGRvbid0IGhhdmUgZmxvdwo+IHR5cGVzIGZvciBvdGhlciB0dW5uZWxpbmcgcHJvdG9zLiBX
aGF0IG1ha2VzIHRoaXMgb25lIHNwZWNpYWw/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
