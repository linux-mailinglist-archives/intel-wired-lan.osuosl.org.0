Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27165A32679
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 14:03:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 352B1417EC;
	Wed, 12 Feb 2025 13:03:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mW33XhCkf5Lh; Wed, 12 Feb 2025 13:03:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF88B417C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739365410;
	bh=sMsDDR+l0aG10qO1NzLVf3HKFjnpuVagjSCY03vRwpw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7c+hqFvi5IeMujIZq8RFEeN71BUxuFDX2yytXp6+TEbHCrpfsjnJ9hccmdsgdj5bX
	 pL0IPYs4Jbbz/PdGvosbq4MkNtVFXgvqkUOZouLgTUamG3GVzQtbjLwkbBqeH3cO4H
	 Yg4UHtnFN8etPRyHutkJuYAOOyu3iHYCOviZftxD1PGhkuzKaOiKdI448n/Id5owpu
	 tY/Ws+U6mC6o0SlXbYanBFSIg2ugR0atXTWjLKpB+JU8rmF5BwPXO1bfFi3tfaPV37
	 LeWAovGy+ZvYVDB5Vu1FTluwZWu6GAonNIUO34wUteIIr+iO7I8MEr4pZjyS2ly585
	 vl0a016lyQBBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF88B417C5;
	Wed, 12 Feb 2025 13:03:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 788DCC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:03:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6785B8475C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:03:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IjDM31y1ASry for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 13:03:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1F21A84756
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F21A84756
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F21A84756
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:03:25 +0000 (UTC)
X-CSE-ConnectionGUID: /HGimx8iTsK3bnihlZ1E3w==
X-CSE-MsgGUID: xPz5UEqBSwGBuj1kFWibaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39942086"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="39942086"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:03:18 -0800
X-CSE-ConnectionGUID: DyNfZz2GRCilmNMCdvFUXA==
X-CSE-MsgGUID: GoQOCknuQsGT0qgC27VQeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="112800482"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:03:11 -0800
Date: Wed, 12 Feb 2025 13:59:29 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 marcin.szycik@linux.intel.com, jedrzej.jagielski@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 anthony.l.nguyen@intel.com, dawid.osuchowski@intel.com, horms@kernel.org
Message-ID: <Z6ybMegMoaoMLfLq@mev-dev.igk.intel.com>
References: <20250212075724.3352715-1-michal.swiatkowski@linux.intel.com>
 <20250212075724.3352715-2-michal.swiatkowski@linux.intel.com>
 <cadb0151-8713-4bf7-810c-569559afc969@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cadb0151-8713-4bf7-810c-569559afc969@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739365407; x=1770901407;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vw+fk6TutSMTglgxyud78F1y8nTIycPRpVYq6t6PgHU=;
 b=b23ANuWaifGt5VChoOI19Sl9xvVcwuYAdjp5f8d1/kiHCA0Fnz2M4bn/
 nR+O8QQZF5MrXHbQfKOmxVi+hQG+FymR6dRsDGWoIrdXFZD0iSNbkTiTs
 7NP5ZMfwXsgQif0Z67ZMWjCIb1h51DGnmaSIrNRmwKRa3N9KESlMEtkAO
 659gayPtcAio/pax8cSPT1TBM93GVazsiyZ5+UdwGIT9pAGLcVfWRr2ip
 +Qsauyh7mr/f0WUAjMspP4VulPa4NaknwFgIFYfBEIu++vuTiDZd0KQC5
 2+rzv7izklzxKBZB2J2O9N3KYq906si+0+SRjZXL0EhzipQNzQ4ysML97
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b23ANuWa
Subject: Re: [Intel-wired-lan] [iwl-next v2 1/4] ixgbe: add MDD support
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

On Wed, Feb 12, 2025 at 09:07:18AM +0100, Paul Menzel wrote:
> Dear Michal, dear Paul,
> 
> 
> Thank you for your patch. For the summary/title you could use:
> 
> ixgbe: Support Malicious Driver Detection (MDD)
> 
> Am 12.02.25 um 08:57 schrieb Michal Swiatkowski:
> > From: Paul Greenwalt <paul.greenwalt@intel.com>
> > 
> > Add malicious driver detection. Support enabling MDD, disabling MDD,
> > handling a MDD event, and restoring a MDD VF.
> 
> a*n* MDD
> 
> Could you please elaborate? List the commands to enable/disable MDD?
> 
> Also, please include a reference to the datasheet section for this feature.
> I am a little confused, as the Linux driver should never be “malicious”,
> shouldn’t it? So what is this feature?
> 
> Which devices support this? From the diff it looks like X550? Please add
> that.
> 
> How did you test it?
> 
> How are the events logged?

Hi,

I will elaborate it in the commit message if it is needed. The VF created
on X550 device can use malicious driver for example. I tested it by
changing Tx descriptor to be invalid (TSO on, with invalid length in
descriptor, but any type of invalid descriptor should cause MDD).

It is enabled all time. Simple netif_warn() is called with more
information about MDD. After 4 events on the same VF the link status is
force to be down to turn off malicious VF.

> 
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  28 ++++
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   5 +
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |   4 +
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 120 ++++++++++++++++++
> >   4 files changed, 157 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> > index 5fdf32d79d82..d446c375335a 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> > @@ -2746,6 +2746,28 @@ enum ixgbe_fdir_pballoc_type {
> >   #define FW_PHY_INFO_ID_HI_MASK		0xFFFF0000u
> >   #define FW_PHY_INFO_ID_LO_MASK		0x0000FFFFu
> > +/* There are only 3 options for VFs creation on this device:
> > + * 16 VFs pool with 8 queues each
> > + * 32 VFs pool with 4 queues each
> > + * 64 VFs pool with 2 queues each
> > + *
> > + * That means reading some VF registers that map VF to queue depending on
> > + * chosen option. Define values that help dealing with each scenario.
> > + */
> > +/* Number of queues based on VFs pool */
> > +#define IXGBE_16VFS_QUEUES		8
> > +#define IXGBE_32VFS_QUEUES		4
> > +#define IXGBE_64VFS_QUEUES		2
> > +/* Mask for getting queues bits based on VFs pool */
> > +#define IXGBE_16VFS_BITMASK		GENMASK(IXGBE_16VFS_QUEUES - 1, 0)
> > +#define IXGBE_32VFS_BITMASK		GENMASK(IXGBE_32VFS_QUEUES - 1, 0)
> > +#define IXGBE_64VFS_BITMASK		GENMASK(IXGBE_64VFS_QUEUES - 1, 0)
> > +/* Convert queue index to register number.
> > + * We have 4 registers with 32 queues in each.
> > + */
> > +#define IXGBE_QUEUES_PER_REG		32
> > +#define IXGBE_QUEUES_REG_AMOUNT		4
> > +
> >   /* Host Interface Command Structures */
> >   struct ixgbe_hic_hdr {
> >   	u8 cmd;
> > @@ -3534,6 +3556,12 @@ struct ixgbe_mac_operations {
> >   	int (*dmac_config_tcs)(struct ixgbe_hw *hw);
> >   	int (*read_iosf_sb_reg)(struct ixgbe_hw *, u32, u32, u32 *);
> >   	int (*write_iosf_sb_reg)(struct ixgbe_hw *, u32, u32, u32);
> > +
> > +	/* MDD events */
> > +	void (*enable_mdd)(struct ixgbe_hw *hw);
> > +	void (*disable_mdd)(struct ixgbe_hw *hw);
> > +	void (*restore_mdd_vf)(struct ixgbe_hw *hw, u32 vf);
> > +	void (*handle_mdd)(struct ixgbe_hw *hw, unsigned long *vf_bitmap);
> >   };
> >   struct ixgbe_phy_operations {
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
> > index 3e4092f8da3e..2a11147fb1bc 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
> > @@ -17,4 +17,9 @@ void ixgbe_set_source_address_pruning_x550(struct ixgbe_hw *hw,
> >   void ixgbe_set_ethertype_anti_spoofing_x550(struct ixgbe_hw *hw,
> >   					    bool enable, int vf);
> > +void ixgbe_enable_mdd_x550(struct ixgbe_hw *hw);
> > +void ixgbe_disable_mdd_x550(struct ixgbe_hw *hw);
> > +void ixgbe_restore_mdd_vf_x550(struct ixgbe_hw *hw, u32 vf);
> > +void ixgbe_handle_mdd_x550(struct ixgbe_hw *hw, unsigned long *vf_bitmap);
> > +
> >   #endif /* _IXGBE_X550_H_ */
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > index cb07ecd8937d..788f3372ebf1 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > @@ -2630,6 +2630,10 @@ static const struct ixgbe_mac_operations mac_ops_e610 = {
> >   	.prot_autoc_write		= prot_autoc_write_generic,
> >   	.setup_fc			= ixgbe_setup_fc_e610,
> >   	.fc_autoneg			= ixgbe_fc_autoneg_e610,
> > +	.enable_mdd			= ixgbe_enable_mdd_x550,
> > +	.disable_mdd			= ixgbe_disable_mdd_x550,
> > +	.restore_mdd_vf			= ixgbe_restore_mdd_vf_x550,
> > +	.handle_mdd			= ixgbe_handle_mdd_x550,
> >   };
> >   static const struct ixgbe_phy_operations phy_ops_e610 = {
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> > index 277ceaf8a793..b5cbfd1f71fd 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> > @@ -3800,6 +3800,122 @@ static int ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
> >   	return status;
> >   }
> > +static void ixgbe_set_mdd_x550(struct ixgbe_hw *hw, bool ena)
> > +{
> > +	u32 reg_dma, reg_rdr;
> > +
> > +	reg_dma = IXGBE_READ_REG(hw, IXGBE_DMATXCTL);
> > +	reg_rdr = IXGBE_READ_REG(hw, IXGBE_RDRXCTL);
> > +
> > +	if (ena) {
> > +		reg_dma |= (IXGBE_DMATXCTL_MDP_EN | IXGBE_DMATXCTL_MBINTEN);
> > +		reg_rdr |= (IXGBE_RDRXCTL_MDP_EN | IXGBE_RDRXCTL_MBINTEN);
> > +	} else {
> > +		reg_dma &= ~(IXGBE_DMATXCTL_MDP_EN | IXGBE_DMATXCTL_MBINTEN);
> > +		reg_rdr &= ~(IXGBE_RDRXCTL_MDP_EN | IXGBE_RDRXCTL_MBINTEN);
> > +	}
> > +
> > +	IXGBE_WRITE_REG(hw, IXGBE_DMATXCTL, reg_dma);
> > +	IXGBE_WRITE_REG(hw, IXGBE_RDRXCTL, reg_rdr);
> > +}
> > +
> > +/**
> > + * ixgbe_enable_mdd_x550 - enable malicious driver detection
> > + * @hw: pointer to hardware structure
> > + */
> > +void ixgbe_enable_mdd_x550(struct ixgbe_hw *hw)
> > +{
> > +	ixgbe_set_mdd_x550(hw, true);
> > +}
> > +
> > +/**
> > + * ixgbe_disable_mdd_x550 - disable malicious driver detection
> > + * @hw: pointer to hardware structure
> > + */
> > +void ixgbe_disable_mdd_x550(struct ixgbe_hw *hw)
> > +{
> > +	ixgbe_set_mdd_x550(hw, false);
> > +}
> > +
> > +/**
> > + * ixgbe_restore_mdd_vf_x550 - restore VF that was disabled during MDD event
> > + * @hw: pointer to hardware structure
> > + * @vf: vf index
> > + */
> > +void ixgbe_restore_mdd_vf_x550(struct ixgbe_hw *hw, u32 vf)
> > +{
> > +	u32 idx, reg, val, num_qs, start_q, bitmask;
> > +
> > +	/* Map VF to queues */
> > +	reg = IXGBE_READ_REG(hw, IXGBE_MRQC);
> > +	switch (reg & IXGBE_MRQC_MRQE_MASK) {
> > +	case IXGBE_MRQC_VMDQRT8TCEN:
> > +		num_qs = IXGBE_16VFS_QUEUES;
> > +		bitmask = IXGBE_16VFS_BITMASK;
> > +		break;
> > +	case IXGBE_MRQC_VMDQRSS32EN:
> > +	case IXGBE_MRQC_VMDQRT4TCEN:
> > +		num_qs = IXGBE_32VFS_QUEUES;
> > +		bitmask = IXGBE_32VFS_BITMASK;
> > +		break;
> > +	default:
> > +		num_qs = IXGBE_64VFS_QUEUES;
> > +		bitmask = IXGBE_64VFS_BITMASK;
> > +		break;
> > +	}
> > +	start_q = vf * num_qs;
> > +
> > +	/* Release vf's queues by clearing WQBR_TX and WQBR_RX (RW1C) */
> > +	idx = start_q / IXGBE_QUEUES_PER_REG;
> > +	val = bitmask << (start_q % IXGBE_QUEUES_PER_REG);
> > +	IXGBE_WRITE_REG(hw, IXGBE_WQBR_TX(idx), val);
> > +	IXGBE_WRITE_REG(hw, IXGBE_WQBR_RX(idx), val);
> > +}
> > +
> > +/**
> > + * ixgbe_handle_mdd_x550 - handle malicious driver detection event
> > + * @hw: pointer to hardware structure
> > + * @vf_bitmap: output vf bitmap of malicious vfs
> > + */
> > +void ixgbe_handle_mdd_x550(struct ixgbe_hw *hw, unsigned long *vf_bitmap)
> > +{
> > +	u32 i, j, reg, q, div, vf;
> 
> Why fix the length of the count variables?
>

Do you mean why u32 insted of int?

> > +	unsigned long wqbr;
> > +
> > +	/* figure out pool size for mapping to vf's */
> > +	reg = IXGBE_READ_REG(hw, IXGBE_MRQC);
> > +	switch (reg & IXGBE_MRQC_MRQE_MASK) {
> > +	case IXGBE_MRQC_VMDQRT8TCEN:
> > +		div = IXGBE_16VFS_QUEUES;
> > +		break;
> > +	case IXGBE_MRQC_VMDQRSS32EN:
> > +	case IXGBE_MRQC_VMDQRT4TCEN:
> > +		div = IXGBE_32VFS_QUEUES;
> > +		break;
> > +	default:
> > +		div = IXGBE_64VFS_QUEUES;
> > +		break;
> > +	}
> > +
> > +	/* Read WQBR_TX and WQBR_RX and check for malicious queues */
> > +	for (i = 0; i < IXGBE_QUEUES_REG_AMOUNT; i++) {
> > +		wqbr = IXGBE_READ_REG(hw, IXGBE_WQBR_TX(i)) |
> > +		       IXGBE_READ_REG(hw, IXGBE_WQBR_RX(i));
> > +		if (!wqbr)
> > +			continue;
> > +
> > +		/* Get malicious queue */
> > +		for_each_set_bit(j, (unsigned long *)&wqbr,
> > +				 IXGBE_QUEUES_PER_REG) {
> > +			/* Get queue from bitmask */
> > +			q = j + (i * IXGBE_QUEUES_PER_REG);
> > +			/* Map queue to vf */
> > +			vf = q / div;
> > +			set_bit(vf, vf_bitmap);
> > +		}
> > +	}
> > +}
> > +
> >   #define X550_COMMON_MAC \
> >   	.init_hw			= &ixgbe_init_hw_generic, \
> >   	.start_hw			= &ixgbe_start_hw_X540, \
> > @@ -3863,6 +3979,10 @@ static const struct ixgbe_mac_operations mac_ops_X550 = {
> >   	.prot_autoc_write	= prot_autoc_write_generic,
> >   	.setup_fc		= ixgbe_setup_fc_generic,
> >   	.fc_autoneg		= ixgbe_fc_autoneg,
> > +	.enable_mdd		= ixgbe_enable_mdd_x550,
> > +	.disable_mdd		= ixgbe_disable_mdd_x550,
> > +	.restore_mdd_vf		= ixgbe_restore_mdd_vf_x550,
> > +	.handle_mdd		= ixgbe_handle_mdd_x550,
> >   };
> >   static const struct ixgbe_mac_operations mac_ops_X550EM_x = {
> 
> 
> Kind regards,
> 
> Paul
