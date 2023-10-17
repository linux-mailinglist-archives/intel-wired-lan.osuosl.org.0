Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AA27CCE12
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 22:29:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8F8A607FF;
	Tue, 17 Oct 2023 20:29:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8F8A607FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697574577;
	bh=nfXw4Y9xeR81TLI0XjyJgceaGLKYAfFDN0dH9YaFwQU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hOMDNWGDzoj1PXVXONgwxdqZHa5iBMRQPeR2g00jBMnEZyQRljqAuoRigVHlCPtUf
	 01QcNSoicL5S3TvCQvcZXVv7LWfq0bcL0ux7QFp3ljiZU5kk1gPRmK3LsJ/X1ILkmn
	 7gASqLw2gISfui2Mfcz174tUCV9mGq7grJ1qByOP+gBYR9tXvFOB9UqtGUFZWd8K6i
	 sIHxmHbECt9tG/H47u7ueqNMciOxjN1ZOC/9byuA7TdLqzaq2r+CywcMX0o2picFmy
	 TMAD2WCQi+h+b7umwXWkjsqk7/5Ypi6HUFG2aPKvEkoYO4o59ZPl4gkqMu5oEz8uup
	 3bhU3nWoklYUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3vsIt8dFVdYx; Tue, 17 Oct 2023 20:29:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C906B60758;
	Tue, 17 Oct 2023 20:29:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C906B60758
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F9891BF397
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:29:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 244FD821E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:29:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 244FD821E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8TK-LfOlKxll for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 20:29:31 +0000 (UTC)
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 55FB8821E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55FB8821E1
Received: by mail-ot1-x334.google.com with SMTP id
 46e09a7af769-6c4fa1c804bso4185659a34.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 13:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697574570; x=1698179370;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=h7+b5JfTWkepP8jCDtrMDryElpr4dXa6a9h6U1KYSv8=;
 b=UtNvPkVY0g3mgUXZj8s8LWS/T65+SfUtOlQ9+6/ZmiIdQxWZLmj85EXyIIGY46q6xH
 ZZ40kHzFHpPjr9TzWzz7mSIeBEOP79kr3qd9Ir6LqEAZG4HhZwRc75UFe3zep2gUnI8m
 mHpAuE/FU4OSrHmQDhOxyBJNAYtpGMYvGiBwPVI/WmTBr4BDRfBClkLYEHn0ornoRc1d
 M5L8w2lDWToGqjyDU9wDN2588JC+w/CxTnbJHmrKA+jiV1oVWFeK48MYrVUegXZId9MI
 LviOA4wKSIgmfqfGcCUdlaOdaS2R4sldYVeIutiQ5W5IXtVnl00kRU1lTM+n0r5szI9d
 L5RQ==
X-Gm-Message-State: AOJu0YzDpS9YqEI6V7B+2kLE9bxuJiXFjstXsShy6E1SaPl3234SBDrx
 1G8SzczRrLCkwFmRuMccRukUwpaqT0IH9wFExyQ=
X-Google-Smtp-Source: AGHT+IEuxiv8xSGBDDCBbap36vPXxEu6RmtoHlSJvC8QGyQS0zJBXqiXAnDvnTGZ3kxdkWndU3a5kENQVXQ/0lDJilU=
X-Received: by 2002:a05:6870:7f06:b0:1e9:93c0:34f6 with SMTP id
 xa6-20020a0568707f0600b001e993c034f6mr2896216oab.55.1697574570351; Tue, 17
 Oct 2023 13:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com>
 <CAKgT0UdPe_Lb=E+P+zuwyyWVfqBQWLaomwGLwkqnsr0mf40E+g@mail.gmail.com>
 <31cde50b-2603-443c-8f55-a0809ecdd987@intel.com>
 <CAKgT0UepNjfPp=TzXyY9Z7rYSGPZyUY64yjB2pqgWTP56=hCcA@mail.gmail.com>
 <20231017131957.200bbb7e@kernel.org>
In-Reply-To: <20231017131957.200bbb7e@kernel.org>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 17 Oct 2023 13:28:53 -0700
Message-ID: <CAKgT0UeP8mbpakyjEqkDNZPArZpM59mxb5ExMCQ2qV2qSf-jMg@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697574570; x=1698179370; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=h7+b5JfTWkepP8jCDtrMDryElpr4dXa6a9h6U1KYSv8=;
 b=K/tv/+yO7PPEnnyHSpb9M4/4XRCU7HyWt/DkOYdM2xc407aIF8ej9c9plcnd6V4vRt
 RFNBi77U+B4i3h6zNBJpZ5D1vSTnuIoUVoUWV1pwVKOlk9hzGVvzfbgcwxIZCV4ICFna
 IXCr50kaFldlfbBumSxkmPJBOjaMJsUPeMXBd2vGR/yhO6FLoeVD5B62TGsseAcNDH70
 klDfszRjk7E3M2qloVuYSGrjDsBU4XZoj5uyqWIGhlvnrRdpurQXZ+vyvsLVGV9GrOlr
 3cm6rGXdEWwE07ftmTe/2tF5bbXOEYDthBEU6XKFTSUsPMKUV/fspzM9qDfG7UN1VSR8
 EUyQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=K/tv/+yO
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTcsIDIwMjMgYXQgMToyMOKAr1BNIEpha3ViIEtpY2luc2tpIDxrdWJhQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCAxNyBPY3QgMjAyMyAxMzowMzozOSAtMDcwMCBB
bGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gPiA+ID4gTXkgdGhvdWdodCB3b3VsZCBiZSB0byBwb3Nz
aWJseSBqdXN0IGxvb2sgYXQgcmVkdWNpbmcgeW91ciBtZXNzYWdpbmcKPiA+ID4gPiB0byBhIHdh
cm5pbmcgZnJvbSB0aGUgZHJpdmVyIGlmIHRoZSBpbnB1dHMgYXJlIG5vdCBzeW1tZXRyaWMsIGJ1
dCB5b3UKPiA+ID4gPiBoYXZlIHlvdXIgc3ltbWV0cmljIHhvciBoYXNoIGZ1bmN0aW9uIGVuYWJs
ZWQuCj4gPiA+Cj4gPiA+IFdpdGggdGhlIHJlc3RyaWN0aW9ucyAodG8gYmUgbW92ZWQgaW50byBp
Y2VfZXRodG9vbCksIHRoZSB1c2VyIGlzIHVuYWJsZQo+ID4gPiB0byB1c2Ugbm9uLXN5bW1ldHJp
YyBpbnB1dHMuCj4gPgo+ID4gSSB0aGluayBhIHdhcm5pbmcgd291bGQgbWFrZSBtb3JlIHNlbnNl
IHRoYW4gYW4gb3V0cmlnaHQgcmVzdHJpY3Rpb24uCj4gPiBZb3UgY291bGQgd2FybiBvbiBib3Ro
IHRoZSBlbmFibGluZyBpZiB0aGUgbWFzayBpcyBhbHJlYWR5IHVuYmFsYW5jZWQsCj4gPiBvciB5
b3UgY291bGQgd2FybiBpZiB0aGUgbWFzayBpcyBzZXQgdG8gYmUgdW5iYWxhbmNlZCBhZnRlciBl
bmFibGluZwo+ID4geW91ciBoYXNoaW5nLgo+Cj4gRWl0aGVyIGl0J3MgYSB2YWxpZCBjb25maWd1
cmF0aW9uIG9yIHdlIHNob3VsZCBlcnJvciBvdXQgaW4gdGhlIGNvcmUuCj4gS2VlcCBpbiBtaW5k
IHRoYXQgd2UgY2FuIGFsd2F5cyBfbG9vc2VuXyB0aGUgcmVzdHJpY3Rpb24sIGxpa2UgeW91Cj4g
YXNrZWQgZm9yIFZMQU4gSUQsIGJ1dCB3ZSBjYW4gbmV2ZXIgX3RpZ2h0ZW5fIGl0IHdpdGhvdXQg
YnJlYWtpbmcgdUFQSS4KPiBTbyBlcnJvci4KCkkgd291bGQgc2F5IGl0IGlzIGEgdmFsaWQgY29u
ZmlndXJhdGlvbiB0aGVuLiBJZiB0aGUgdXNlciBvcHRzIHRvCnNob290IHRoZW1zZWx2ZXMgaW4g
dGhlIGZvb3QgdGhlbiBzbyBiZSBpdC4gSXQgZG9lc24ndCBhY3R1YWxseSBicmVhawphbnl0aGlu
ZyBhbmQgaXMganVzdCB0aGVyZSB0byBtYWtlIHN1cmUgdGhlIGhhc2hpbmcgY29uZm9ybXMgdG8g
dGhlCm1hcmtldGluZyB1c2UgY2FzZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
