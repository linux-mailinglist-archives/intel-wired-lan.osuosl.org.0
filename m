Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C09C7C765F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A26D6134C;
	Thu, 12 Oct 2023 19:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A26D6134C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137732;
	bh=C3tpq//q1DP41AlmFj7812x7A+4PBFA+tgFWRhawZw4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cp/yrDemNvSoFCs0RYslF04foGhfZX/f//fZozxf0C+3ocZPBggONak7SYk0woXpB
	 JDFnup7An/Lg5w08cOhDxJRLZ6kaTOc/XcrlF4/uTlcW49R3rFSAGwwl3I4bzY74si
	 evR2hq2ZmufIObmLCaQCCt5K082AXCqbTtEpEJ8sVY0tVcKOOMm0f7ZLo0WHvRTnKN
	 Pc/Vo/4zFB6shxkOGH8fVLz1jV8Nxe4JO5yTA9C/Eo+SP+pOzidZkA66E1A6dwpj0W
	 IXVPl8SAh4UvjIMh9zVf/4fYPXUEiFzrnat3Enuy1rGwv5rhUhc0B31BXtp1fAgq+1
	 wcOLIArqoR00Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p8y9vbjqQln5; Thu, 12 Oct 2023 19:08:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05EB1610A0;
	Thu, 12 Oct 2023 19:08:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05EB1610A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 684BD1BF98E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 01:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 401D660D53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 01:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 401D660D53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kCRCcNrU2Ow5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 01:08:13 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com
 [IPv6:2607:f8b0:4864:20::1132])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D134A60AFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 01:08:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D134A60AFD
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-579de633419so5510107b3.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 18:08:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697072891; x=1697677691;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Q4XdKBSiKJOkL+MzxkZtnmYwHSE6NfuwxJcHbqMJt+4=;
 b=cAqEPjOj3JEGQCA7jzwSS6dFl9sosMC7xkqJ6tbVCWF5c/L2gmLB9zOI5lpfbiU57O
 8llJpcNOFrp+3XfCJbb7huv1Vk5/YG2EgYrKnmJ3gdYP7JTCCB39M4B6EUjXpOo7fVpv
 ThzWZPgkJQQ4bVtNQwT49RyDjW0WkWtK2uBpkjRMpEMScicxTOZ6O1PT0mf16fglf4Pb
 GZ9D6VxYBBfb0aF22VMk5X4qr2TlQlnKi+CtObxvYeO2bKFSkR/3hvqlZrHAI/JW3VdD
 o13kR54xqgwY8Ian1IdQD5S+z8kOSFR4koISxbTfaxDjicuE/a/lj2EUVI5r3jDFh5mV
 suKQ==
X-Gm-Message-State: AOJu0YwZ2tojle4vo3AAnZZXS0Rpp8xB7B1/4DWZaipHZ48G+m3GPVUU
 nF4N36zfYgLAY1iPW+nrReoBKx4B05iX+bSnoDY=
X-Google-Smtp-Source: AGHT+IENr/oeTnryZo3bVL80RuzCr5idt3tau25ZS+cjq7Apkt1xk7gcwUo3mPHZ5MeRrlTvJsvSbuCgoTiKZlb82eE=
X-Received: by 2002:a25:18c1:0:b0:d81:61fd:ef5d with SMTP id
 184-20020a2518c1000000b00d8161fdef5dmr18975896yby.27.1697072891447; Wed, 11
 Oct 2023 18:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <20231008075221.61863-1-hayatake396@gmail.com>
 <20231010123235.4a6498da@kernel.org>
 <CADFiAcKF08osdvd4EiXSR1YJ22TXrMu3b7ujkMTwAsEE8jzgOw@mail.gmail.com>
 <20231010191019.12fb7071@kernel.org>
 <CADFiAcL-kAzpJJ+KAkvw2tH8H0-21kyOusPSPybcmkf3CM7w9g@mail.gmail.com>
 <20231011094114.4d8f24c7@kernel.org>
In-Reply-To: <20231011094114.4d8f24c7@kernel.org>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Thu, 12 Oct 2023 10:08:00 +0900
Message-ID: <CADFiAc+67wdcS5enobbty-_U9SGX9Mr-C_0ipU_KJAV+h-t_Tg@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697072891; x=1697677691; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q4XdKBSiKJOkL+MzxkZtnmYwHSE6NfuwxJcHbqMJt+4=;
 b=Y+se4MSWj+tv30iIkhKrbkyb2+pxox++7qAhlKezymL+Dr+p2vYmRJvYZpIGmrIzqs
 tCggvTD9HevmjGynermFURSwqfxbyWtwkYpGqrwersmv2fot5FfrwzOE7o37kkaFpeVx
 WN1HKh5iF3IR476nclWMET5cKlgbQ/S523Mbtn/E6cK80e3+X8iQhNDlpyMyLfqGpK1U
 khJmeLdsWvVZDxod7go0fQpTrO8oLSEYsR/4d2UPZa4Sf2gCQ/Twu9iDWx7TuDVIhUS+
 8xc9vKorr3eMQxKVaAIFmYC0mWnV7tqZiv/++lmX2Azo62O0uiaYQbyhlO2Z0XmWTg17
 EjNQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Y+se4MSW
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

PiBJIHRoaW5rIHdlIHNob3VsZCBleHBvc2UgVEVJRCBhcyBhIGZpZWxkLiBJdCdzIGVhc2llciB0
byB1bmRlcnN0YW5kCj4gdGhlIEFQSSBpZiBmaWVsZHMgYXJlIGFsbCBsaXN0ZWQsIGFuZCBub3Qg
aW1wbGllZCBieSB0aGUgZmxvdyBoYXNoLgoKSmFrdWIgc2FuIFRoYW5rIHlvdSBmb3IgeW91ciBm
ZWVkYmFjayEKSSB3b3VsZCBsaWtlIHRvIG1ha2UgY2hhbmdlcyBhbmQgc2VuZCB0aGVtIGFzIGEg
cGF0Y2ggZm9yIHRoZSBuZXh0IHZlcnNpb24uCgoyMDIz5bm0MTDmnIgxMuaXpSjmnKgpIDE6NDEg
SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz46Cj4KPiBPbiBXZWQsIDExIE9jdCAyMDIz
IDE0OjI1OjU1ICswOTAwIHRha2VydSBoYXlhc2FrYSB3cm90ZToKPiA+ID4gUmVnYXJkaW5nIHRo
ZSBwYXRjaCAtIHlvdSBhcmUgb25seSBhZGRpbmcgZmxvdyB0eXBlcywgbm90IGEgbmV3IGZpZWxk
Cj4gPiA+ICh3aGljaCBhcmUgZGVmaW5lZCBhcyBSWEhfKikuIElmIHdlIHdhbnQgdG8gaGFzaCBv
biBhbiBleHRyYSBmaWVsZCwKPiA+ID4gSSB0aGluayB3ZSBuZWVkIHRvIHNwZWNpZnkgdGhhdCBm
aWVsZCBhcyB3ZWxsPwo+ID4KPiA+IEkndmUgYmVlbiByZWFsbHkgc3RydWdnbGluZyB3aXRoIHRo
aXMuLi4KPiA+IFdoZW4gSSByZWFkIHRoZSBJbnRlbCBJQ0UgZG9jdW1lbnRhdGlvbiwgaXQgc3Vn
Z2VzdHMgdGhhdCBpbiBSU1MsIFRFSUQKPiA+IGNhbiBiZSBhbiBhZGRpdGlvbmFsIGlucHV0Lgo+
ID4gSG93ZXZlciwgSSBjb3VsZG4ndCB0aGluayBvZiBhIHJlYXNvbiBub3QgdG8gaW5jbHVkZSBU
RUlEIHdoZW4KPiA+IGVuYWJsaW5nIFJTUyBmb3IgR1RQIGNhc2VzLgo+ID4KPiA+IGh0dHBzOi8v
d3d3LmludGVsLmNvbS9jb250ZW50L3d3dy91cy9lbi9jb250ZW50LWRldGFpbHMvNjE3MDE1L2lu
dGVsLWV0aGVybmV0LWNvbnRyb2xsZXItZTgxMC1keW5hbWljLWRldmljZS1wZXJzb25hbGl6YXRp
b24tZGRwLXRlY2hub2xvZ3ktZ3VpZGUuaHRtbAo+ID4gKGNmLiBUYWJsZSA4LiBQYXR0ZXJucyBh
bmQgSW5wdXQgU2V0cyBmb3IgaWF2ZiBSU1MpCj4gPgo+ID4gSG93ZXZlciwgZm9yIEZsb3cgRGly
ZWN0b3IsIGl0J3MgY2xlYXIgdGhhdCB5b3UnZCB3YW50IHRvIGluY2x1ZGUgdGhlCj4gPiBURUlE
IGZpZWxkLiBCdXQgc2luY2UgSSBmb3VuZCB0aGF0IHNvbWVvbmUgZnJvbSBJbnRlbCBoYXMgYWxy
ZWFkeQo+ID4gY29uZmlndXJlZCBpdCB0byB1c2UgVEVJRCB3aXRoIEZsb3cgRGlyZWN0b3IsIEkg
dGhvdWdodCBtYXliZSB3ZSBkb24ndAo+ID4gbmVlZCB0byBhZGQgdGhlIFRFSUQgcGFyYW1ldGVy
IGZvciBub3cuCj4gPgo+ID4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2lu
dGVsLXdpcmVkLWxhbi9jb3Zlci8yMDIxMDEyNjA2NTIwNi4xMzc0MjItMS1oYWl5dWUud2FuZ0Bp
bnRlbC5jb20vCj4gPgo+ID4gSWYgd2Ugd2FudCB0byBpbmNsdWRlIHNvbWV0aGluZyBvdGhlciB0
aGFuIFRFSUQgKGUuZy4sIFFGSSkgaW4gRmxvdwo+ID4gRGlyZWN0b3IsIEkgdGhpbmsgaXQgd291
bGQgYmUgYmV0dGVyIHRvIHByZXBhcmUgYSBuZXcgZmllbGQuCj4KPiBJIHRoaW5rIHdlIHNob3Vs
ZCBleHBvc2UgVEVJRCBhcyBhIGZpZWxkLiBJdCdzIGVhc2llciB0byB1bmRlcnN0YW5kCj4gdGhl
IEFQSSBpZiBmaWVsZHMgYXJlIGFsbCBsaXN0ZWQsIGFuZCBub3QgaW1wbGllZCBieSB0aGUgZmxv
dyBoYXNoLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
