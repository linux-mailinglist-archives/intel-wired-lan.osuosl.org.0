Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0321091E0A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2019 09:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B89F384CE0;
	Mon, 19 Aug 2019 07:39:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k3cmQsH9L7PG; Mon, 19 Aug 2019 07:39:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B31985B8A;
	Mon, 19 Aug 2019 07:39:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D86B1BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 07:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7960A8316D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 07:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OBOWBdnfPNLw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2019 07:39:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1DF1383167
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 07:39:41 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id x4so905334qts.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 00:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pX5vzrCrWspkDa0PwEU135ZuQd7KwdNzkE2O8jHiKBs=;
 b=iSJxQNALgQU3Ul2Q56P4y4rASj+dQUEc1gDUuOD7I3Ff1j9edsP+30/F9pCmFWN9SD
 dwRjZJYm+dsXJNH2hp5ZDLHt8aAy2FHzD60JoemZLNp6xMBIre3P6NAGVR7tadIVwATj
 BWh85aCEY1L+brMunAzqMQFtGT0GQLXcE3sm0EP5Cyjf2kVZWFGa069HFlYO3VjLZOQf
 IoiczLGg1uE8VZ/Lzvq50iGuhzwspZYMEfGHOYYhYl4FcDQJnIouYPz2n7xRSPzchozN
 kMd58bQ0vaNjpmO2HcntLdyf3WSxvLL8zx+/C/0I6cd+DQvR8sMP9hi99U9jEfq4JAWa
 YcvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pX5vzrCrWspkDa0PwEU135ZuQd7KwdNzkE2O8jHiKBs=;
 b=eFRovcJEs/83iQbtinIa+uiH+a+++w5sVjbd0sjK0cn9LN/CTpM3Hfyt0V5WYrUp/E
 AMDZxugAlzLV3MQr4krH34NlTckyCleqmjC3gAchT+Ia+tKN7Q3dQb7nzUYph0FgGPzZ
 LGY+FYmgzfkDFH8nmWVqW/ajvWFmPpCURx8+nDfxl/WGwXZUer6PNDvunbXdmsBildq1
 eviqvaMt7aKGUoaPJnsbMLvjqpRaZCnP1x4DOaRA1E/s61mWkvplyzw27zE4CINhHmTa
 a10tuwkUmhtxG2+TJD7QbyyYUAh3iAg7vIaFPJ66xGrHP3wffGZaHh84EjGSjPLw5wJe
 Qhww==
X-Gm-Message-State: APjAAAVQ2lxLwYrruazULhFqo9HrvqjYuGxusivUdUeZeVjFsTgoqEvy
 wvK198anOcuI7NHmwDs4vg0d2ILg6Q7U7lNom9w=
X-Google-Smtp-Source: APXvYqwZd0Zy2/2KscKfhkCmVEkfVWBj1p7q1DV4+0rtdAwNPScBEsILu18gDy5NMadWD6yYSABKvDxK/2lL1ro6nwo=
X-Received: by 2002:ad4:50d1:: with SMTP id e17mr9993601qvq.9.1566200379933;
 Mon, 19 Aug 2019 00:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
 <bebfb097-5357-91d8-ebc7-2f8ede392ad7@intel.com>
 <cc3a09eb-bcb8-a6e1-7175-77bddaf10c11@intel.com>
 <CAJ+HfNj=devuEky3VwbibA-j+o=bKi4Gg=MeHsuuDGAKc9p2Vw@mail.gmail.com>
 <331CAEDB-776A-4928-93EF-F45F1339848F@gmail.com>
In-Reply-To: <331CAEDB-776A-4928-93EF-F45F1339848F@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 19 Aug 2019 09:39:28 +0200
Message-ID: <CAJ+HfNgeSYRuQ8+80zepsAj8f+gdXEqsnbebuvmJggYOBUsj9w@mail.gmail.com>
To: Jonathan Lemon <jonathan.lemon@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/5] Add support for SKIP_BPF
 flag for AF_XDP sockets
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
Cc: maciej.fijalkowski@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, tom.herbert@intel.com,
 Netdev <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU2F0LCAxNyBBdWcgMjAxOSBhdCAwMDowOCwgSm9uYXRoYW4gTGVtb24gPGpvbmF0aGFuLmxl
bW9uQGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gMTYgQXVnIDIwMTksIGF0IDY6MzIsIEJqw7ZybiBU
w7ZwZWwgd3JvdGU6ClsuLi5dCj4gPgo+ID4gVG9kYXksIGZyb20gYSBkcml2ZXIgcGVyc3BlY3Rp
dmUsIHRvIGVuYWJsZSBYRFAgeW91IHBhc3MgYSBzdHJ1Y3QKPiA+IGJwZl9wcm9nIHBvaW50ZXIg
dmlhIHRoZSBuZG9fYnBmLiBUaGUgcHJvZ3JhbSBnZXQgZXhlY3V0ZWQgaW4KPiA+IEJQRl9QUk9H
X1JVTiAodmlhIGJwZl9wcm9nX3J1bl94ZHApIGZyb20gaW5jbHVkZS9saW51eC9maWx0ZXIuaC4K
PiA+Cj4gPiBJIHRoaW5rIGl0J3MgcG9zc2libGUgdG8gYWNoaWV2ZSB3aGF0IHlvdSdyZSBkb2lu
ZyB3L28gKmFueSogZHJpdmVyCj4gPiBtb2RpZmljYXRpb24uIFBhc3MgYSBzcGVjaWFsLCBpbnZh
bGlkLCBwb2ludGVyIHRvIHRoZSBkcml2ZXIgKHNheQo+ID4gKHZvaWQgKikweDEgb3Igc210aCBt
b3JlIGVsZWdhbnQpLCB3aGljaCBoYXMgYSBzcGVjaWFsIGhhbmRsaW5nIGluCj4gPiBCUEZfUlVO
X1BST0cgZS5nLiBzZXR0aW5nIGEgcGVyLWNwdSBzdGF0ZSBhbmQgcmV0dXJuIFhEUF9SRURJUkVD
VC4gVGhlCj4gPiBwZXItY3B1IHN0YXRlIGlzIHBpY2tlZCB1cCBpbiB4ZHBfZG9fcmVkaXJlY3Qg
YW5kIHhkcF9mbHVzaC4KPiA+Cj4gPiBBbiBhcHByb2FjaCBsaWtlIHRoaXMgd291bGQgYmUgZ2Vu
ZXJhbCwgYW5kIGFwcGx5IHRvIGFsbCBtb2Rlcwo+ID4gYXV0b21hdGljYWxseS4KPiA+Cj4gPiBU
aG91Z2h0cz8KPgo+IEFsbCB0aGUgZGVmYXVsdCBwcm9ncmFtIGRvZXMgaXMgY2hlY2sgdGhhdCB0
aGUgbWFwIGVudHJ5IGNvbnRhaW5zIGEgeHNrLAo+IGFuZCBjYWxsIGJwZl9yZWRpcmVjdF9tYXAo
KS4gIFNvIHRoaXMgaXMgcHJldHR5IG11Y2ggdGhlIHNhbWUgYXMgYWJvdmUsCj4gd2l0aG91dCBh
bnkgc3BlY2lhbCBjYXNlIGhhbmRsaW5nLgo+Cj4gV2h5IHdvdWxkIHRoaXMgYmUgc28gZXhwZW5z
aXZlPyAgSXMgdGhlIEpJVCBjb21waWxhdGlvbiB0aW1lIGJlaW5nCj4gY291bnRlZD8KCk5vLCBu
b3QgdGhlIEpJVCBjb21waWxhdGlvbiB0aW1lLCBvbmx5IHRoZSBmYXN0LXBhdGguIFRoZSBnYWlu
IGlzIGZyb20KcmVtb3ZpbmcgdGhlIGluZGlyZWN0IGNhbGwgKGhpdHRpbmcgYSByZXRwb2xpbmUp
IHdoZW4gY2FsbGluZyB0aGUgWERQCnByb2dyYW0sIGFuZCByZWR1Y2luZyBjb2RlIGZyb20geGRw
X2RvX3JlZGlyZWN0L3hkcF9mbHVzaC4KCkJ1dCwgYXMgSmFrdWIgcG9pbnRlZCBvdXQsIHRoZSBY
RFAgYmF0Y2hpbmcgd29yayBieSBNYWNpZWosIG1pZ2h0CnJlZHVjZSB0aGUgcmV0cG9saW5lIGlt
cGFjdCBxdWl0ZSBhIGJpdC4KCgpCasO2cm4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
