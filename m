Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DBDB304AE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 22:20:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAB1A614F6;
	Thu, 21 Aug 2025 20:20:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dyoLSt5-veKs; Thu, 21 Aug 2025 20:20:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C001D614BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755807607;
	bh=dIQ2jNJiomUFN0QK+PV5+ML1uDfCe3sgjh4+b7BzOXc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NhkiMlpzhwUT8pe+mq7/NonJJnhONQoD+AptyNrVmbPnn/yVgaovz1h+HtVaPiksM
	 SgaYifK/CZIQBGdPM3GB+0t0qZ4UEnPN1TIVYAW9DJYw2wUQ1VnYRFDPn/j2/oBmm6
	 eGApnspBcSLBQWPzQPCbMLg5RedQIeYBKUazlrYZYO+loXzf5Ve+cuurSFVES2NT7U
	 i7/E3u0ns6NnjArf+c6HTURbGL82sDaTMdg4nNC3gFBvqfG/+V9VhH2GjMTpjVaIg6
	 sxKKcJgtx1PxogPUPzrwtgUXWdP7WWb/WQ1EB2VeLfYb+d2+gw6S4aXqmU7dYCSYL1
	 lHJojqsP9B6Ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C001D614BD;
	Thu, 21 Aug 2025 20:20:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 87011D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 20:20:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65AC1842BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 20:20:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9u25dI_KDwJA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 20:20:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.208.181;
 helo=mail-lj1-f181.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE23284294
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE23284294
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE23284294
 for <intel-wired-lan@osuosl.org>; Thu, 21 Aug 2025 20:20:03 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id
 38308e7fff4ca-333e7517adcso23244861fa.1
 for <intel-wired-lan@osuosl.org>; Thu, 21 Aug 2025 13:20:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755807601; x=1756412401;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dIQ2jNJiomUFN0QK+PV5+ML1uDfCe3sgjh4+b7BzOXc=;
 b=mTdFcTIhTtVbHTuSFpn1wAgQQ3/CS3giAazESOuKv8jWZGsEaK6JHGe6uNnr0N4R9w
 +6/4rP4POU58p1HjUmpeYctuo+Qs+C+4Vkz7Kl+FJ375+upsW4RO47w/fkKCGBs7VGfJ
 h2zBPTWsofDDrK/DrDa5jp2OUxzpX+6B6TlXdS3JBVLePrZPpmE6y+4GAKBSlIwTXDnM
 RvHEnJn23XjV3oXCDnQcSIGeAeh960ljbtqy6cJqYk67E5P3TjoSgUy4655XLlqOacpo
 /WHpH0TwI52MV7ntkT4aeXlBeMzwhLymOvLCmsjU5rbUM6QTmA6X8uD36egRIwfhx+ej
 lPxQ==
X-Gm-Message-State: AOJu0YwnaWYXGUU4cSC9xDdKKVd8+AmdpJv+AxauUxIB2E1tY1vyjW9h
 Dx7f6Z0tuP4Cl+amReu2WB4NIm8FKTBpsJNADjBnZRCzWn4yLKKi7c6H
X-Gm-Gg: ASbGncu5va/ENV8dXpo6IkK0LgeYnn+oW23gpf9iTqLFf6P527tr5qAe1dwPhazxUZK
 1kpKvTCZiqU8rE1pALhaWeQLETbqkZWzpZu+Skchs3vhUstFcXrGo70nVOcYOTzgi5HSyItEURV
 iC8ZF9Dk5FoW5jkdHdLsxH/gTCxc+O2h/cEcGbTycu2JYk7hWWIQrqV4+4frtgCbFGNsZkwARjC
 8ZYtkKKrEJkqEsT0NgwQe64/62lTAPl3hM6tVWijVeGJnpCgy6prZi5f5reAMl5zoR7mUSNC0it
 +uW1VWdrCUtvK1dEr0/b9Hu0/sAdeREw2ojEYo81EiPluxFcyiPYDKqqzHEuwJN+d43cVHlGGNa
 9+6nbHaFKqdFQ9TYGsEpBlBNmsigWq1GocOKXUAal3Lnh8Pz7uBqxzMQJ
X-Google-Smtp-Source: AGHT+IEoHWIkuQHm2AIHLGT6NaWFXT/ZXLyfjiAsd4/ia2llI3jzV2Rame4+nkR1Yo/tBiyo/1wOdg==
X-Received: by 2002:a2e:a54b:0:b0:32b:9792:1029 with SMTP id
 38308e7fff4ca-33650dda6bfmr1273421fa.14.1755807601097; 
 Thu, 21 Aug 2025 13:20:01 -0700 (PDT)
Received: from onyx.my.domain (88-112-35-58.elisa-laajakaista.fi.
 [88.112.35.58]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3340a60478esm34204301fa.38.2025.08.21.13.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Aug 2025 13:20:00 -0700 (PDT)
Date: Thu, 21 Aug 2025 23:19:58 +0300
From: Timo Teras <timo.teras@iki.fi>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@osuosl.org, en-wei.wu@canonical.com,
 marmarek@invisiblethingslab.com
Message-ID: <20250821231958.29b833b8@onyx.my.domain>
In-Reply-To: <20250821171229.11679-1-vitaly.lifshits@intel.com>
References: <20250821171229.11679-1-vitaly.lifshits@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
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

Thanks for this!

See below for one potential issue.

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

>  static int e1000e_set_priv_flags(struct net_device *netdev, u32
> priv_flags) {
>  	struct e1000_adapter *adapter = netdev_priv(netdev);
> +	struct e1000_hw *hw = &adapter->hw;
>  	unsigned int flags2 = adapter->flags2;
>  
> -	flags2 &= ~FLAG2_ENABLE_S0IX_FLOWS;
> +	flags2 &= ~(FLAG2_ENABLE_S0IX_FLOWS | FLAG2_DISABLE_K1);
>  	if (priv_flags & E1000E_PRIV_FLAGS_S0IX_ENABLED) {
> -		struct e1000_hw *hw = &adapter->hw;
> -
>  		if (hw->mac.type < e1000_pch_cnp)
>  			return -EINVAL;
>  		flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
>  	}
>  
> +	if (priv_flags & E1000E_PRIV_FLAGS_DISABLE_K1) {

This is just checking if 'disable-k1' flag is set. But if I understand
correctly the reset should be done if the 'disable-k1' flag state has
changed?

Currently this would cause unnecessary reset if 's0ix-enabled' was
changed when 'disable-k1' was already set and not changed. Also it
incorrect would not trigger reset if 'disable-k1' was set, and adjusted
to be not set.

Or did I miss something?

> +		if (hw->mac.type < e1000_ich8lan)
> +			return -EINVAL;
> +		flags2 |= FLAG2_DISABLE_K1;
> +		while (test_and_set_bit(__E1000_RESETTING,
> +					&adapter->state))
> +			usleep_range(1000, 2000);
> +
> +		/* reset the link to apply the changes */
> +		if (netif_running(adapter->netdev)) {
> +			e1000e_down(adapter, true);
> +			e1000e_up(adapter);
> +		} else {
> +			e1000e_reset(adapter);
> +		}
> +
> +		clear_bit(__E1000_RESETTING, &adapter->state);
> +	}
> +
>  	if (flags2 != adapter->flags2)
>  		adapter->flags2 = flags2;
>  
