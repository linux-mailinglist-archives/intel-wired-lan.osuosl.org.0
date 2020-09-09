Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 154B9262F66
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Sep 2020 15:56:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E2CE8705B;
	Wed,  9 Sep 2020 13:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pDfYeKau2LQJ; Wed,  9 Sep 2020 13:56:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4E7B8705C;
	Wed,  9 Sep 2020 13:56:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC5F71BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 13:56:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E3AF203D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 13:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x+HgC1z0jlmJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Sep 2020 13:56:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E9FA2034F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 13:56:20 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id s13so2368602wmh.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Sep 2020 06:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zLNjrf+RPSwU1achccfvQ6mA3Vt8oX8oHZ1Kj6a2hGk=;
 b=usexzns/FdygjeeyD2H7JASXGevgz8/+lKR+qdtsI192xsGYNdFvZgHJ/PKpcExCik
 xIIauuaYdSnaT8/O47RLMXqHOXyxod/RlGP5LYh5aC4lcx3udWZOSt0cpu001jTOSHYn
 g/ZHFKsxFHk9Cx+VesNHspeu3vNqgK+oeqWjkJalLFHaQFjQmLyloimQ9pvW8rf0SJ5G
 tCT3VC9A4Oj90pL1q8Qz3qZrWC8Tfee3teWzs72M8ovMo2/bouCqlrVhc19yTN4FJcjn
 b9RBCUCMyyughrDnElSyHPBIV9Osn2+mxwXWozbTlWAa1slI2qJSMQB+/OBmgmU4d8+Q
 7eQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zLNjrf+RPSwU1achccfvQ6mA3Vt8oX8oHZ1Kj6a2hGk=;
 b=p2b3CkqG+0o1Qv6KPRr/9fadcquXF4e37LKTpKj+Bt8ZS+valmggGnTBCvxGC2/Eh4
 J9EQzRWIxrSq6Sxx/q7yr8icMNyEPgiXfBMzqUEJrpLkX0hw4Led+U9A36ajYzm5jn/E
 soNuSeew5Wnbe/RMMzOtf+d4EIo4xLWr515LX/XbliV2fPGgKFZ+RAiohrT/rMmibtsA
 k48lxdUPsTYbOVCO/FguOitwXLz7AInQ88wDzpmxjtU5AkPkwtok5UV1MXHtzYdhK8mG
 B3KUGkRXt3Do8QQvuWypP4H8SC1l9g1iAliK82VsahhWARFTFNXTz7IIXO2TEtk5ABij
 muPA==
X-Gm-Message-State: AOAM531PGoqaUE9As+ifN3Wt9fd9GoloEQKpM22D0NRBmKGZp6yEg1IY
 mWSrHILLh8mtcHsDyrUXIcpzr3pdwRS8yw7GnLQ=
X-Google-Smtp-Source: ABdhPJzGzvvUUCMWwLzes7DVwhtv0V5dcoTY8yggjcHhhYxt9rhX0EcFoZnLr3Ldx9+/ykRGBGbFh8wwxAZk0dKRATw=
X-Received: by 2002:a7b:c4d3:: with SMTP id g19mr3826168wmk.165.1599659778699; 
 Wed, 09 Sep 2020 06:56:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200908123440.11278-1-marekx.majtyka@intel.com>
In-Reply-To: <20200908123440.11278-1-marekx.majtyka@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Wed, 9 Sep 2020 15:56:07 +0200
Message-ID: <CAJ+HfNgysVCeBhkq+joCkMVrwnaOLaWZeo+fSo-S7w9U_ozNdQ@mail.gmail.com>
To: Marek Majtyka <alardam@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: remove redundant
 assigment
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 maciejromanfijalkowski@gmain.com, Netdev <netdev@vger.kernel.org>,
 Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCA4IFNlcCAyMDIwIGF0IDE1OjUzLCBNYXJlayBNYWp0eWthIDxhbGFyZGFtQGdtYWls
LmNvbT4gd3JvdGU6Cj4KPiBSZW1vdmUgYSByZWR1bmRhbnQgYXNzaWdtZW50IG9mIHRoZSBzb2Z0
d2FyZSByaW5nIHBvaW50ZXIgaW4gdGhlIGk0MGUKPiBkcml2ZXIuIFRoZSB2YXJpYWJsZSBpcyBh
c3NpZ25lZCB0d2ljZSB3aXRoIG5vIHVzZSBpbiBiZXR3ZWVuLCBzbyBqdXN0Cj4gZ2V0IHJpZCBv
ZiB0aGUgZmlyc3Qgb2NjdXJyZW5jZS4KPgo+IEZpeGVzOiAzYjRmMGI2NmMyYjMgKCJpNDBlLCB4
c2s6IE1pZ3JhdGUgdG8gbmV3IE1FTV9UWVBFX1hTS19CVUZGX1BPT0wiKQo+IFNpZ25lZC1vZmYt
Ynk6IE1hcmVrIE1hanR5a2EgPG1hcmVreC5tYWp0eWthQGludGVsLmNvbT4KCk5pY2UhCgpBY2tl
ZC1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKSG1tLCB0aGlzIGNv
dWxkIGFjdHVhbGx5IGdvIHRvIHRoZSBuZXQgdHJlZS4KCgpCasO2cm4KCj4gLS0tCj4gIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyB8IDEgLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV94c2suYwo+IGluZGV4IDJhMTE1M2Q4OTU3Yi4uODY2MWY0NjFmNjIwIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwo+IEBAIC0zMDYsNyArMzA2
LDYgQEAgaW50IGk0MGVfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3Jpbmcs
IGludCBidWRnZXQpCj4gICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gICAgICAg
ICAgICAgICAgIH0KPgo+IC0gICAgICAgICAgICAgICBiaSA9IGk0MGVfcnhfYmkocnhfcmluZywg
cnhfcmluZy0+bmV4dF90b19jbGVhbik7Cj4gICAgICAgICAgICAgICAgIHNpemUgPSAocXdvcmQg
JiBJNDBFX1JYRF9RVzFfTEVOR1RIX1BCVUZfTUFTSykgPj4KPiAgICAgICAgICAgICAgICAgICAg
ICAgIEk0MEVfUlhEX1FXMV9MRU5HVEhfUEJVRl9TSElGVDsKPiAgICAgICAgICAgICAgICAgaWYg
KCFzaXplKQo+IC0tCj4gMi4yMC4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
