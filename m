Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D13E7635D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 14:05:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C3F061215;
	Wed, 26 Jul 2023 12:05:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C3F061215
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690373154;
	bh=A8VgIx6upyPh2Un2Kvp/iVsYAhMmNs4uNQPU1aij0Yk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E93lvAR5tnl/FZHOUYk8WymCu3eOYV2ScXgPg0urAxAZ2ymi0BCxzqdY6QZmcDV0c
	 BIEPyRpbIX3Yr/AXgGvh3a4bZiAmibicRHE1v5FaZWpauWDrOLHg04oEGnvkNY/6HF
	 akONnaC4yLuUBECqr4g8o8dLnt2oO0yOXFhJVUhQ5EBp73+dPw7mZnQDL6eiGgfssB
	 eqaMyRKoZcjAXJy39+pximwu9vRjFF/cfk5sT8qKgtHMUj3jwKBqoBHEG8xVp8vs9Y
	 sMFtxzwMAUXusPFwSuqo1QW2T85IOdFP+dKo1jxKe/XVm3l4CLi22YNV5zGsMYWFy7
	 jGBYGMMklLdcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BE8nB3j4yxfm; Wed, 26 Jul 2023 12:05:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84C7B611F8;
	Wed, 26 Jul 2023 12:05:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84C7B611F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F33BD1BF574
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 12:05:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C26CA611F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 12:05:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C26CA611F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r0rRri3RON-Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 12:05:48 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C805E6074C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 12:05:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C805E6074C
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-4fba86f069bso10364654e87.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 05:05:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690373145; x=1690977945;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hAEXw+6RA38h/W6nJw+T6IpUa/B0r33gmMC26vdkdK4=;
 b=UjJxn6Ig7E0H9v4+8Ct9mNfgOhcLaM2mAtFvRdoxzSY1yvxFStkcnLlLb7CPDHosMW
 K32SifZhHFOb9rZCmtrNfWMpJDfafUDjwiBJWopNaO1gSsGNL8kfevDYQGhg7zSR46RC
 f5n7GyuzB9eGFmfChHy/FIUvVKw6eFJs5gfabb7sLSyadKFRklv0uoS30likIptVqBiZ
 3/Bm7OxEcI5S+4fB26UBpCO0JKnDWxvmpWaAYZwiqvFm4uesrasZORrw0et85baJKCCG
 iJzsZfh8e5g2DR9PQLyEVkUNPX5+Tk9kNNUyOd0ml5NiFL5H3IdHeou3zbBCJMEvHXXu
 kHFQ==
X-Gm-Message-State: ABy/qLaI1vFhA2fsNexoHaSTlhXbJ24UdV1+kMP1saWzdU3bbeLum9pO
 5RgGHRjWVv33IzQhwGivbflWHrx5S/vJJzSftzg=
X-Google-Smtp-Source: APBJJlFhY20uIKiK7Anfu0/vcVMOJpVH3HbaDJ5654BjtRO+rmM4DWXLnO9UeBTdYSLK3b31hFacYd8cv45b0XoqAOQ=
X-Received: by 2002:ac2:52a6:0:b0:4fb:911b:4e19 with SMTP id
 r6-20020ac252a6000000b004fb911b4e19mr1147466lfm.35.1690373145044; Wed, 26 Jul
 2023 05:05:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-3-marcin.szycik@linux.intel.com>
 <ZLqZRFa1VOHHWCqX@smile.fi.intel.com>
 <5775952b-943a-f8ad-55a1-c4d0fd08475f@intel.com>
 <CAHp75VcFse1_gijfhDkyxhBFtd1d-o5_4RO2j2urSXJ_HuZzyg@mail.gmail.com>
In-Reply-To: <CAHp75VcFse1_gijfhDkyxhBFtd1d-o5_4RO2j2urSXJ_HuZzyg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 26 Jul 2023 15:05:08 +0300
Message-ID: <CAHp75Vev0g09sn4oD07=o7fefziQ06Qz0YOK=zhTKtOcbghBGg@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690373145; x=1690977945;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hAEXw+6RA38h/W6nJw+T6IpUa/B0r33gmMC26vdkdK4=;
 b=nJBjr3N11j5i/SMU0Fwgir8luXAhZ7MVGCPET29G0prSRCO6mlmeH1CZ6cuIy/Wda5
 G+Nj8V6zswsmF2hHw2MAlTeThJm+3oRLoOBS4rJG376mD7V/1JIsVk3GbZk2NXR3epSd
 lMNNc0xPABxWuYc+90kpNjJYW5Fw6P9VUdWAgXqZ2kL5zjCbjNLoCFyIxRk05FwtKwZ0
 SHVettuLFvPvBAzmwgQSPzLIiJF7wiZuyFnSBMB57pWMb32fBeOmWcWbMIga+mimk9k3
 x+cIHB9stcIc4arv1V3P930ubhystLElbuFShGJZb3m3e8qBk6jy7eiFgUefSU2zc71f
 BVFg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=nJBjr3N1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/6] ip_tunnel: convert
 __be16 tunnel flags to bitmaps
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
Cc: Andy Shevchenko <andy@kernel.org>, Yury Norov <yury.norov@gmail.com>,
 netdev@vger.kernel.org, idosch@nvidia.com, jiri@resnulli.us,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKdWwgMjYsIDIwMjMgYXQgMzowMeKAr1BNIEFuZHkgU2hldmNoZW5rbwo8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBKdWwgMjYsIDIwMjMgYXQgMjox
MeKAr1BNIEFsZXhhbmRlciBMb2Jha2luCj4gPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+
IHdyb3RlOgo+ID4gRnJvbTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5QGtlcm5lbC5vcmc+LCBZdXJ5
IE5vcm92IDx5dXJ5Lm5vcm92QGdtYWlsLmNvbT4KPiA+IERhdGU6IEZyaSwgMjEgSnVsIDIwMjMg
MTc6NDI6MTIgKzAzMDAKCi4uLgoKPiA+ID4+ICsgICAgX19zZXRfYml0KElQX1RVTk5FTF9DU1VN
X0JJVCwgaW5mby0+a2V5LnR1bl9mbGFncyk7Cgo+ID4gPj4gICAgICBpZiAoZmxhZ3MgJiBCUEZf
Rl9aRVJPX0NTVU1fVFgpCj4gPiA+PiAtICAgICAgICAgICAgaW5mby0+a2V5LnR1bl9mbGFncyAm
PSB+VFVOTkVMX0NTVU07Cj4gPiA+PiArICAgICAgICAgICAgX19jbGVhcl9iaXQoSVBfVFVOTkVM
X0NTVU1fQklULCBpbmZvLT5rZXkudHVuX2ZsYWdzKTsKPiA+ID4KPiA+ID4gSW5zdGVhZCBvZiBz
ZXQvY2xlYXIsIHVzZSBhc3NpZ24sIGkuZS4gX19hc2lnbl9iaXQoKS4KPiA+Cj4gPiBKdXN0IHRv
IG1ha2UgaXQgY2xlYXIsIHlvdSBtZWFuCj4gPgo+ID4gICAgICAgICBfX2Fzc2lnbl9iaXQoSVBf
VFVOTkVMX0NTVU1fQklULCBpbmZvLT5rZXkudHVuX2ZsYWdzLAo+ID4gICAgICAgICAgICAgICAg
ICAgICAgZmxhZ3MgJiBCUEZfRl9aRVJPX0NTVU1fVFgpOwo+ID4KPiA+IHJpZ2h0Pwo+Cj4gWWVz
LgoKQWN0dWFsbHkgaW4geW91ciBjYXNlIGl0J3MgYW4gaW52ZXJ0ZWQgdmFsdWUsIGJ1dCB5b3Ug
Z290IHRoZSBpZGVhLgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
