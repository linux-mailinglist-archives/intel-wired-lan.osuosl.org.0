Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D298267652
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 01:03:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F3B8687377;
	Fri, 11 Sep 2020 23:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xr4XvtGCXHAx; Fri, 11 Sep 2020 23:03:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E204686DED;
	Fri, 11 Sep 2020 23:03:32 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4931F1BF29F
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:03:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B14C86141
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:03:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v-AbV0OzkuFx for <intel-wired-lan@osuosl.org>;
 Fri, 11 Sep 2020 23:03:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3918C85F6E
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:03:30 +0000 (UTC)
IronPort-SDR: Bk8lMCXU+1FxbfwlKPMwNUwSKWVEuQrORPoHrLVgswPwOB1VyzXNRneJG1FzGkxchMVZGygZZn
 6k6u0tm7KvcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="223055760"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="223055760"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 16:03:19 -0700
IronPort-SDR: gn74QwVdotK58fzMgLRQPXA25iZRHl1disd5Ksw2Sc5cuY6vtQbCclrgFV/3Cqq3+6uwKutrRj
 2XTdnKSAIy4w==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="329947330"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.209.122.57])
 ([10.209.122.57])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 16:03:18 -0700
To: intel-wired-lan@osuosl.org
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-7-jesse.brandeburg@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <e1cf9542-4e3b-a666-7861-47b069b3a606@intel.com>
Date: Fri, 11 Sep 2020 16:03:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20200911012337.14015-7-jesse.brandeburg@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 06/11]
 drivers/net/ethernet: clean up unused assignments
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/10/2020 6:23 PM, Jesse Brandeburg wrote:
> As part of the W=1 compliation series, these lines all created
> warnings about unused variables that were assigned a value. Most
> of them are from register reads, but some are just picking up
> a return value from a function and never doing anything with it.
> 
> The register reads should be OK, because the current
> implementation of readl and friends will always execute even
> without an lvalue.
> 
> When it makes sense, just remove the lvalue assignment and the
> local. Other times, just remove the offending code, and
> occasionally, just mark the variable as maybe unused since it
> could be used in an ifdef or debug scenario.
> 
> Only compile tested with W=1 and an allyesconfig with all the
> network drivers turned into modules (to try to test all options).
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/brocade/bna/bnad.c       |  7 ++--
>  .../net/ethernet/cavium/liquidio/lio_main.c   |  4 +--
>  .../ethernet/cavium/liquidio/octeon_device.c  | 13 ++++----
>  drivers/net/ethernet/cortina/gemini.c         |  6 ++--
>  drivers/net/ethernet/dec/tulip/de4x5.c        |  4 +--
>  drivers/net/ethernet/dec/tulip/media.c        |  5 ---
>  drivers/net/ethernet/dnet.c                   |  8 ++---
>  drivers/net/ethernet/freescale/fec_ptp.c      |  3 +-
>  drivers/net/ethernet/marvell/mvneta.c         |  7 ++--
>  drivers/net/ethernet/marvell/pxa168_eth.c     |  3 +-
>  drivers/net/ethernet/mellanox/mlx4/en_tx.c    |  2 +-
>  drivers/net/ethernet/micrel/ksz884x.c         | 13 +++-----
>  drivers/net/ethernet/microchip/lan743x_main.c |  9 ++----
>  drivers/net/ethernet/neterion/vxge/vxge-reg.h |  4 +--
>  .../net/ethernet/neterion/vxge/vxge-traffic.c | 32 +++++++------------
>  .../ethernet/qlogic/qlcnic/qlcnic_83xx_hw.c   |  3 +-
>  drivers/net/ethernet/sfc/falcon/farch.c       | 29 +++++++----------
>  drivers/net/ethernet/sis/sis900.c             |  5 ++-
>  .../net/ethernet/stmicro/stmmac/stmmac_main.c |  4 +--
>  .../net/ethernet/synopsys/dwc-xlgmac-common.c |  2 +-
>  drivers/net/ethernet/ti/cpsw_new.c            |  2 --
>  drivers/net/ethernet/ti/davinci_emac.c        |  5 ++-
>  drivers/net/ethernet/ti/tlan.c                |  4 +--
>  drivers/net/ethernet/via/via-velocity.c       | 13 --------
>  24 files changed, 65 insertions(+), 122 deletions(-)
> 
> diff --git a/drivers/net/ethernet/brocade/bna/bnad.c b/drivers/net/ethernet/brocade/bna/bnad.c
> index cc80bbbefe87..7e4e831d720f 100644
> --- a/drivers/net/ethernet/brocade/bna/bnad.c
> +++ b/drivers/net/ethernet/brocade/bna/bnad.c
> @@ -3277,7 +3277,7 @@ bnad_change_mtu(struct net_device *netdev, int new_mtu)
>  {
>  	int err, mtu;
>  	struct bnad *bnad = netdev_priv(netdev);
> -	u32 rx_count = 0, frame, new_frame;
> +	u32 frame, new_frame;
>  
>  	mutex_lock(&bnad->conf_mutex);
>  
> @@ -3293,12 +3293,9 @@ bnad_change_mtu(struct net_device *netdev, int new_mtu)
>  		/* only when transition is over 4K */
>  		if ((frame <= 4096 && new_frame > 4096) ||
>  		    (frame > 4096 && new_frame <= 4096))
> -			rx_count = bnad_reinit_rx(bnad);
> +			bnad_reinit_rx(bnad);
>  	}
>  
> -	/* rx_count > 0 - new rx created
> -	 *	- Linux set err = 0 and return
> -	 */
>  	err = bnad_mtu_set(bnad, new_frame);
>  	if (err)
>  		err = -EBUSY;
> diff --git a/drivers/net/ethernet/cavium/liquidio/lio_main.c b/drivers/net/ethernet/cavium/liquidio/lio_main.c
> index 8e0ed01e7f03..737ae69eec6e 100644
> --- a/drivers/net/ethernet/cavium/liquidio/lio_main.c
> +++ b/drivers/net/ethernet/cavium/liquidio/lio_main.c
> @@ -1,4 +1,4 @@
> -/**********************************************************************
> +/*

I suspect this was meant to go into the kdoc patch instead?

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
