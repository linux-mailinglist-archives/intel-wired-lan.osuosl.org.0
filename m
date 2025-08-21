Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B55B30819
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 23:13:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CE6A847E6;
	Thu, 21 Aug 2025 21:13:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CK3VV1seVsiW; Thu, 21 Aug 2025 21:13:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A9E9847E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755810818;
	bh=RIYm7MKLNUmOwJBNd+Uvt6epS0Ij5GkDEGn2hZurzEo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3jxVJK53eGLd4OBvM3FPHT8Kjoyg/nWJhWD2ePYJcv5kMwb4b7Zk56gaT4HNb5l32
	 lIctIqdcWGYIfMMFWzCxFklz25vL1FNvOsxPy2Z5eraM6XlmO4y33+rnO00RK1bqMS
	 JnQjlo6EmsRS/dWDGHWcwPHnIsF629mPW7B9Ss5ucJfst0IWT9insD9x8kgkQABnDg
	 rkoUgndlhab2yK9Xfwce4lVCWQC9/uklsN74sXh+7ATzcmpuMEw4EqgYdy0nh6ywNj
	 8l6hEJJe7HF59Dudf+FQgZIpCEsDQ7sJC4Ob4/JcWSN9BXStgKU5NGyk8Ma6o25eh7
	 3YHztySTKOgmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A9E9847E3;
	Thu, 21 Aug 2025 21:13:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D98E1C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 21:13:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2F3076171B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 21:13:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1C022TzcHjW0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 21:13:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.41;
 helo=mail-lf1-f41.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0086A616FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0086A616FF
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0086A616FF
 for <intel-wired-lan@osuosl.org>; Thu, 21 Aug 2025 21:13:34 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-55ce52ab898so1518363e87.3
 for <intel-wired-lan@osuosl.org>; Thu, 21 Aug 2025 14:13:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755810812; x=1756415612;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RIYm7MKLNUmOwJBNd+Uvt6epS0Ij5GkDEGn2hZurzEo=;
 b=FSv+TbKHHdwC/zEs3StN8vVGOpV34hLlWqvnSqjWGVz4RE0dIz4nM6VBAbGEulXzKg
 WQLVg5tBURPzUksF/D5/+eYrcWAvEcZ6V88Bpb7MSBUOSZbj6jbgncugEzYbuYMCu56J
 4CSZgErHylc2DidUYRnRnsNVnsPEucGPcRpFxUPIeTgHfmZ3mgcR2ugdAen7vam7wlNn
 FZoJBsDB6LHC5qlORfOcLv8BIDzpBYyiQUZFRR2qunl8Hfx32K7Vb5J8zsQ01y/G3wa7
 Bz5uhgM0uzmEtn2ZDv2SUdIobcbzPzwF3jo1NpSjTnUHsW/Df9vDJQgJr/q3K6ZHMvHo
 Womg==
X-Gm-Message-State: AOJu0YwDKevJYJ5eJCb9R03UD8cDaPV17mMeCrn44hNMHpowmihEM3nz
 YyY1LACPlYXKYKjr6EbaeZUC7+MgmvwIkKSxnNP4AaxYf4xEkn1haBBN
X-Gm-Gg: ASbGncvka2vfOWEFIFxWilLurjbMlt+px8KCOib+My/jpaCgHNYlmRCIwcFOx4AI7iK
 99SSn3Rjk8Ryp7EA8Y3s5KeTJifyoCtPWt0+kXijo2rLE1OXQuto4lY7hmRaPpT/vbACrT82K++
 PdNercQaB2Usf5eM6jkC/4BQx9sFR27bven2D2EXwN/AGhkjIpezoKx8WrzGaFd8RZHtec5xwWF
 Jc17j2ZPdkjQCTK432jSJSZc+67pPf40hpERa3DhkC8Mpj1wvMyk2qEv3Xa5e/6YPaRUL/vlDgy
 CMuQo7A8oZUkk5tadbjskFxo/vxjncpFIbuV3I4LYAEt353WZDOLaHlrMJrpf099Aj31OkPbsPS
 qhK0A0cPLcwYx5BB97EJsTf+0YxICA8ryV716bRS6AMTwIjljZYK4VAZw
X-Google-Smtp-Source: AGHT+IH8Nbbwl4av9MJGFGg24p0OYDwUuW5XPpw4xEW/riIerUNPXF/OPa/oLRF5drvZCBxuQJoBhg==
X-Received: by 2002:a05:6512:10c6:b0:55c:af6c:db58 with SMTP id
 2adb3069b0e04-55f0c6969c4mr277292e87.8.1755810812115; 
 Thu, 21 Aug 2025 14:13:32 -0700 (PDT)
Received: from onyx.my.domain (88-112-35-58.elisa-laajakaista.fi.
 [88.112.35.58]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55cef42625dsm3188742e87.144.2025.08.21.14.13.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Aug 2025 14:13:31 -0700 (PDT)
Date: Fri, 22 Aug 2025 00:13:29 +0300
From: Timo Teras <timo.teras@iki.fi>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@osuosl.org, en-wei.wu@canonical.com,
 marmarek@invisiblethingslab.com
Message-ID: <20250822001329.7e2d1710@onyx.my.domain>
In-Reply-To: <20250822000109.0e2bf226@onyx.my.domain>
References: <20250821171229.11679-1-vitaly.lifshits@intel.com>
 <20250822000109.0e2bf226@onyx.my.domain>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Introduce private flag
 to disable K1
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

Sorry for accidental sending this before finished. Comments amended.

On Fri, 22 Aug 2025 00:01:09 +0300
Timo Teras <timo.teras@iki.fi> wrote:

> Few more observations inline.
> 
> On Thu, 21 Aug 2025 20:12:29 +0300
> Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
> 
> > The K1 state reduces power consumption on ICH family network
> > controllers during idle periods, similarly to L1 state on PCI
> > Express NICs. Therefore, it is recommended and enabled by default.
> > However, on some systems it has been observed to have adverse side
> > effects, such as packet loss. It has been established through debug
> > that the problem may be due to firmware misconfiguration of specific
> > systems, interoperability with certain link partners, or marginal
> > electrical conditions of specific units.
> > 
> > These problems typically cannot be fixed in the field, and generic
> > workarounds to resolve the side effects on all systems, while
> > keeping K1 enabled, were found infeasible.
> > Therefore, add the option for users to globally disable K1 idle
> > state on the adapter.
> > 
> > Additionally, disable K1 by default for MTL and later platforms, due
> > to issues reported with the current configuration.
> > 
> > Link:
> > https://lore.kernel.org/intel-wired-lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com/
> > Link:
> > https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/
> > Link:
> > https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-itl/
> > Link: https://github.com/QubesOS/qubes-issues/issues/9896 Link:
> > https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2115393
> > 
> > Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> > ---
> > v2: Add a missing semaphore acquiring and disable K1 on MTL by
> > default ---
> >  drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
> >  drivers/net/ethernet/intel/e1000e/ethtool.c | 29 ++++++++++++++--
> >  drivers/net/ethernet/intel/e1000e/hw.h      |  1 +
> >  drivers/net/ethernet/intel/e1000e/ich8lan.c | 38
> > +++++++++++---------- drivers/net/ethernet/intel/e1000e/ich8lan.h |
> > 2 ++ drivers/net/ethernet/intel/e1000e/netdev.c  | 10 ++++++
> >  6 files changed, 60 insertions(+), 21 deletions(-)
> > 
> >[snip]
> > a/drivers/net/ethernet/intel/e1000e/netdev.c +++
> > b/drivers/net/ethernet/intel/e1000e/netdev.c @@ -5267,6 +5267,13 @@
> > static void e1000_watchdog_task(struct work_struct *work)
> > &adapter->link_duplex); e1000_print_link_info(adapter);
> >  
> > +			if (adapter->flags2 & FLAG2_DISABLE_K1) {
> > +				hw->phy.ops.acquire(hw);
> > +
> > adapter->hw.dev_spec.ich8lan.disable_k1 = true;
> > +
> > e1000_reconfigure_k1_params(&adapter->hw);
> > +				hw->phy.ops.release(hw);
> > +			}
> > +  
> 
> This also seems to now calling on every whatdog run the k1-params
> again and again if FLAG2_DISABLE_K1 is set. Is this intended? I
> suspect this should also change id disable_k1 != flags2 &
> FLAG2_DISABLE_K1.

Also disable_k1 is never set to false.

Does this mean that if disable-k1 was enabled, but later disabled.
Things don't work as the rest of the code paths check disable_k1 which
does not get updated.

 
> >  			/* check if SmartSpeed worked */
> >  			e1000e_check_downshift(hw);
> >  			if (phy->speed_downgraded)
> > @@ -7675,6 +7682,9 @@ static int e1000_probe(struct pci_dev *pdev,
> > const struct pci_device_id *ent) /* init PTP hardware clock */
> >  	e1000e_ptp_init(adapter);
> >  
> > +	if (hw->mac.type >= e1000_pch_mtp)
> > +		adapter->flags2 |= FLAG2_DISABLE_K1;
> > +  
> 
> Is this sufficient?

This was intended here because the flags2 does not propagate to
ich8lan.disable_k1 until the watch dog executes with the link up.

Thus most of the checks for disable_k1 do nothing until the link goes
up. Is this the intended behaviour?

> >  	/* reset the hardware with the new settings */
> >  	e1000e_reset(adapter);
> >    
> 

