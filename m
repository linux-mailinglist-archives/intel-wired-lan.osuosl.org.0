Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A4248CFD4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jan 2022 01:55:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F9C86FC14;
	Thu, 13 Jan 2022 00:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5H5-6Yc8cfx1; Thu, 13 Jan 2022 00:55:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D26360AEA;
	Thu, 13 Jan 2022 00:55:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5F371BF427
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 00:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E07EB60AEA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 00:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lTzFXE4BT8hL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jan 2022 00:55:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.wantstofly.org (hmm.wantstofly.org [213.239.204.108])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E45FC60AE8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 00:55:44 +0000 (UTC)
Received: by mail.wantstofly.org (Postfix, from userid 1000)
 id B0D2B7F508; Thu, 13 Jan 2022 02:55:41 +0200 (EET)
Date: Thu, 13 Jan 2022 02:55:41 +0200
From: Lennert Buytenhek <buytenh@wantstofly.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <Yd94jSgomz2XhE/s@wantstofly.org>
References: <YdxZr0wMxvsDCpbV@wantstofly.org>
 <20220113004015.449460-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220113004015.449460-1-vinicius.gomes@intel.com>
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

On Wed, Jan 12, 2022 at 04:40:15PM -0800, Vinicius Costa Gomes wrote:

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

This patch seems to work -- thank you!

Tested-by: Lennert Buytenhek <buytenh@arista.com>

Could you use the same email address for Reported-by: ?


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
>  
>  	size = sizeof(struct igc_rx_buffer) * rx_ring->count;
> -- 
> 2.34.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
