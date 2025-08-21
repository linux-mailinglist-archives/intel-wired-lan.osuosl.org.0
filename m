Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4766DB307A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 23:01:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9371D4155D;
	Thu, 21 Aug 2025 21:01:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wnC7v_VzZL3B; Thu, 21 Aug 2025 21:01:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99D08415B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755810077;
	bh=XlWVaS1gyjVzZ7/mgAaeAIHME43ECTtGTBxgiOtVFnw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fK5wHqOMEKbgOf17eiy4pWh9OgM2PD/6bU20rZ0/C6mmuY8EI7T89jnbWuYf/gfnR
	 5EUQjeKnu+T2qEtmhjPWiupzFJW238WfSXbTbaXHCVxcB8Wm8ydh0eo57frEFaNUJJ
	 QB/SYDo/BxAIlJuAWwd25gHqpZBF8F7KD+VEAdlbibCMp/+YGuOvPX8wjH9Udk4FpG
	 8m8FrYDUZ5EEqpdaBDk4JXcdULSghpIkYUbR5nsaaSocSzxBx5R6XAt92/wAtFlHYz
	 8mM2/80MnFwHdxbLKNPIIXkgcocWjfPJUe6VRuH9C9OnwM8+YfxDKFoZp/pAl+x5Y7
	 n14IHh/zSaCvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99D08415B3;
	Thu, 21 Aug 2025 21:01:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 605C21C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 21:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 464D44145A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 21:01:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FrU_gO2KryO3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 21:01:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.208.171;
 helo=mail-lj1-f171.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F77041455
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F77041455
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F77041455
 for <intel-wired-lan@osuosl.org>; Thu, 21 Aug 2025 21:01:14 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id
 38308e7fff4ca-333f8f9ace5so11791241fa.1
 for <intel-wired-lan@osuosl.org>; Thu, 21 Aug 2025 14:01:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755810073; x=1756414873;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XlWVaS1gyjVzZ7/mgAaeAIHME43ECTtGTBxgiOtVFnw=;
 b=FEuomHDrCzd5CX53UPTOeI1mTDEcPdDu0lfVTsXCv53VoCrxU19v2S6X5tcBVCDpVi
 /+AL84sO4XuBf0M5cU0Ytt1MFs/4MYzoYgIfdbofJM1Nz+qUTAaMgTQ5+3JnnRV1e+L9
 naw4U1ZckWMyU1cZZS1aNO17V+wlyWtgLysTRlfj9a0kI6TSFQw98ddPwFO6W0iBRuLX
 egJy4mLpAJ5Hc+JC3aEVApay9NGxVHAu4J+jyZwIvOIamOiO5QhJpNFaHNOq8R7AbTHL
 rPRqe6pG6HCog8eAt5G2uCmJd453CpRpuTHBgMfxdC95oLOpRrB1FOQ4yk81yKunznAG
 mPXw==
X-Gm-Message-State: AOJu0Yx6ddNJ8iR60iOVQsg/RFXqLRXyzsI1cd/qAlWs+VtMJSoRxe7q
 sJgc9QD8sT1pHZfU7j50evGqQcVHCMzRh1c0glY6Wz44zO0lzKQmQIpx
X-Gm-Gg: ASbGncu9nClmAxfRoSwAl/vP/2dZg1HaP3tsWxrbmF4QgMq4oltPhyktCl2IJd32Qud
 LBM0LkfI9pON6tUWqdm+rRujyxwwna8qZJbgR4BIL6q+73i61c05mUU4g5QzfN5sGYTigp5DfNP
 s3tZzdYrUl3NGFgAhEjcGrvcfhqvSwdo5hhEH6HphUVctRuo12AhIlVCUfFhYFWzWS0J4VQa97E
 7a0DwbxQsiunFVYpSOawP1AdS5+Y8f75GH4cyAdztH8iyZqyXp5FPwWO5fTUtSX3xYiOfWV+zT6
 kZU4UTi0fMUcZbEXqvW5b2U5fb2slZC5lTUSndaoxa93TKVqzSX1byDS6fAXSPTNCHKEs2npngL
 +KnIy8aEih+oCcBaRb6mUwPzZRFe6YSR61pNuS7BhDTfU5Z9V/V6X7RMJgdHGqlJfmzE=
X-Google-Smtp-Source: AGHT+IHKInX+EdIme2AgX++HYMievf+PWFgrWPJUDYssxP6FLP4XJLWP66z7sQdqgK+M8ZEAMCUTHw==
X-Received: by 2002:a05:651c:b29:b0:335:2d39:efe6 with SMTP id
 38308e7fff4ca-3365105819emr1266461fa.42.1755810072299; 
 Thu, 21 Aug 2025 14:01:12 -0700 (PDT)
Received: from onyx.my.domain (88-112-35-58.elisa-laajakaista.fi.
 [88.112.35.58]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3340a4758bfsm35573931fa.32.2025.08.21.14.01.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Aug 2025 14:01:11 -0700 (PDT)
Date: Fri, 22 Aug 2025 00:01:09 +0300
From: Timo Teras <timo.teras@iki.fi>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@osuosl.org, en-wei.wu@canonical.com,
 marmarek@invisiblethingslab.com
Message-ID: <20250822000109.0e2bf226@onyx.my.domain>
In-Reply-To: <20250821171229.11679-1-vitaly.lifshits@intel.com>
References: <20250821171229.11679-1-vitaly.lifshits@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
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

Few more observations inline.

On Thu, 21 Aug 2025 20:12:29 +0300
Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:

> The K1 state reduces power consumption on ICH family network
> controllers during idle periods, similarly to L1 state on PCI Express
> NICs. Therefore, it is recommended and enabled by default.
> However, on some systems it has been observed to have adverse side
> effects, such as packet loss. It has been established through debug
> that the problem may be due to firmware misconfiguration of specific
> systems, interoperability with certain link partners, or marginal
> electrical conditions of specific units.
> 
> These problems typically cannot be fixed in the field, and generic
> workarounds to resolve the side effects on all systems, while keeping
> K1 enabled, were found infeasible.
> Therefore, add the option for users to globally disable K1 idle state
> on the adapter.
> 
> Additionally, disable K1 by default for MTL and later platforms, due
> to issues reported with the current configuration.
> 
> Link:
> https://lore.kernel.org/intel-wired-lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com/
> Link:
> https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/
> Link:
> https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-itl/
> Link: https://github.com/QubesOS/qubes-issues/issues/9896 Link:
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2115393
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: Add a missing semaphore acquiring and disable K1 on MTL by default
> ---
>  drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 29 ++++++++++++++--
>  drivers/net/ethernet/intel/e1000e/hw.h      |  1 +
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 38
> +++++++++++---------- drivers/net/ethernet/intel/e1000e/ich8lan.h |
> 2 ++ drivers/net/ethernet/intel/e1000e/netdev.c  | 10 ++++++
>  6 files changed, 60 insertions(+), 21 deletions(-)
> 
>[snip]
> a/drivers/net/ethernet/intel/e1000e/netdev.c +++
> b/drivers/net/ethernet/intel/e1000e/netdev.c @@ -5267,6 +5267,13 @@
> static void e1000_watchdog_task(struct work_struct *work)
> &adapter->link_duplex); e1000_print_link_info(adapter);
>  
> +			if (adapter->flags2 & FLAG2_DISABLE_K1) {
> +				hw->phy.ops.acquire(hw);
> +
> adapter->hw.dev_spec.ich8lan.disable_k1 = true;
> +
> e1000_reconfigure_k1_params(&adapter->hw);
> +				hw->phy.ops.release(hw);
> +			}
> +

This also seems to now calling on every whatdog run the k1-params again
and again if FLAG2_DISABLE_K1 is set. Is this intended? I suspect this
should also change id disable_k1 != flags2 & FLAG2_DISABLE_K1.


>  			/* check if SmartSpeed worked */
>  			e1000e_check_downshift(hw);
>  			if (phy->speed_downgraded)
> @@ -7675,6 +7682,9 @@ static int e1000_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent) /* init PTP hardware clock */
>  	e1000e_ptp_init(adapter);
>  
> +	if (hw->mac.type >= e1000_pch_mtp)
> +		adapter->flags2 |= FLAG2_DISABLE_K1;
> +

Is this sufficient? The 

>  	/* reset the hardware with the new settings */
>  	e1000e_reset(adapter);
>  

