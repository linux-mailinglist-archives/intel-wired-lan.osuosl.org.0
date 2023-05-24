Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7106710125
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 00:53:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FDC360B55;
	Wed, 24 May 2023 22:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FDC360B55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684968813;
	bh=emFNAlOEGJ1G7Fvo28Z33GtVQ3lQgrnX1ax0P8+2f4E=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z83+Tm8KW9+sk90n+cZkM/7kqEa+ODx7lruxCmb3W6uLLHQJJbFPrCcKzJy7zu6yc
	 aRlAF6LB8TADw2sYiNxVlIFdB+Yys4yfxKtwoz8zufau3jR/Hm0zdPooLEpcOxhJIP
	 sJ+bMNpHtY29mwJ8VClIxb9R37ufSPLPj4UDN3vv3TRk7m0qjpWif4s9xe6vk0GhyP
	 gGkfmsXecrfAFkvQbyDDJPllNLoXak+O9TH3q4LzKI1ZTKHcFLL0r7QfdMOdEx8rAH
	 RuxfHBzH/MmajBNMCmiBXEvSMmMLN7FCvFRqQMFP0N66IM29mMW5pGMe/0AXVcaS0d
	 xy94OW6G014ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xD0faDJGsdvy; Wed, 24 May 2023 22:53:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 034E860593;
	Wed, 24 May 2023 22:53:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 034E860593
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B1D631BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 22:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 908B360EE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 22:35:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 908B360EE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Or2IFqh4zcl1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 22:35:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77EDA60E97
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77EDA60E97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 22:35:09 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-3f5dbd8f677so10045e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 15:35:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684967707; x=1687559707;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3B6lMA8fNeW/gE2ngmr6HzgniDM22RVaujvMzuMnMlY=;
 b=cGGIHRHyEfMe/Zhj3ShNPoKMWd9dYfa+6VY/iCNENWpTnUZAz6CHZCVc6p7uW7GJgN
 xrWhXRvlSbaHC1HUAXQOSfakgiyf+bLjGVG3vsdUW8oqEceHbMoXxlCC6NIk2NPbOlVm
 QOOmXPAZQ899x8u1Ot2/OLMr1iKy08mM6eVnsFVsAdTVTPZcPg3goZi6XKnOaxUKW6F5
 EOJPNOjAQS2QZLFN88lZ4PIAyvNV7VyAq8CNC3T4bSF8hELO2CkM4eOjA7v1x/Ff1D7K
 pFiD3owjcp+5p1YFUjfsN1PWJfL66JlkX16bnjbavC605wymxuNj//dIbleyXnWoCVra
 EXoA==
X-Gm-Message-State: AC+VfDxmBPjNRXB7dUAfR/40PaL8srJGz1rC9TJE8bCeZslWvSl9WjMx
 jH3os60b1EqXSiz74Hw5Vw+F0TpjFtGmYwbp+kzadA==
X-Google-Smtp-Source: ACHHUZ4kSYulxWJdqL3pmNyCJWNSacql845TBXpP7lD7xJykrXx7wkSJ8/1UOdgGq8LtySP9MrJYiTyoLDc+zDkWyKo=
X-Received: by 2002:a05:600c:1c93:b0:3f4:2736:b5eb with SMTP id
 k19-20020a05600c1c9300b003f42736b5ebmr11744wms.1.1684967707316; Wed, 24 May
 2023 15:35:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230518072657.1.If9539da710217ed92e764cc0ba0f3d2d246a1aee@changeid>
 <CALs4sv2+Uu=Bry=B3FYzWdNrHjGWDvPCDhTFcNERVpWTjpmEyA@mail.gmail.com>
 <CANEJEGuzoBa_yYHRCa0KygUe=AOhUkSg4u6gWx+QNCuGtKod2Q@mail.gmail.com>
 <52cfebaf-79f6-c318-c14b-3716555d0e8f@intel.com>
 <SJ0PR11MB5866456B9007E3DC55FD8728E5419@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <CANEJEGsOU3KkG5rQ5ph3EQOiBvPXmhUk7aPvM3nj5V5KudP=ZA@mail.gmail.com>
 <82a3de3f-acef-c8d9-000c-8a54c2276b77@intel.com>
In-Reply-To: <82a3de3f-acef-c8d9-000c-8a54c2276b77@intel.com>
From: Grant Grundler <grundler@chromium.org>
Date: Wed, 24 May 2023 15:34:55 -0700
Message-ID: <CANEJEGtXQpSqd-k7YJZHMAqbbnWL4kUQmbQwNBjqUo_r3ec6xQ@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailman-Approved-At: Wed, 24 May 2023 22:53:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1684967707; x=1687559707;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3B6lMA8fNeW/gE2ngmr6HzgniDM22RVaujvMzuMnMlY=;
 b=IESF4unk72BCei8C/w6JtEMISo7965mY+cHI6Nj80JeG5+XXzC39bDWhEe4TeEvyv5
 i6LZ8SpaB7xNE3oqyQAjTyQnO+tLNBIxOktB9LgnhEsgZ/olOWXdYV3Q+yeE5KzwFsxL
 uSMC1v6XMxXKpKpmXSJuC2hr7Gt6PtEuN1Eqs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=IESF4unk
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix igb_down hung on surprise
 removal
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
Cc: Grant Grundler <grundler@chromium.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Ying Hsu <yinghsu@chromium.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Jakub Kicinski <kuba@kernel.org>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXkgMjQsIDIwMjMgYXQgMzoyMuKAr1BNIFRvbnkgTmd1eWVuIDxhbnRob255Lmwu
bmd1eWVuQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBIaSBHcmFudCwKPgo+IE9uIDUvMjQvMjAyMyAy
OjAxIFBNLCBHcmFudCBHcnVuZGxlciB3cm90ZToKPiA+IE9uIFdlZCwgTWF5IDI0LCAyMDIzIGF0
IDU6MzTigK9BTSBMb2t0aW9ub3YsIEFsZWtzYW5kcgo+ID4gPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPiB3cm90ZToKPiA+Pgo+ID4+IEdvb2QgZGF5IFRvbnkKPiA+Pgo+ID4+IFdlIHJl
dmlld2VkIHRoZSBwYXRjaCBhbmQgaGF2ZSBub3RoaW5nIGFnYWluc3QuCj4gPgo+ID4gVGhhbmsg
eW91IGZvciByZXZpZXdpbmchCj4gPgo+ID4gQ2FuIEkgdGFrZSB0aGlzIGFzIHRoZSBlcXVpdmFs
ZW50IG9mICJTaWduZWQtb2ZmLWJ5OiBMb2t0aW9ub3YsCj4gPiBBbGVrc2FuZHIgPGFsZWtzYW5k
ci5sb2t0aW9ub3ZAaW50ZWwuY29tPiI/Cj4KPiBVbmxlc3MgYSB0YWcgaXMgZXhwbGljaXRseSBn
aXZlbiwgSSBkb24ndCBiZWxpZXZlIG9uZSBjYW4gYmUgaW5mZXJyZWQuCgpZZXMgLSB0aGF0J3Mg
d2hhdCBJIHRob3VnaHQgYW5kIHdhcyBhc2tpbmcgaW4gY2FzZSB0aGF0J3Mgd2hhdApBbGVrc2Fu
ZHIgbWVhbnQgKGFuZCBjb3VsZCBlYXNpbHkgY29uZmlybSkKCj4KPiA+IE9yIHNpbmNlIFRvbnkg
aXMgbGlzdGVkIGluIE1BSU5UQUlORVJTIGZvciBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbCwK
PiA+IGlzIGhlIHN1cHBvc2VkIHRvIHByb3ZpZGUgdGhhdD8KPgo+IEFzc3VtaW5nIHRoZXJlJ3Mg
bm8gY29tbWVudHMvaXNzdWVzIGJyb3VnaHQgdXAsIEknbGwgYXBwbHkgaXQgdG8gdGhlCj4gcmVz
cGVjdGl2ZSBJbnRlbCBXaXJlZCBMQU4gdHJlZSBmb3Igb3VyIHZhbGlkYXRpb24gdG8gaGF2ZSBh
IHBhc3MgYXQgaXQuCj4gVXBvbiBzdWNjZXNzZnVsIGNvbXBsZXRpb24sIEknbGwgc2VuZCB0aGUg
cGF0Y2ggb24gdG8gbmV0ZGV2IGZvciB0aGVtIHRvCj4gcHVsbC4gSG9wZSB0aGF0IGhlbHBzLgoK
WWVzIC0gdGhhdCdzIHdoYXQgSSBuZWVkZWQgdG8ga25vdy4gVGhhbmsgeW91IFRvbnkhIDopCgpZ
aW5nIEhzdSB3aWxsIGFwcGx5IHRoaXMgcGF0Y2ggdG8gQ2hyb21lIE9TIGtlcm5lbHM6CiAgIGh0
dHBzOi8vY2hyb21pdW0tcmV2aWV3Lmdvb2dsZXNvdXJjZS5jb20vYy9jaHJvbWl1bW9zL3RoaXJk
X3BhcnR5L2tlcm5lbC8rLzQ1NDg4MDAKCmNoZWVycywKZ3JhbnQKCj4KPiBUaGFua3MsCj4gVG9u
eQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
