Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6355B3CD5D1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jul 2021 15:40:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC27083886;
	Mon, 19 Jul 2021 13:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OoTqjHHuXByS; Mon, 19 Jul 2021 13:40:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD9538380E;
	Mon, 19 Jul 2021 13:40:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 805741BF298
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 02:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E002401D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 02:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AFIhH-2TZOcS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jul 2021 02:49:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAD57400E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 02:49:30 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id g12so12039508qtb.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 19:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QjOI48s72H+Xl2byafvGyOneGgwizH2KHF/7bNKQchE=;
 b=sQV8outJz+6b7wG8pCz6FLz+/q1KnTgFKbZW2uF9N8ql/QD95YJEguBCEIMSyOcwYm
 g8IWJ/psNSpuVzhLutpsORsxm8bZUXw+SH2G3BZM42Rm2ZaCqWtsG+tmZRoR2HxHhEGX
 oaLGShvS/YTRs1tqApxct4eSBHuOWZtqbs2pyD/+IBIHZ7PUIguKQXAuK14LswLz/RFH
 B6MPJJAlJxLEw2fAbo++G88DuozdvWaP0ovsA+p7M4/Evot5cLbog6btnddcSMbNUkzS
 6NSdX2EgIFOaW2aWXQgPi+43uyI1bQgDRP3U3wXZe5HMbNoPM81k1Zra/EbUzLv+PJw/
 GtQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QjOI48s72H+Xl2byafvGyOneGgwizH2KHF/7bNKQchE=;
 b=SQTuSiatNDhaZm3pFNbzG+MquSY0YZHzLs8CiZXh8kvYnzJIX3BM0fEjr06LnOmfAi
 /zL9hXT1G9/bL/BNZUnm78jsMNaT6zR+UM1OTYvThLbV4Jxbwf9LTi8mxSPNkRHqhxe8
 vtZ4rjzFu1vFHPCM1aiVc2PK0Qb7me/3K/xR9+qRej9cAN6/ghqATCm4kZoX3s31v2gr
 7RXYmjjquM9E+fsUeAu0Mkd5+oLMwSoCKQmRYRXEb/FbYRz1exlmL6/QKPTifseLkW+t
 8fuGY5HsrVDVGdrvGxblws+9pCJ9PnOcJ5H/ZeH1Jg0yoW7JNmrchcJ9Wrkg1gIrmdDe
 Wq1A==
X-Gm-Message-State: AOAM5323K9sRTmfbsitK5pNz9fTX7GsiD+Y/NbcDPb/EWz5Mb39Rdc9v
 wYmXen4rs6oRS4c0/wg+u+j0ikFnMAtGd0LoLs0=
X-Google-Smtp-Source: ABdhPJzOfvu8Jk4YGlqlIq5u5Nf0nyq3jqmTG9FcpceEUas2pmlvtpHsTY4cy1dd7XkCzlQrH4WdKj2KJe75zbwY7ss=
X-Received: by 2002:aed:3167:: with SMTP id 94mr20286965qtg.33.1626662969593; 
 Sun, 18 Jul 2021 19:49:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAOSf1CGVpogQGAatuY_N0db6OL2BFegGtj6VTLA9KFz0TqYBQg@mail.gmail.com>
 <20210708154550.GA1019947@bjorn-Precision-5520>
 <CAOSf1CHtHLyEHC58jwemZS6j=jAU2OrrYitkUYmdisJtuFu4dw@mail.gmail.com>
 <20210718225059.hd3od4k4on3aopcu@pali>
In-Reply-To: <20210718225059.hd3od4k4on3aopcu@pali>
From: "Oliver O'Halloran" <oohall@gmail.com>
Date: Mon, 19 Jul 2021 12:49:18 +1000
Message-ID: <CAOSf1CHOrUBfibO0t6Zr2=SZ7GjLTiAzfoKBeZL8RXdcC+Ou3A@mail.gmail.com>
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
X-Mailman-Approved-At: Mon, 19 Jul 2021 13:40:09 +0000
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 netdev@vger.kernel.org, linux-pci <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBKdWwgMTksIDIwMjEgYXQgODo1MSBBTSBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwu
b3JnPiB3cm90ZToKPgo+IEFuZCBkbyB3ZSBoYXZlIHNvbWUgc29sdXRpb24gZm9yIHRoaXMga2lu
ZCBvZiBpc3N1ZT8gVGhlcmUgYXJlIG1vcmUgUENJZQo+IGNvbnRyb2xsZXJzIC8gcGxhdGZvcm1z
IHdoaWNoIGRvIG5vdCBsaWtlIE1NSU8gcmVhZC93cml0ZSBvcGVyYXRpb24gd2hlbgo+IGNhcmQg
LyBsaW5rIGlzIG5vdCBjb25uZWN0ZWQuCgpEbyB5b3UgaGF2ZSBzb21lIGFjdHVhbCBleGFtcGxl
cz8gVGhlIGZldyB0aW1lcyBJJ3ZlIHNlZW4gdGhvc2UKY3Jhc2hlcyB3ZXJlIGR1ZSB0byBicm9r
ZW4gZmlybXdhcmUtZmlyc3QgZXJyb3IgaGFuZGxpbmcuIFRoZSBBRVIKbm90aWZpY2F0aW9ucyB3
b3VsZCBiZSBlc2NhbGF0ZWQgaW50byBzb21lIGtpbmQgb2YgQUNQSSBlcnJvciB3aGljaAp0aGUg
a2VybmVsIGRpZG4ndCBoYXZlIGEgZ29vZCB3YXkgb2YgZGVhbGluZyB3aXRoIHNvIGl0IHBhbmlj
a2VkCmluc3RlYWQuCgpBc3N1bWluZyBpdCBpcyBhIHJlYWwgcHJvYmxlbSB0aGVuIGFzIEJqb3Ju
IHBvaW50ZWQgb3V0IHRoaXMgc29ydCBvZgpoYWNrIGRvZXNuJ3QgcmVhbGx5IGZpeCB0aGUgaXNz
dWUgYmVjYXVzZSBob3RwbHVnIGFuZCBBRVIKbm90aWZpY2F0aW9ucyBhcmUgZnVuZGFtZW50YWxs
eSBhc3luY2hyb25vdXMuIElmIHRoZSBkcml2ZXIgaXMKYWN0aXZlbHkgdXNpbmcgdGhlIGRldmlj
ZSB3aGVuIHRoZSBlcnJvciAvIHJlbW92YWwgaGFwcGVucyB0aGVuIHRoZQpwY2lfZGV2X2lzX2Rp
c2Nvbm5lY3RlZCgpIGNoZWNrIHdpbGwgcGFzcyBhbmQgdGhlIE1NSU8gd2lsbCBnbwp0aHJvdWdo
LiBJZiB0aGUgTU1JTyBpcyBwb2lzb25vdXMgYmVjYXVzZSBvZiBkdW1iIGhhcmR3YXJlIHRoZW4g
dGhpcwpzb3J0IG9mIGhhY2sgd2lsbCBvbmx5IHBhcGVyIG92ZXIgdGhlIGlzc3VlLgoKPiBJZiB3
ZSBkbyBub3QgcHJvdmlkZSBhIHdheSBob3cgdG8gc29sdmUgdGhlc2UgcHJvYmxlbXMgdGhlbiB3
ZSBjYW4KPiBleHBlY3QgdGhhdCBwZW9wbGUgd291bGQganVzdCBoYWNrIGV0aGVybmV0IC8gd2lm
aSAvIC4uLiBkZXZpY2UgZHJpdmVycwo+IHdoaWNoIGFyZSBjdXJyZW50bHkgY3Jhc2hpbmcgYnkg
cGF0Y2hlcyBsaWtlIGluIHRoaXMgdGhyZWFkLgo+Cj4gTWF5YmUgUENJIHN1YnN5c3RlbSBjb3Vs
ZCBwcm92aWRlIHdyYXBwZXIgZnVuY3Rpb24gd2hpY2ggaW1wbGVtZW50cwo+IGFib3ZlIHBhdHRl
cm4gYW5kIHdoaWNoIGNhbiBiZSB1c2VkIGJ5IGRldmljZSBkcml2ZXJzPwoKV2UgY291bGQgZG8g
dGhhdCBhbmQgSSB0aGluayB0aGVyZSB3YXMgYSBwcm9wb3NhbCB0byBhZGQgc29tZQpwY2lfcmVh
ZGwocGRldiwgPGFkZHI+KSBzdHlsZSB3cmFwcGVycyBhdCBvbmUgcG9pbnQuIE9uIHBvd2VycGMK
dGhlcmUncyBob29rcyBpbiB0aGUgYXJjaCBwcm92aWRlZCBNTUlPIGZ1bmN0aW9ucyB0byBkZXRl
Y3QgZXJyb3IKcmVzcG9uc2VzIGFuZCBraWNrIG9mZiB0aGUgZXJyb3IgaGFuZGxpbmcgbWFjaGlu
ZXJ5IHdoZW4gYSBwcm9ibGVtIGlzCmRldGVjdGVkLiBUaG9zZSBob29rcyBhcmUgbWFpbmx5IHRo
ZXJlIHRvIGhlbHAgdGhlIHBsYXRmb3JtIGRldGVjdAplcnJvcnMgdGhvdWdoIGFuZCB0aGV5IGRv
bid0IG1ha2UgbGlmZSBtdWNoIGVhc2llciBmb3IgZHJpdmVycy4gRHVlIHRvCmxvY2tpbmcgY29u
Y2VybnMgdGhlIGRyaXZlcidzIC5lcnJvcl9kZXRlY3RlZCgpIGNhbGxiYWNrIGNhbm5vdCBiZQpj
YWxsZWQgaW4gdGhlIE1NSU8gaG9vayBzbyBldmVuIHdoZW4gdGhlIHBsYXRmb3JtIGRldGVjdHMg
ZXJyb3JzCnN5bmNocm9ub3VzbHkgdGhlIGRyaXZlciBub3RpZmljYXRpb25zIG11c3QgaGFwcGVu
IGFzeW5jaHJvbm91c2x5LiBJbgp0aGUgbWVhbndoaWxlIHRoZSBkcml2ZXIgc3RpbGwgbmVlZHMg
dG8gaGFuZGxlIHRoZSAweEZGcyByZXNwb25zZQpzYWZlbHkgYW5kIHRoZXJlJ3Mgbm90IG11Y2gg
d2UgY2FuIGRvIGZyb20gdGhlIHBsYXRmb3JtIHNpZGUgdG8gaGVscAp0aGVyZS4KCk9saXZlcgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
