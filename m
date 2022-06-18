Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67440552973
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 04:38:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47110830AB;
	Tue, 21 Jun 2022 02:38:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47110830AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655779109;
	bh=l+RQei1w/zaDivWhBMMHo+tz3ZRn22gqv+mFlpkzbR8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uR9M0oeQ9EcLaofgeoJyh8nmFTro/fUuQw9IGYMRrnfoHRBns6ZfExB7o/6nHBCH/
	 RFAk6x/uhy5BTiZHKyGGoOjACQgfdDgHtHDQBEKpV8CyfWGSCSAq3ubEhJvX0dcNSI
	 OyJ4jhx99IOWHn9A695HsEDtne+oPALgbr2UkEaeEwXA8kizUXgLWeWsX9ulH2bzLj
	 z6laF9h4EZSsInlMrjFhtqJ0PNniICwhI8aJa5Mcavbifq9ncGm2HwOgImT+Ultmnd
	 4EQRw1Ln+mTBKQKJkIotdcU110179YDyMOGSOSHF03rr7j/jL5puqyh1dvzEokPlOP
	 rRf7FiRFUnVVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXaAkuip8ppU; Tue, 21 Jun 2022 02:38:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33E2383046;
	Tue, 21 Jun 2022 02:38:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33E2383046
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4EDF71BF591
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 15:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 372D0826FB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 15:37:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 372D0826FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sm4If_NJXH9o for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Jun 2022 15:37:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AE0581D2D
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AE0581D2D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 15:37:15 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id t16so5424772qvh.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 08:37:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=4n/IwGK/e5YirRHkEOD80Mn3dXmrsAY8iSdPdRpeBuo=;
 b=LRb6a36IMYAmttBTaJX1pU4gRXLp/VcgaoAvheKojvk3R+/IZ5I7inswwKYNsn6dOq
 ZLZj08QTNKXnQ3JazajB9ATBtY/7uAKxswNTkE+IATY0jspVQ+wEPsuiVNC7XBw6/AUl
 eY0wjD/waa+Gg88EL2rYFZRyeoWt0drfTuemhr5VD6G1ggKhuLLqJ5E3/4wSFb/amLu8
 yGr+vuvesIDsNWmuC2Jlvt8I/AilUdXoLrxkFWhPkgU/DdXqvy3qL4MAlXeevdAiYToC
 Vb5TQt9Wg1p4y/vzBLY8qVWTCSrmuDJnDK1AnpaGtWUv7R8qdI5T5W3fV+PGag3ZRswV
 troQ==
X-Gm-Message-State: AJIora/sVBMbxbhq8Th88S/WoMJMv++W/FUXA2d+0h22eL7mcymmobfr
 g/7Rqky9ZCqbCMjEmgDzRv6FfDX7aTbbqFf6FXXiXIKZ/Tg=
X-Google-Smtp-Source: AGRyM1uamukXOt1Ii8HVhehaIQYVVujpV/vC6UlASfhVabvWL2Gg2u+zjz9mmVs39ijcB3VDr3nfgqfPPm68lzIcVXo=
X-Received: by 2002:a05:622a:104b:b0:305:bcb:9c78 with SMTP id
 f11-20020a05622a104b00b003050bcb9c78mr12922525qte.456.1655566634646; Sat, 18
 Jun 2022 08:37:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com>
In-Reply-To: <CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Sat, 18 Jun 2022 17:36:49 +0200
Message-ID: <CAK8fFZ7nsjjGOzuGVKd0iH1NBL6rx8v04qhj=3PUbb9TDv8Nnw@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailman-Approved-At: Tue, 21 Jun 2022 02:38:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=4n/IwGK/e5YirRHkEOD80Mn3dXmrsAY8iSdPdRpeBuo=;
 b=PaWHreP5LeLFgMGRkisia8Rd5bjTo/Vnp7Gjj3Z4aGDmqAj3Ngdhnz/cSqw83Vmuc5
 uNeot21OK3zmJbXe4JWjbrPowBgknBaIjvERG89xYC/YzOXALHHEjzuXiByTTi/LnMpb
 tGXHOVOGrCDMt+Ks4WNMCJ/ivXusev84XhRH8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=gooddata.com header.i=@gooddata.com
 header.a=rsa-sha256 header.s=google header.b=PaWHreP5
Subject: Re: [Intel-wired-lan] ice: Error setting promisc mode on VSI 6
 (rc=-17) @ 5.18.x
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8sCgpJcyB0aGVyZSBhIGNoYW5jZSBJbnRlbCB3aWxsIGxvb2sgYXQgdGhpcyBpc3N1ZSBy
ZXBvcnQ/CgpCZXN0IFJlZ2FyZHMKSmFyb3NsYXYgUHVsY2hhcnQKCsSNdCA5LiA2LiAyMDIyIHYg
ODo1OCBvZGVzw61sYXRlbCBKYXJvc2xhdiBQdWxjaGFydAo8amFyb3NsYXYucHVsY2hhcnRAZ29v
ZGRhdGEuY29tPiBuYXBzYWw6Cj4KPiBIZWxsbywKPgo+IEknbSBzdHJ1Z2dsaW5nIHdpdGggYnJv
a2VuIG5ldHdvcmsgY29ubmVjdGl2aXR5IGF0IFZNcyB1c2luZyBsaW51eAo+IGJyaWRnZSBhdCBo
b3N0IGFmdGVyIHVwZGF0ZSBvZiBrZXJuZWwgZnJvbSA1LjE3LnggdG8gNS4xOC54IEAgRGVsbAo+
IFI3NTAgc2VydmVyIHdpdGggRTgxMC1YWFYgTklDcy4KPgo+IEkgbm90aWNlZCB0aGUga2VybmVs
IHJlcG9ydHMgIkVycm9yIHNldHRpbmcgcHJvbWlzYyBtb2RlIiBpbiBkbWVzZy4KPgo+ICMgZG1l
c2cgIHwgZ3JlcCAnRXJyb3Igc2V0dGluZyBwcm9taXNjJwo+IFsgICAyNC44NjM1NTddIGljZSAw
MDAwOjMxOjAwLjA6IEVycm9yIHNldHRpbmcgcHJvbWlzYyBtb2RlIG9uIFZTSSA2IChyYz0tMTcp
Cj4gWyAgIDI0Ljg3ODM2OV0gaWNlIDAwMDA6MzE6MDAuMDogRXJyb3Igc2V0dGluZyBwcm9taXNj
IG1vZGUgb24gVlNJIDYgKHJjPS0xNykKPiBbICAgMjUuMDQ1ODM0XSBpY2UgMDAwMDozMTowMC4w
OiBFcnJvciBzZXR0aW5nIHByb21pc2MgbW9kZSBvbiBWU0kgNiAocmM9LTE3KQo+IFsgICAyNS4x
Mjk4NDBdIGljZSAwMDAwOmIxOjAwLjA6IEVycm9yIHNldHRpbmcgcHJvbWlzYyBtb2RlIG9uIFZT
SSA2IChyYz0tMTcpCj4gWyAgIDI1LjE0NDQ0MF0gaWNlIDAwMDA6YjE6MDAuMDogRXJyb3Igc2V0
dGluZyBwcm9taXNjIG1vZGUgb24gVlNJIDYgKHJjPS0xNykKPgo+ICMgbHNwY2kgLXMgMDAwMDoz
MTowMC4wCj4gMzE6MDAuMCBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBF
dGhlcm5ldCBDb250cm9sbGVyCj4gRTgxMC1YWFYgZm9yIFNGUCAocmV2IDAyKQo+ICMgbHNwY2kg
LXMgMDAwMDpiMTowMC4wCj4gYjE6MDAuMCBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jw
b3JhdGlvbiBFdGhlcm5ldCBDb250cm9sbGVyCj4gRTgxMC1YWFYgZm9yIFNGUCAocmV2IDAyKQo+
Cj4gSXQgaXMgZWFzeSB0byByZXByb2R1Y2UgYnk6Cj4gICAjIGlwIGxpbmsgc2V0IGVtMSBwcm9t
aXNjIG9uCj4gICAjIGRtZXNnIC1UIHwgdGFpbCAtbiAxCj4gICBbVGh1IEp1biAgOSAwODo0ODox
OSAyMDIyXSBpY2UgMDAwMDozMTowMC4wOiBFcnJvciBzZXR0aW5nIHByb21pc2MKPiBtb2RlIG9u
IFZTSSA2IChyYz0tMTcpCj4KPiBDb3VsZCBpdCBiZSBhbiAnaWNlJyBkcml2ZXIgYnVnIGludHJv
ZHVjZWQgaW4gdGhlIDUuMTgga2VybmVsPwo+Cj4gQmVzdCwKPiBKYXJvc2xhdiBQdWxoYXJ0CgoK
Ci0tIApKYXJvc2xhdiBQdWxjaGFydApTci4gUHJpbmNpcGFsIFNXIEVuZ2luZWVyCkdvb2REYXRh
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
