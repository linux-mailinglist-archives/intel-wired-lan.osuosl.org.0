Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B26267641
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 00:59:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC9A3878C7;
	Fri, 11 Sep 2020 22:59:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWvOPWaK56Cg; Fri, 11 Sep 2020 22:59:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18C9287920;
	Fri, 11 Sep 2020 22:59:33 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9CEF1BF232
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 22:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C185203E7
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 22:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5PvAQVIA3zt0 for <intel-wired-lan@osuosl.org>;
 Fri, 11 Sep 2020 22:59:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id C60B7203E3
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 22:59:29 +0000 (UTC)
IronPort-SDR: hRbCkO6RuUfi1Nd/VcB+OTxbStzjg9aTAtX8WAabj0KKtV3fq3Xlf6NQWNQFi2QzmfN5NqJwP5
 Ez++JVLqKmLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="146602058"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="146602058"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 15:59:28 -0700
IronPort-SDR: B1V41QMfJYtHogvrwOopljzkW1n9MrhmExR4UbJ40lDDbdAmDHicwzq+5lHd5J+70EAL5XqBVn
 pDe3604WZojw==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="329945900"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.209.122.57])
 ([10.209.122.57])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 15:59:28 -0700
To: intel-wired-lan@osuosl.org
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-11-jesse.brandeburg@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <fbd1fdd9-1000-8aac-7e5c-bc761b2209e1@intel.com>
Date: Fri, 11 Sep 2020 15:59:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20200911012337.14015-11-jesse.brandeburg@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 10/11]
 drivers/net/ethernet: remove incorrectly formatted doc
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

A lot of these look like they should probably just be converted to use
kdoc format instead of removing the '/**'

On 9/10/2020 6:23 PM, Jesse Brandeburg wrote:
> As part of the W=1 series for ethernet, these drivers were discovered to
> be using kdoc style comments but were not actually doing kdoc.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/amazon/ena/ena_com.c     |  2 +-
>  .../aquantia/atlantic/hw_atl/hw_atl_b0.c      |  2 +-
>  drivers/net/ethernet/xilinx/ll_temac_main.c   | 26 +++++++++----------
>  3 files changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/amazon/ena/ena_com.c b/drivers/net/ethernet/amazon/ena/ena_com.c
> index 452e66b39a17..6967d40b5ac7 100644
> --- a/drivers/net/ethernet/amazon/ena/ena_com.c
> +++ b/drivers/net/ethernet/amazon/ena/ena_com.c
> @@ -603,7 +603,7 @@ static int ena_com_wait_and_process_admin_cq_polling(struct ena_comp_ctx *comp_c
>  	return ret;
>  }
>  
> -/**
> +/*
>   * Set the LLQ configurations of the firmware
>   *
>   * The driver provides only the enabled feature values to the device,
> diff --git a/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c b/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c
> index 8941ac4df9e3..9f1b15077e7d 100644
> --- a/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c
> +++ b/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c
> @@ -1536,7 +1536,7 @@ static int hw_atl_b0_hw_fl2_clear(struct aq_hw_s *self,
>  	return aq_hw_err_from_flags(self);
>  }
>  
> -/**
> +/*
>   * @brief Set VLAN filter table
>   * @details Configure VLAN filter table to accept (and assign the queue) traffic
>   *  for the particular vlan ids.

This looks like a doxygen style comment. I wonder if whoever maintains
this code uses doxygen and expects this to get picked up.

> diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
> index 9a15f14daa47..60c199fcb91e 100644
> --- a/drivers/net/ethernet/xilinx/ll_temac_main.c
> +++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
> @@ -106,7 +106,7 @@ static bool hard_acs_rdy_or_timeout(struct temac_local *lp, ktime_t timeout)
>   */
>  #define HARD_ACS_RDY_POLL_NS (20 * NSEC_PER_MSEC)
>  
> -/**
> +/*
>   * temac_indirect_busywait - Wait for current indirect register access
>   * to complete.
>   */

This looks like a function comment. Shouldn't this just be fixed/updated
so that it is a valid kdoc comment instead?

> @@ -121,7 +121,7 @@ int temac_indirect_busywait(struct temac_local *lp)
>  		return 0;
>  }
>  
> -/**
> +/*
>   * temac_indirect_in32 - Indirect register read access.  This function
>   * must be called without lp->indirect_lock being held.
>   */
> @@ -136,7 +136,7 @@ u32 temac_indirect_in32(struct temac_local *lp, int reg)
>  	return val;
>  }
>  
> -/**
> +/*
>   * temac_indirect_in32_locked - Indirect register read access.  This
>   * function must be called with lp->indirect_lock being held.  Use
>   * this together with spin_lock_irqsave/spin_lock_irqrestore to avoid
> @@ -164,7 +164,7 @@ u32 temac_indirect_in32_locked(struct temac_local *lp, int reg)
>  	return temac_ior(lp, XTE_LSW0_OFFSET);
>  }
>  
> -/**
> +/*
>   * temac_indirect_out32 - Indirect register write access.  This function
>   * must be called without lp->indirect_lock being held.
>   */
> @@ -177,7 +177,7 @@ void temac_indirect_out32(struct temac_local *lp, int reg, u32 value)
>  	spin_unlock_irqrestore(lp->indirect_lock, flags);
>  }
>  
> -/**
> +/*
>   * temac_indirect_out32_locked - Indirect register write access.  This
>   * function must be called with lp->indirect_lock being held.  Use
>   * this together with spin_lock_irqsave/spin_lock_irqrestore to avoid
> @@ -202,7 +202,7 @@ void temac_indirect_out32_locked(struct temac_local *lp, int reg, u32 value)
>  	WARN_ON(temac_indirect_busywait(lp));
>  }
>  
> -/**
> +/*
>   * temac_dma_in32_* - Memory mapped DMA read, these function expects a
>   * register input that is based on DCR word addresses which are then
>   * converted to memory mapped byte addresses.  To be assigned to
> @@ -218,7 +218,7 @@ static u32 temac_dma_in32_le(struct temac_local *lp, int reg)
>  	return ioread32(lp->sdma_regs + (reg << 2));
>  }
>  
> -/**
> +/*
>   * temac_dma_out32_* - Memory mapped DMA read, these function expects
>   * a register input that is based on DCR word addresses which are then
>   * converted to memory mapped byte addresses.  To be assigned to
> @@ -240,7 +240,7 @@ static void temac_dma_out32_le(struct temac_local *lp, int reg, u32 value)
>   */
>  #ifdef CONFIG_PPC_DCR
>  
> -/**
> +/*
>   * temac_dma_dcr_in32 - DCR based DMA read
>   */
>  static u32 temac_dma_dcr_in(struct temac_local *lp, int reg)
> @@ -248,7 +248,7 @@ static u32 temac_dma_dcr_in(struct temac_local *lp, int reg)
>  	return dcr_read(lp->sdma_dcrs, reg);
>  }
>  
> -/**
> +/*
>   * temac_dma_dcr_out32 - DCR based DMA write
>   */
>  static void temac_dma_dcr_out(struct temac_local *lp, int reg, u32 value)
> @@ -256,7 +256,7 @@ static void temac_dma_dcr_out(struct temac_local *lp, int reg, u32 value)
>  	dcr_write(lp->sdma_dcrs, reg, value);
>  }
>  
> -/**
> +/*
>   * temac_dcr_setup - If the DMA is DCR based, then setup the address and
>   * I/O  functions
>   */
> @@ -293,7 +293,7 @@ static int temac_dcr_setup(struct temac_local *lp, struct platform_device *op,
>  
>  #endif
>  
> -/**
> +/*
>   * temac_dma_bd_release - Release buffer descriptor rings
>   */
>  static void temac_dma_bd_release(struct net_device *ndev)
> @@ -323,7 +323,7 @@ static void temac_dma_bd_release(struct net_device *ndev)
>  				  lp->tx_bd_v, lp->tx_bd_p);
>  }
>  
> -/**
> +/*
>   * temac_dma_bd_init - Setup buffer descriptor rings
>   */
>  static int temac_dma_bd_init(struct net_device *ndev)
> @@ -593,7 +593,7 @@ static struct temac_option {
>  	{}
>  };
>  
> -/**
> +/*
>   * temac_setoptions
>   */
>  static u32 temac_setoptions(struct net_device *ndev, u32 options)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
