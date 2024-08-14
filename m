Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C96951E28
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 17:09:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1230F40499;
	Wed, 14 Aug 2024 15:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E-wktSXV_IN5; Wed, 14 Aug 2024 15:09:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3679D40546
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723648166;
	bh=AtZCPfsQSYgxkQGUCYHmU4nJTO7phyxbKInji8uXu8g=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j+x5E2YRpqcbSoO2d/SDardTxSWPzGGARPKqMIXHSrZdHCEgHY/Zc9jZBxmNaJLnD
	 ashKG50GJDSVHSuiiybX3uwmszSEZiDf29fKDse5HOSHBBZQgraK5a3etidx6hSoX9
	 /ffCkIgsmcnjGb/if8sXTYX6/T5VSxz3+ILhpUOIkfkCXAeIrmRvsYySZJGEwdm4Wj
	 pccFL26wh19rm2x76QN62AIgTmQkmtE9N6dYZFEQ5tb68oUzGhagZsTdP1e2sB9VPb
	 opAN5QSzb6e64J38yfsS7NbnUHZQxBda4JRrRfy6UPcrnOOnIBsKUSYtPikJgIU4jl
	 BuQGJCPillDBw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3679D40546;
	Wed, 14 Aug 2024 15:09:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 498541BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 15:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3355C402AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 15:09:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iU9jtEfPb7GW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 15:09:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B11F403D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B11F403D4
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B11F403D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 15:09:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5D431CE10C5;
 Wed, 14 Aug 2024 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBEF7C116B1;
 Wed, 14 Aug 2024 15:09:16 +0000 (UTC)
Date: Wed, 14 Aug 2024 08:09:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <20240814080915.005cb9ac@kernel.org>
In-Reply-To: <ZryfGDU9wHE0IrvZ@LQ3V64L9R2.home>
References: <20240812145633.52911-1-jdamato@fastly.com>
 <20240813171710.599d3f01@kernel.org>
 <ZrxZaHGDTO3ohHFH@LQ3V64L9R2.home>
 <ZryfGDU9wHE0IrvZ@LQ3V64L9R2.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1723648157;
 bh=XhIk/ivJe9y/rFLSzxxGWtrccGrpo6Zo1KfaOrHUh0A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=flUVwimzH7kKJ075Wx5f8LVKW0LbSvueMiSoq5G5rJqfot7EoqUHkR1LLhfURHmMk
 DyXOdkM1A02mYqsd4Cp6ASe3m7jug9VLitb45786NlXmKdtU70AIVjYr8v9AEyl+m9
 OHgfhQLoM6YtXLYcr3vLLfidluRpUNHW1TOu4Uf45W/OQyTaqu7S4E/iZ0EG+wWe4d
 bFKaKLyv1tOyfvKiFRGb+ssQusYjc9iVKWfwue5tDOtllx0PrFuZ9U6J3mIaHK/cyE
 fmgAhdNFmXVPt6dcepm2Q2HjyB+NPX8aZsHejMNwJEe7PaxszKgtLhdwUGtqI3d/eh
 L8aNgZbB1NdMA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=flUVwimz
Subject: Re: [Intel-wired-lan] [RFC net-next 0/6] Cleanup IRQ affinity
 checks in several drivers
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Ziwei Xiao <ziweixiao@google.com>, Jeroen de Borst <jeroendb@google.com>,
 Leon Romanovsky <leon@kernel.org>, "open
 list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, "moderated list:INTEL
 ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>, Shailend Chand <shailend@google.com>,
 Harshitha Ramamurthy <hramamurthy@google.com>,
 Willem de Bruijn <willemb@google.com>, Yishai Hadas <yishaih@nvidia.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 14 Aug 2024 13:12:08 +0100 Joe Damato wrote:
> Actually... how about a slightly different approach, which caches
> the affinity mask in the core?

I was gonna say :)

>   0. Extend napi struct to have a struct cpumask * field
> 
>   1. extend netif_napi_set_irq to:
>     a. store the IRQ number in the napi struct (as you suggested)
>     b. call irq_get_effective_affinity_mask to store the mask in the
>        napi struct
>     c. set up generic affinity_notify.notify and
>        affinity_notify.release callbacks to update the in core mask
>        when it changes

This part I'm not an export on.

>   2. add napi_affinity_no_change which now takes a napi_struct
> 
>   3. cleanup all 5 drivers:
>     a. add calls to netif_napi_set_irq for all 5 (I think no RTNL
>        is needed, so I think this would be straight forward?)
>     b. remove all affinity_mask caching code in 4 of 5 drivers
>     c. update all 5 drivers to call napi_affinity_no_change in poll
> 
> Then ... anyone who adds support for netif_napi_set_irq to their
> driver in the future gets automatic support in-core for
> caching/updating of the mask? And in the future netdev-genl could
> dump the mask since its in-core?
> 
> I'll mess around with that locally to see how it looks, but let me
> know if that sounds like a better overall approach.

Could we even handle this directly as part of __napi_poll(),
once the driver gives core all of the relevant pieces of information ?
