Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D37B4BE236A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Oct 2025 10:47:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C31E84691;
	Thu, 16 Oct 2025 08:47:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RWHNzSxuzbFu; Thu, 16 Oct 2025 08:47:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC4BA84693
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760604439;
	bh=Oc9wUjcszMmgiuptC8TAq9WCwM/WA11MmHTJ5PFbk5w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aBmTws/iZQHq5CApMDcj7UXW+O6Eix3dLqQW1FIN0PWSc89YF1adZvA8oqRgjIFWH
	 95qUqi4Jaz/VrZ1bSOBN3OtvMWi/R3I+oEpe+XhMWJfSf368DPLIH6vqLsyGKIHirR
	 iOARPUqsCjfwWNit6Z9TS/xaA9SPEgIRddfJtr0msz/bmUyaU4Dv170bqu5C1OWbyH
	 AVIzA7wcmrAhF9zgzC3vVL+6v/FWSe47UhjatroFxT4M2Qp2rwYHaEPG2QSbwX3/W3
	 gtfJMfF1FOqw2QtwA2yZi6JepE+WKa8qwcg4Do7WcNzJdVCL7whodJCOlxGJpPBTVX
	 LPeRthNoF803A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC4BA84693;
	Thu, 16 Oct 2025 08:47:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4272193E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 08:47:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3FEB4403ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 08:47:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r5CVKW5hdYDt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 08:47:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E3A79402E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3A79402E8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3A79402E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 08:47:16 +0000 (UTC)
X-CSE-ConnectionGUID: eSzGmFpPTBKw5JBectmopw==
X-CSE-MsgGUID: Q6yfqdkcROCRHbIJZcdXRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62830860"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="62830860"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 01:47:16 -0700
X-CSE-ConnectionGUID: REPZIiNWSpyxMa0BM5z8hw==
X-CSE-MsgGUID: ufQTNyFPQyiqgYO2hlfmTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="186669244"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 01:47:15 -0700
Date: Thu, 16 Oct 2025 10:45:19 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <aPCwn1jZDl+7+F1i@mev-dev.igk.intel.com>
References: <20251016062250.1461903-1-michal.swiatkowski@linux.intel.com>
 <d6a90d0d-55f9-467a-b414-5ced78d12c54@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d6a90d0d-55f9-467a-b414-5ced78d12c54@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760604437; x=1792140437;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lxdA3Rgx7Td+RdMxZKNp62JHMDC6fzh4XBD0nugmcMM=;
 b=Zi4/jLJpeC5fiCvnJI9WmFwsTtb64fTcZEEMrDr8EWJfTDhfMIQBovDy
 b47OMf/QQd+1kRLKJ3Mf9O5XHT0vTXzQbijDSg96K4PMUaMep+M5J2WSP
 0ijew0TDJc2kgMJawi2fDCk49GoNnabDVDxJH64xaeDv5tGCzxz9sGVl8
 Nun9cr4UlYfOHF3n/swYB/fCItZvHc/dTrGWnob8e8AeiiqH1RaTLnimS
 X3AtjWXDGcM0pVJIzivyA9drDbbhAydyERSHXcKLoszl/yTKqzPQ8J5nq
 XOGPTme9zV2jYFH789mCWEIbYO7WR2kRU7LluOvgqKm5Slz2Byyd1fq0c
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zi4/jLJp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: lower default
 irq/queue counts on high-core systems
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

On Thu, Oct 16, 2025 at 09:44:43AM +0200, Paul Menzel wrote:
> Dear Michal,
> 
> 
> Thank you for the patch. I’d mention the 64 in the summary:
> 

Sure, I will add it.

> > ice: lower default irq/queue counts to 64 on > 64 core systems
> 
> 
> Am 16.10.25 um 08:22 schrieb Michal Swiatkowski:
> > On some high-core systems loading ice driver with default values can
> > lead to queue/irq exhaustion. It will result in no additional resources
> > for SR-IOV.
> > 
> > In most cases there is no performance reason for more than 64 queues.
> > Limit the default value to 64. Still, using ethtool the number of
> > queues can be changed up to num_online_cpus().
> > 
> > This change affects only the default queue amount on systems with more
> > than 64 cores.
> 
> Please document a specific system and steps to reproduce the issue.
> 
> Please also document how to override the value.

Ok, will add.

> 
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice.h     | 20 ++++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_irq.c |  6 ++++--
> >   drivers/net/ethernet/intel/ice/ice_lib.c |  8 ++++----
> >   3 files changed, 28 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> > index 3d4d8b88631b..354ec2950ff3 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -1133,4 +1133,24 @@ static inline struct ice_hw *ice_get_primary_hw(struct ice_pf *pf)
> >   	else
> >   		return &pf->adapter->ctrl_pf->hw;
> >   }
> > +
> > +/**
> > + * ice_capped_num_cpus - normalize the number of CPUs to a reasonable limit
> > + *
> > + * This function returns the number of online CPUs, but caps it at suitable
> > + * default to prevent excessive resource allocation on systems with very high
> > + * CPU counts.
> > + *
> > + * Note: suitable default is currently at 64, which is reflected in default_cpus
> > + * constant. In most cases there is no much benefit for more than 64 and it is a
> 
> no*t* much
>

Will fix

> > + * power of 2 number.
> > + *
> > + * Return: number of online CPUs, capped at suitable default.
> > + */
> > +static inline u16 ice_capped_num_cpus(void)
> 
> Why not return `unsigned int` or `size_t`?
>

Just because u16 is used for queue counts, but I can go with unsigned
int, makes more sense as num_online_cpus() is returning unsigned int.

> > +{
> > +	const int default_cpus = 64;
> > +
> > +	return min(num_online_cpus(), default_cpus);
> > +}
> >   #endif /* _ICE_H_ */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> > index 30801fd375f0..df4d847ca858 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_irq.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> > @@ -106,9 +106,11 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf,
> >   #define ICE_RDMA_AEQ_MSIX 1
> >   static int ice_get_default_msix_amount(struct ice_pf *pf)
> >   {
> > -	return ICE_MIN_LAN_OICR_MSIX + num_online_cpus() +
> > +	u16 cpus = ice_capped_num_cpus();
> > +
> > +	return ICE_MIN_LAN_OICR_MSIX + cpus +
> >   	       (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? ICE_FDIR_MSIX : 0) +
> > -	       (ice_is_rdma_ena(pf) ? num_online_cpus() + ICE_RDMA_AEQ_MSIX : 0);
> > +	       (ice_is_rdma_ena(pf) ? cpus + ICE_RDMA_AEQ_MSIX : 0);
> >   }
> >   /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index bac481e8140d..3c5f8a4b6c6d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -159,12 +159,12 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
> >   static u16 ice_get_rxq_count(struct ice_pf *pf)
> >   {
> > -	return min(ice_get_avail_rxq_count(pf), num_online_cpus());
> > +	return min(ice_get_avail_rxq_count(pf), ice_capped_num_cpus());
> >   }
> >   static u16 ice_get_txq_count(struct ice_pf *pf)
> >   {
> > -	return min(ice_get_avail_txq_count(pf), num_online_cpus());
> > +	return min(ice_get_avail_txq_count(pf), ice_capped_num_cpus());
> >   }
> >   /**
> > @@ -907,13 +907,13 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
> >   		if (vsi->type == ICE_VSI_CHNL)
> >   			vsi->rss_size = min_t(u16, vsi->num_rxq, max_rss_size);
> >   		else
> > -			vsi->rss_size = min_t(u16, num_online_cpus(),
> > +			vsi->rss_size = min_t(u16, ice_capped_num_cpus(),
> >   					      max_rss_size);
> >   		vsi->rss_lut_type = ICE_LUT_PF;
> >   		break;
> >   	case ICE_VSI_SF:
> >   		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
> > -		vsi->rss_size = min_t(u16, num_online_cpus(), max_rss_size);
> > +		vsi->rss_size = min_t(u16, ice_capped_num_cpus(), max_rss_size);
> >   		vsi->rss_lut_type = ICE_LUT_VSI;
> >   		break;
> >   	case ICE_VSI_VF:
> 
> With the changes addressed, feel free to add:
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 

Thanks

> 
> Kind regards,
> 
> Paul
