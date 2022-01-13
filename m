Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5430148D715
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jan 2022 13:05:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5EB184BCA;
	Thu, 13 Jan 2022 12:05:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zdVJRaEg6Z2o; Thu, 13 Jan 2022 12:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1300A84BBD;
	Thu, 13 Jan 2022 12:05:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 516B71BF57B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 12:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A70B84BBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 12:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XLY6rf2AmZOC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jan 2022 12:05:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B6DB84BBD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 12:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642075515; x=1673611515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wzvoDZh+pv5i/izzjAbR/w0bQzWO3svdKa5K0spZmJc=;
 b=bgcjXYjnN4Ih8G8tQXBp34Atj1WZ70uVjQ82wHxD57OK/cegp6besnSA
 TEsRfP+GkhdkJoN8GbfaA/mfRR3w/sPu/mkBL9eZqbaNn0VCQ4mSQm+ic
 WBoAoJJ6Aqw8Ia+O8N0ZrkWYSTwqdJ8KSD7lmgNk5kfJBX8pEEjn8b4XA
 m0KiZkykaDvokr7UoqmC3F1prMO+AwQ3eHwK2C1qWJK5QmqELusNBFYCb
 Pg/a4ZeoHCvNrIzoReyVON3p1tldAOkiChbe6LIQ/40JkLzagrGQNf2FO
 yid17Ipa8RugDVpRYk99sBPFd86tA3sP8gvYP0wKl8+eXYpv0g8bXrK+K g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="223976092"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="223976092"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 04:05:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="763242201"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 13 Jan 2022 04:05:12 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20DC5BVB000322; Thu, 13 Jan 2022 12:05:11 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Thu, 13 Jan 2022 13:03:46 +0100
Message-Id: <20220113120346.9349-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220113004015.449460-1-vinicius.gomes@intel.com>
References: <YdxZr0wMxvsDCpbV@wantstofly.org>
 <20220113004015.449460-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix trying to
 register an already registered xdp_rxq
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Wed, 12 Jan 2022 16:40:15 -0800

> When changing the number of RX descriptors, for example, by doing
> 
>  $ ethtool -G enp3s0 rx 1024
> 
> the XDP RX queue information (xdp_rxq) may be already registered, if
> it's registered there's no need to do any thing in relation to
> xdp_rxq, none of it's parameters will change if we change the number
> of descriptors, for example.
> 
> Fixes: 4609ffb9f615 ("igc: Refactor XDP rxq info registration")
> Reported-by: Lennert Buytenhek <buytenh@wantstofly.org>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> Lennert, I added your name and email to the Reported-by tag, please
> see if you are ok with it.
> 
>  drivers/net/ethernet/intel/igc/igc_main.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index e29aadbc6744..d163139161fc 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /* Copyright (c)  2018 Intel Corporation */
>  
> +#include "net/xdp.h"
>  #include <linux/module.h>
>  #include <linux/types.h>
>  #include <linux/if_vlan.h>
> @@ -499,12 +500,14 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
>  	u8 index = rx_ring->queue_index;
>  	int size, desc_len, res;
>  
> -	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
> -			       rx_ring->q_vector->napi.napi_id);
> -	if (res < 0) {
> -		netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
> -			   index);
> -		return res;
> +	if (!xdp_rxq_info_is_reg(&rx_ring->xdp_rxq)) {
> +		res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
> +				       rx_ring->q_vector->napi.napi_id);
> +		if (res < 0) {
> +			netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
> +				   index);
> +			return res;
> +		}
>  	}

While the fix itself is correct, I don't really like the setup flow
in igc_ethtool_set_ringparam() (here: [0]).

Instead of unregistering/freeing Rx rings at first and then
allocating/registering the new ones, driver registers the new ones
at first and then unregister the olds.
It may cause other issues apart from this one. E.g. driver performs
Rxq info unregistering at the end, so netdevice may end up with no
Rxq info registered after changing the number of descriptors (Rxq
info is enumerated by queue index).

To me, the righteous approach would be changing this flow to more
common, i.e. do unregistering/freeing at first and then register
and allocate.

>  
>  	size = sizeof(struct igc_rx_buffer) * rx_ring->count;
> -- 
> 2.34.1

[0] https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/igc/igc_ethtool.c#L664

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
