Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC756F29BC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Apr 2023 19:01:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21AC381F44;
	Sun, 30 Apr 2023 17:01:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21AC381F44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682874113;
	bh=HWo5UYm7iiL2TpA+b80cWEaRPNW2e38+z6elxyz02u4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aJ850fIAKlWkBFXSAolM+u/cPQ02A8Vb8OysyDo1FIXBWRGGh9STfn6XlWUA0utr+
	 OLws5FeTqHOCGm45QU4C+kRP14P1+b2dtfFulyoSa7mWqTVyzaOseItTcHi2GPYLyC
	 fiMsA8vmKcdGgPLOTnQGSIDOY0vNEbxjeygef6ChClQeOQW2Rdy5b/7puiZZBKYe+G
	 lU9NyY00T8oYROPUyIHCR0QxPlYYNi/A+dQAcB5w4iZbf5TqzJxhEFg3tFmh3nZMvl
	 EorMh1pJioBPM3oJ8LAlesq3OFiUOq02lVUR2JJb4yAU/YWajSoIhhSGkXX8IjD9Ar
	 MmRnXOQOR73Wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JjMXE-rQECYr; Sun, 30 Apr 2023 17:01:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EC8781F42;
	Sun, 30 Apr 2023 17:01:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EC8781F42
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC2251BF47A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 17:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2D7D41554
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 17:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2D7D41554
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bamP3uF279fB for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Apr 2023 17:01:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CF5F41553
Received: from mail-vk1-xa2b.google.com (mail-vk1-xa2b.google.com
 [IPv6:2607:f8b0:4864:20::a2b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CF5F41553
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 17:01:45 +0000 (UTC)
Received: by mail-vk1-xa2b.google.com with SMTP id
 71dfb90a1353d-4436568b2aeso623104e0c.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 10:01:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682874104; x=1685466104;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=R3HLw+mt6AkF6r/ux+2iPzFf8JiixGrjnLg3t/I9o00=;
 b=YT7qSA0mpBvlL1r9merlm+IQXHhCuJF/BBDEJ2i2AQ9+mvn9OCNEBcVXLXAFFohay8
 tyR+NtOUcaMnAuyyCREsil96Q3gsGgm4N+qlo2Axr2bhsUbT403Tdcnxn4GHqL4h0z8E
 NP3/1ldXbGMCJWaJ7H1as2x++ZI4jS4O9j0lpAldgw9BAtUXtPpVB5AMmMIU5bEttPna
 TXBm2poj1ocqq4b4bfqzcjKNHFyL+NXnUoIvwdHmXVzoJVzELxcLDf6/mrFWwc7Wigk1
 F+z73txD7LUl0n0vJUklTvX1ezlByDgTdecpDQA9sG68whAsXCELPRQi8JXLuG7EkttN
 n9yA==
X-Gm-Message-State: AC+VfDwfMrlKrcr96z19yvIuab2PxHOpzACW8Pg2Tw4Q57vda1ZNtS96
 mO6Smkwo2DL9Y4j51bs3VT2X0AUw6jeqikTMLi8=
X-Google-Smtp-Source: ACHHUZ6Uf5xXwT9nhzMxd2VKvWWvBn96wWaDY4mJwG9Ivlcw8f6Q9XaEH4YXi92E8pqQRBt5xaTiynS+Zmc6XSFLsLQ=
X-Received: by 2002:a1f:bf55:0:b0:43f:c4b2:b11d with SMTP id
 p82-20020a1fbf55000000b0043fc4b2b11dmr3772725vkf.3.1682874104170; Sun, 30 Apr
 2023 10:01:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZuTsq4cKMV0=pTP_=mgb5CxYXGxNDpmF1NCfrmpvCpJdQ@mail.gmail.com>
 <CAEuXFEzaFAzp_Lx-8pphyNsi=Cjff40CPTbBHD=oJo_WmKmgYA@mail.gmail.com>
In-Reply-To: <CAEuXFEzaFAzp_Lx-8pphyNsi=Cjff40CPTbBHD=oJo_WmKmgYA@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Sun, 30 Apr 2023 19:01:32 +0200
Message-ID: <CAA85sZvQV2_aTP=2_TZQOMm0cMfxp+NdLx2_yf_qzB=dUKFuwg@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682874104; x=1685466104;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=R3HLw+mt6AkF6r/ux+2iPzFf8JiixGrjnLg3t/I9o00=;
 b=Tw7BgvGFcOvQuVePzOQkvDPWNizxMTrwAim0ffU0vcwmwtwsmUH8VhtZJMAE9PWplU
 zK1XlbO/zDeoG4e13eQ/PM12nh20ph9cSDsqal8Veb2h+j5JoOHVKk6SVO2c1DbwF+I9
 8xnuUr5Ry8avPIM8NQDRtGtTmzk7L+38MQeyqN2swSkKG0UkSbZOlmtjZTtEBZ5/06zk
 Ski+k+VfenBdTvWQjQ33g4lLYLdPM1Ku+hA8wZWL/ZdFBC3SjxKgd/kWfB1inXD59yEh
 nJTx1W/keHRCFgPeKfCMP5iP67cwfNzcLMWBI3DZk2u1s/13n1SJMptkz71zDSzGt3MG
 +Jjw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=Tw7BgvGF
Subject: Re: [Intel-wired-lan] [ixgbe] regression: jumbo frames not working
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU3VuLCBBcHIgMzAsIDIwMjMgYXQgNjoyOeKAr1BNIEplc3NlIEJyYW5kZWJ1cmcKPGplc3Nl
LmJyYW5kZWJ1cmdAZ21haWwuY29tPiB3cm90ZToKPgo+Cj4KPiBPbiBGcmksIEFwciAyOCwgMjAy
MyBhdCAyOjEzIFBNIElhbiBLdW1saWVuIDxpYW4ua3VtbGllbkBnbWFpbC5jb20+IHdyb3RlOgo+
Pgo+PiBIaSwKPj4KPj4gU2luY2UgdXBncmFkaW5nIHRvIGtlbmVsIDYuMywgSSd2ZSBoaXQgYW4g
aXNzdWUuLi4KPj4KPj4gSSBoaXN0b3JpY2FsbHkgdXNlIDlrIGp1bWJvZnJhbWVzIG9uIG15IG5l
dHdvcmsgYXMgc3VjaDoKPj4gMzogZW5vMTogPEJST0FEQ0FTVCxNVUxUSUNBU1QsVVAsTE9XRVJf
VVA+IG10dSAxNTAwIHFkaXNjIG1xIHN0YXRlIFVQCj4+IGdyb3VwIGRlZmF1bHQgcWxlbiAxMDAw
Cj4KPgo+IFRoYW5rcyBmb3IgdGhlIHJlcG9ydCEgT3VyIHRlYW0gaXMgaW52ZXN0aWdhdGluZywg
aG9wZWZ1bGx5IHdlIHdpbGwgYmUgYWJsZSB0byByZXByb2R1Y2UgYW5kIGdldCBiYWNrIHRvIHlv
dSB0aGlzIHdlZWsuCj4KPiBBIGRldGFpbCB0aGF0IHdvdWxkIGhlbHAgaXMgbHNwY2kgLW5uIC1k
IDo6MDIwMCB0byBnZXQgYSBsaXN0IG9mIHRoZSBhZGFwdGVyIHR5cGUgeW914oCZcmUgdXNpbmcg
aW4gY2FzZSBpdOKAmXMgcmVsZXZhbnQuCgowNjowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXIgWzAy
MDBdOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5ldApDb25uZWN0aW9uIFg1NTMgMUdiRSBbODA4
NjoxNWU0XSAocmV2IDExKQowNjowMC4xIEV0aGVybmV0IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRl
bCBDb3Jwb3JhdGlvbiBFdGhlcm5ldApDb25uZWN0aW9uIFg1NTMgMUdiRSBbODA4NjoxNWU0XSAo
cmV2IDExKQowNzowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBDb3Jwb3Jh
dGlvbiBFdGhlcm5ldApDb25uZWN0aW9uIFg1NTMgMUdiRSBbODA4NjoxNWU0XSAocmV2IDExKQow
NzowMC4xIEV0aGVybmV0IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhl
cm5ldApDb25uZWN0aW9uIFg1NTMgMUdiRSBbODA4NjoxNWU0XSAocmV2IDExKQoKZXRodG9vbCAt
aSBlbm8xCmRyaXZlcjogaXhnYmUKdmVyc2lvbjogNi4zLjAKZmlybXdhcmUtdmVyc2lvbjogMHg4
MDAwMDg3NwpleHBhbnNpb24tcm9tLXZlcnNpb246CmJ1cy1pbmZvOiAwMDAwOjA2OjAwLjAKc3Vw
cG9ydHMtc3RhdGlzdGljczogeWVzCnN1cHBvcnRzLXRlc3Q6IHllcwpzdXBwb3J0cy1lZXByb20t
YWNjZXNzOiB5ZXMKc3VwcG9ydHMtcmVnaXN0ZXItZHVtcDogeWVzCnN1cHBvcnRzLXByaXYtZmxh
Z3M6IHllcwoKPj4gQnV0IG5vdyB0aGUgbGFyZ2VzdCBmcmFtZSBpIGNhbiBzZW5kIGlzIDIwMzAg
Ynl0ZXMgKGllIHBpbmcgLXMgMjAwMikuLi4KPj4KPj4gSSBkb24ndCBzZWUgYW55IHdhcm5pbmcg
ZnJvbSB0aGUgWERQIHN1YnN5c3RlbSBzbyBJIGFsbW9zdCBhc3N1bWUKPj4gdGhhdCdzIG5vdCBp
dC4uLgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCj4+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
