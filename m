Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0015DA2E3D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 06:54:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 161E560A67;
	Mon, 10 Feb 2025 05:54:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tOYDzzecMXFR; Mon, 10 Feb 2025 05:54:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 377CA60A5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739166855;
	bh=1J814vXtJT0jyGyTVDJee09MuSilNofXHwtUT+Nk/t4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sQY+gFtkvYH40GlGw0bhHSleFKLx5ah0sy4Nu2xcC1/fFbfpuPfOymwi8JwxlwvSZ
	 Hn6X/QIE7STDC19OKnaHPFndMiLtA1N9nDUoeg5wIZHSfbrewoQJ0PRqlnaVqVDYa8
	 UKl/OztQzpVUdLLby3pxsWA1UWoJ9diBuP0ccePHkf25r03v0lUb1CmccNITnxgpZV
	 Qi2mqntUfIInGABJEZhLB12dpenMvMjieHrTQSntcWrHtwQUXexg/oNQmx4r3hdot5
	 a8EG5yU5h9O5T2MN6R2VVIPGO1d5U89XScH2NVZk4rwnXPp2/2lF2pB9xhnEHxVEQw
	 AQwZjLIQgfzUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 377CA60A5D;
	Mon, 10 Feb 2025 05:54:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 93A16199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76318410BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:54:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wqbgYWrf13Tp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 05:54:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 50F0D410B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50F0D410B6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 50F0D410B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:54:12 +0000 (UTC)
X-CSE-ConnectionGUID: jFJ6VDPSRGaBQlDPabpBFw==
X-CSE-MsgGUID: Ca+YR+OeTsihng2PG2A2rA==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="50716414"
X-IronPort-AV: E=Sophos;i="6.13,273,1732608000"; d="scan'208";a="50716414"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2025 21:54:11 -0800
X-CSE-ConnectionGUID: +D+F6v1gQ1+Uq2rmkOOrzw==
X-CSE-MsgGUID: 3qZNfQjEQRuVMLvCv9Wc8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,273,1732608000"; d="scan'208";a="111924120"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2025 21:54:09 -0800
Date: Mon, 10 Feb 2025 06:50:37 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 marcin.szycik@linux.intel.com, jedrzej.jagielski@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 anthony.l.nguyen@intel.com, dawid.osuchowski@intel.com
Message-ID: <Z6mTraxmxHzsvrZ3@mev-dev.igk.intel.com>
References: <20250207104343.2791001-1-michal.swiatkowski@linux.intel.com>
 <20250207104343.2791001-4-michal.swiatkowski@linux.intel.com>
 <20250207145710.GX554665@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250207145710.GX554665@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739166852; x=1770702852;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/u8/nOiV2tiPmC3JD800u44XyghZ/YaazPRAQSG/EZs=;
 b=TVDGKSrgAFKEYDpaYno41cej+gZ20t1YBLPq5WAQ7lxIRcUECbvg0fTJ
 g2oiUTzd2pAsaxHkg408eSFuhBf46euc/ELBVgyCmc9INs7Ct3wYSgjmW
 xN0tDdK6ZHfjAzgJw0ZDJqpkCbs0dNluQUM2PLm/nUWqRnx50flaY4k+I
 igfgsUWJrbWXSZ6z27MEVNloi0pWnW3mK4r4Sp8WRy17Hf+UCthAy+14s
 AQACQj0r59sf2HoKZl7WSBQof8tjZ+xnD7ZFMS0fdMaBP/EVuIdppoQeJ
 PT/ZthnumCI2vt1cb+mtM6ppl/HQ9oaVLc/PqSc77/UjwoWpdGSGnmLu9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TVDGKSrg
Subject: Re: [Intel-wired-lan] [iwl-next v1 3/4] ixgbe: add Tx hang
 detection unhandled MDD
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

On Fri, Feb 07, 2025 at 02:57:10PM +0000, Simon Horman wrote:
> On Fri, Feb 07, 2025 at 11:43:42AM +0100, Michal Swiatkowski wrote:
> > From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> > 
> > Add Tx Hang detection due to an unhandled MDD Event.
> > 
> > Previously, a malicious VF could disable the entire port causing
> > TX to hang on the E610 card.
> > Those events that caused PF to freeze were not detected
> > as an MDD event and usually required a Tx Hang watchdog timer
> > to catch the suspension, and perform a physical function reset.
> > 
> > Implement flows in the affected PF driver in such a way to check
> > the cause of the hang, detect it as an MDD event and log an
> > entry of the malicious VF that caused the Hang.
> > 
> > The PF blocks the malicious VF, if it continues to be the source
> > of several MDD events.
> > 
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> > Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> > index aa3b498558bc..e07b56625595 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> > @@ -1044,6 +1044,7 @@ struct ixgbe_nvm_version {
> >  #define IXGBE_GCR_EXT_VT_MODE_16        0x00000001
> >  #define IXGBE_GCR_EXT_VT_MODE_32        0x00000002
> >  #define IXGBE_GCR_EXT_VT_MODE_64        0x00000003
> > +#define IXGBE_GCR_EXT_VT_MODE_MASK	0x00000003
> 
> nit: For consistency I think spaces should be used to indent 0x00000003
> 

Will fix, I wondered if I should follow normal style or be consistent.

> >  #define IXGBE_GCR_EXT_SRIOV             (IXGBE_GCR_EXT_MSIX_EN | \
> >  					 IXGBE_GCR_EXT_VT_MODE_64)
> >  
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> 
> ...
> 
> > +static u32 ixgbe_poll_tx_icache(struct ixgbe_hw *hw, u16 queue, u16 idx)
> > +{
> > +	IXGBE_WRITE_REG(hw, IXGBE_TXDESCIC, queue * idx);
> > +	return IXGBE_READ_REG(hw, IXGBE_TXDESCIC);
> > +}
> > +
> > +/**
> > + * ixgbe_check_illegal_queue - search for queue with illegal packet
> > + * @adapter: structure containing ring specific data
> > + * @queue: queue index
> > + *
> > + * Check if tx descriptor connected with input queue
> > + * contains illegal packet.
> > + *
> > + * Returns: true if queue contain illegal packet.
> > + */
> > +static bool ixgbe_check_illegal_queue(struct ixgbe_adapter *adapter,
> > +				      u16 queue)
> > +{
> > +	u32 hdr_len_reg, mss_len_reg, type_reg;
> > +	struct ixgbe_hw *hw = &adapter->hw;
> > +	u32 mss_len, header_len, reg;
> > +
> > +	for (u16 i = 0; i < IXGBE_MAX_TX_DESCRIPTORS; i++) {
> > +		/* HW will clear bit IXGBE_TXDESCIC_READY when address
> > +		 * is written to address field. HW will set this bit
> > +		 * when iCache read is done, and data is ready at TIC_DWx.
> > +		 * Set descriptor address.
> > +		 */
> > +		read_poll_timeout(ixgbe_poll_tx_icache, reg,
> > +				  !(reg & IXGBE_TXDESCIC_READY), 0, 0, false,
> > +				  hw, queue, i);
> > +
> > +		/* read tx descriptor access registers */
> > +		hdr_len_reg = IXGBE_READ_REG(hw, IXGBE_TIC_DW2(IXGBE_VLAN_MACIP_LENS_REG));
> > +		type_reg = IXGBE_READ_REG(hw, IXGBE_TIC_DW2(IXGBE_TYPE_TUCMD_MLHL));
> > +		mss_len_reg = IXGBE_READ_REG(hw, IXGBE_TIC_DW2(IXGBE_MSS_L4LEN_IDX));
> > +
> > +		/* check if Advanced Context Descriptor */
> > +		if (FIELD_GET(IXGBE_ADVTXD_DTYP_MASK, type_reg) !=
> > +		    IXGBE_ADVTXD_DTYP_CTXT)
> > +			continue;
> > +
> > +		/* check for illegal MSS and Header length */
> > +		mss_len = FIELD_GET(IXGBE_ADVTXD_MSS_MASK, mss_len_reg);
> > +		header_len = FIELD_GET(IXGBE_ADVTXD_HEADER_LEN_MASK,
> > +				       hdr_len_reg);
> > +		if ((mss_len + header_len) > SZ_16K) {
> > +			e_warn(probe,
> > +			       "mss len + header len too long\n");
> 
> nit: The above two lines can be a single line.
>

Will fix

> > +			return true;
> > +		}
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +/**
> > + * ixgbe_handle_mdd_event - handle mdd event
> > + * @adapter: structure containing ring specific data
> > + * @tx_ring: tx descriptor ring to handle
> > + *
> > + * Reset VF driver if malicious vf detected or
> > + * illegal packet in an any queue detected.
> > + */
> > +static void ixgbe_handle_mdd_event(struct ixgbe_adapter *adapter,
> > +				   struct ixgbe_ring *tx_ring)
> > +{
> > +	u16 vf, q;
> > +
> > +	if (adapter->vfinfo && ixgbe_check_mdd_event(adapter)) {
> > +		/* vf mdd info and malicious vf detected */
> > +		if (!ixgbe_get_vf_idx(adapter, tx_ring->queue_index, &vf))
> > +			ixgbe_vf_handle_tx_hang(adapter, vf);
> > +	} else {
> > +		/* malicious vf not detected */
> > +		for (q = 0; q < IXGBE_MAX_TX_QUEUES; q++) {
> > +			if (ixgbe_check_illegal_queue(adapter, q) &&
> > +			    !ixgbe_get_vf_idx(adapter, q, &vf))
> > +				/* illegal queue detected */
> > +				ixgbe_vf_handle_tx_hang(adapter, vf);
> 
> It looks like ixgbe_vf_handle_tx_hang() will run for each illegal queue.
> Could that be more than once for a given vf? If so, is that desirable?
> 

Yes, it will be called for each hanged queue of a given VF. I assume
this is fine, as the function is counting the hang events, not resetting
VF.

Thanks for the review,
Michal

> > +		}
> > +	}
> > +}
> > +
> >  /**
> >   * ixgbe_clean_tx_irq - Reclaim resources after transmit completes
> >   * @q_vector: structure containing interrupt and ring information
> 
> ...
