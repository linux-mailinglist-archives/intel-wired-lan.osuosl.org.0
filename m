Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 129B8A74D41
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Mar 2025 16:01:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24DE5857E0;
	Fri, 28 Mar 2025 15:01:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cqohbHr0Z8lV; Fri, 28 Mar 2025 15:01:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 666FB857C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743174084;
	bh=70FUO1eVEV2+pR2LC9bPddI1as7LzjN+Yu6E72iZ2MY=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=orPVCXsj8W6NZv5Sq8rxP2LyG89fEYml/OHYU3oxmu0KI6RN5j8qQ1Ruyk3uWTY5V
	 zajt/oGtpn+OPMC8NWxkjJ5HewPncKBcSyXv2HnH9fbTSZNQ7ICvpwxKjo0EzckUmm
	 t2BqgVj8nCiarVDJK0ZvM3HvsrsDhQFqlgOjdalAp4SklYOatZ9rW88jZ5TPyKMhIO
	 3p5xI3Y0c7VoSBPpLIkGDOJIS7zLbRpCDJq4oU2f9v2aQcfCkPLq0ATCvZOOqtWKE8
	 Hg7d07XqYdDH7Apu7Y3T5dGQKZjUPwOFPn8OojoK4vRkE8Te3Vi+WEXiqO3/Q43i9U
	 vc5Ob0WshThaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 666FB857C7;
	Fri, 28 Mar 2025 15:01:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DCCA12A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 15:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A3CB608BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 15:01:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KeRY1ZdVayM6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Mar 2025 15:01:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b32; helo=mail-yb1-xb32.google.com;
 envelope-from=rsalvaterra@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A5AE760A3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5AE760A3E
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5AE760A3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 15:01:21 +0000 (UTC)
Received: by mail-yb1-xb32.google.com with SMTP id
 3f1490d57ef6-e573136107bso2276041276.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 08:01:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743174080; x=1743778880;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=70FUO1eVEV2+pR2LC9bPddI1as7LzjN+Yu6E72iZ2MY=;
 b=wAEEL13c8AhcDbMVfhR1T7DSxpeWVcVqGsgv2CXKVf+E7GcyR/D78nxAMGA3WgZmIO
 sCRUkP7gIEHOrlx1AZ+XKVPY1VavuuBeFTaptUqgrneTMgO6LcLw+RJPcqyJNAVIJwBe
 tlEQnemmM5pmRcT6tIIS9DTxgOJXb9KJ8bCO9MEAYkuyVyJRpY9hxsGHvy/HhecQ1VQ7
 pwopDPAm0/YGUeRICPd4CG7m0yqoxqJJEhg558PPJISPzBTbES2ebEhCuHZC2SbVa4i6
 JcOcgcZXW6+2kdOqfgGW7c/A3s279mT48fzOj2VLIIFBiGfG1F5WpbjKvZ1MCAoYmjPZ
 WaHQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUz+NlJ4Xiu4NAUEdSzUBQJxdYnKl23A0QO8vB5hvtiT8xyBkMB58hb1JHrhypPULtvbjRXIFg/EQeeUVHV13E=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw9kiOLwHN6Yq7StuAB/CSXURPcKHfcYH0R3EIYbUitsQqH4thN
 fM/kVmQhoHHnDcK8fuc+EFL5R+Ld/TNxRLbw4XEy6s7w1CS0b+KKzxoZpLhzIY+Wypz6ECBx19o
 /lSiDhWDjd2m/176hzFoH82b6UA==
X-Gm-Gg: ASbGnctbDOmMupuspzdzFeiZbWlgf686qcmPD7H12HwC1amMfYeiO9LNSnIo0vcKhuo
 JF470ZYGl9fLdb4uU74C75HJx3DVGU48xy8PTcleEIfn67WNr7SZVU6mb4kG4a81BEdG+4rTciu
 /nIPpWGe+qONf3MIyu+KRp/w066NrAxsp6BtNqwQ==
X-Google-Smtp-Source: AGHT+IGvwA/RTJS+QtL98iMmIp3tAxEYgifYL/wsi3XNR6OUOwcrpua5ZQHMa9+selmzbLu62OeZThXZL8vruS2oqCs=
X-Received: by 2002:a05:6902:12cf:b0:e64:1002:f3a with SMTP id
 3f1490d57ef6-e69435b9790mr11253843276.29.1743174080012; Fri, 28 Mar 2025
 08:01:20 -0700 (PDT)
MIME-Version: 1.0
References: <20250313093615.8037-1-rsalvaterra@gmail.com>
 <2710245b-5c2d-4c1f-93ef-937788c3c21b@intel.com>
In-Reply-To: <2710245b-5c2d-4c1f-93ef-937788c3c21b@intel.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Fri, 28 Mar 2025 15:01:09 +0000
X-Gm-Features: AQ5f1Jq0wkfbfqjfCLs6fqF5zSz9oYz4p65HD7XEeRTa9E45Onxu1B4ZkjoHV74
Message-ID: <CALjTZvZYFEqSGZvSfthsTC5sOkVixAFyPg0Jj7eXZ0tac4QS8w@mail.gmail.com>
To: Mor Bar-Gabay <morx.bar.gabay@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 edumazet@google.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743174080; x=1743778880; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=70FUO1eVEV2+pR2LC9bPddI1as7LzjN+Yu6E72iZ2MY=;
 b=Qj3RO0W543KQz8OGZLFJa4ZguHCRdqnPc1ibqSAecqxZK8gIRKXGWd7lfPEacaledz
 UDqsqROyI5l5vJkJ7Y9/3IaBHmyDv7VnwrTruuT5icyfePJtE/1LF7CvMlcNIBK8QzEH
 TblU+xrd27aoUGPu64s8gD+6OGhiE5GaMDEJrZFnRPaWdE2AKUd/3WgPPGR7wpGbzStt
 V13KGt0EOrB1clowr5K0nnmEHWFi2/ZZXX81NJa6pluG5UyqrxpqhWGkYrn7Xex1uHNx
 aubBvqWXVmAkPuQRZ7swBtLv34sYq5rYDMBLTSqMzkhazeQ+vfqbGWDn5HHSgGv3cGHU
 rVlA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Qj3RO0W5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: enable HW vlan tag
 insertion/stripping by default
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi again, everyone,

Just a quick question: this is scheduled for 6.16, it's too late for
6.15, correct?

Kind regards,
Rui Salvaterra


On Thu, 27 Mar 2025 at 12:54, Mor Bar-Gabay <morx.bar.gabay@intel.com> wrote:
>
> On 13/03/2025 11:35, Rui Salvaterra wrote:
> > This is enabled by default in other Intel drivers I've checked (e1000, e1000e,
> > iavf, igb and ice). Fixes an out-of-the-box performance issue when running
> > OpenWrt on typical mini-PCs with igc-supported Ethernet controllers and 802.1Q
> > VLAN configurations, as ethtool isn't part of the default packages and sane
> > defaults are expected.
> >
> > In my specific case, with an Intel N100-based machine with four I226-V Ethernet
> > controllers, my upload performance increased from under 30 Mb/s to the expected
> > ~1 Gb/s.
> >
> > Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> > Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
> >   1 file changed, 3 insertions(+)
> >
> Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
