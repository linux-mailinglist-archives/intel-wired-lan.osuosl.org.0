Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 837E2C1F55F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Oct 2025 10:39:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB4B1613D7;
	Thu, 30 Oct 2025 09:39:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nth9iwQflqXv; Thu, 30 Oct 2025 09:39:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 234AF613D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761817151;
	bh=6+bEpdxovBcpdZ+W2RIkZJfzoi5aP0mTeW6txz/9dbA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tkp07oo5r5TCMjfKOZifpVp2XQwy/TL2OnjFbXq65ZwH7MUQc3xImnwSlUu3uK1Mw
	 doBi91QFHgBsW8r1V/sXFOuV01SVK5FWsgEiMDOPG8/RszluvNxb5GyyI04bUe0LKr
	 Smg1NoZfLNOb0B8d0vlS/syhVIXVbDijhLMyBHsaYPu/QHy1mueCVyHONPCcDcpHXc
	 jQ1QrrtKQB8ytq3JsDv9pMQS0h7C9aft3htT9FN2FZLHkyCddpYJ8rSrQoysUxLbhm
	 SlunvRej64YGNCATzG4U9kzERgAKrGfI5N9xSvnispBBgm0MeLZuXW4ZHESrcAG6vs
	 E5PCa1HatwAJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 234AF613D4;
	Thu, 30 Oct 2025 09:39:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 37E4F2A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 09:39:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2975B407E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 09:39:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IVD90qY_PG31 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Oct 2025 09:39:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DAC2C40064
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAC2C40064
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DAC2C40064
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 09:39:08 +0000 (UTC)
X-CSE-ConnectionGUID: P8RcHe/4QlmgZpUIbVx9MQ==
X-CSE-MsgGUID: 5VE+hcX4RgeVoeIcTMyo3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63882985"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63882985"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:39:09 -0700
X-CSE-ConnectionGUID: +Cj4KHwBTCmEZ957sydacg==
X-CSE-MsgGUID: rj6wnQijQU6bu713+C/Kpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185565380"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:39:06 -0700
Date: Thu, 30 Oct 2025 10:37:03 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aQMxvzYqJkwNBYf0@mev-dev.igk.intel.com>
References: <20251030083053.2166525-1-michal.swiatkowski@linux.intel.com>
 <370cf4f0-c0a8-480a-939d-33c75961e587@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <370cf4f0-c0a8-480a-939d-33c75961e587@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761817149; x=1793353149;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=D9Qw2iE75aVPPzUFpNOjF3ap1NmTGoUfaoeWm9dihs0=;
 b=dwJPnFQovNHXtYdAs3Ik6g0t3LCbdrrUWSHNtLoQP2ZmGjQHi7eUrpVy
 5/sNa8w5Lvvh0GUGd2EMJR8xcYr8BzJgPPQJgbo3Eeio/YFNCAk47bi99
 AYLrNDsZS4FhC3Z0X5ldFKBA+p2Wzhfl0UqfyBlp77RocZeenyz8EuEHY
 lxg9hGJZkEInQpBNQN5XVrDalMlAe6VjgWAqM/p7LCPfnsUedg8PFOoxQ
 g6kBPWAnCAjagUtCTVPDB2BLJIZfitGgyJdaiuUV1n7CugHb56VlTucbY
 n7eBVlP5QkNhykEeX5okUaLWDOt0/vYIRcmuGFiCGURpLvcYejjLKk6Z2
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dwJPnFQo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: use
 netif_get_num_default_rss_queues()
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

On Thu, Oct 30, 2025 at 10:10:32AM +0100, Paul Menzel wrote:
> Dear Michal,
> 
> 
> Thank you for your patch. For the summary, I’d add:
> 
> ice: Use netif_get_num_default_rss_queues() to decrease queue number
> 
> Am 30.10.25 um 09:30 schrieb Michal Swiatkowski:
> > On some high-core systems (like AMD EPYC Bergamo, Intel Clearwater
> > Forest) loading ice driver with default values can lead to queue/irq
> > exhaustion. It will result in no additional resources for SR-IOV.
> 
> Could you please elaborate how to make the queue/irq exhaustion visible?
> 

What do you mean? On high core system, lets say num_online_cpus()
returns 288, on 8 ports card we have online 256 irqs per eqch PF (2k in
total). Driver will load with the 256 queues (and irqs) on each PF.
Any VFs creation command will fail due to no free irqs available.
(echo X > /sys/class/net/ethX/device/sriov_numvfs)

> > In most cases there is no performance reason for more than half
> > num_cpus(). Limit the default value to it using generic
> > netif_get_num_default_rss_queues().
> > 
> > Still, using ethtool the number of queues can be changed up to
> > num_online_cpus(). It can be done by calling:
> > $ethtool -L ethX combined $(nproc)
> > 
> > This change affects only the default queue amount.
> 
> How would you judge the regression potential, that means for people where
> the defaults work good enough, and the queue number is reduced now?
>

You can take a look into commit that introduce /2 change in
netif_get_num_default_rss_queues() [1]. There is a good justification
for such situation. In short, heaving physical core number is just a
wasting of CPU resources.

[1] https://lore.kernel.org/netdev/20220315091832.13873-1-ihuguet@redhat.com/

> 
> Kind regards,
> 
> Paul
> 
> 
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> > v2 --> v3:
> >   * use $(nproc) in command example in commit message
> > 
> > v1 --> v2:
> >   * Follow Olek's comment and switch from custom limiting to the generic
> >     netif_...() function.
> >   * Add more info in commit message (Paul)
> >   * Dropping RB tags, as it is different patch now
> > ---
> >   drivers/net/ethernet/intel/ice/ice_irq.c |  5 +++--
> >   drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++++----
> >   2 files changed, 11 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> > index 30801fd375f0..1d9b2d646474 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_irq.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> > @@ -106,9 +106,10 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf,
> >   #define ICE_RDMA_AEQ_MSIX 1
> >   static int ice_get_default_msix_amount(struct ice_pf *pf)
> >   {
> > -	return ICE_MIN_LAN_OICR_MSIX + num_online_cpus() +
> > +	return ICE_MIN_LAN_OICR_MSIX + netif_get_num_default_rss_queues() +
> >   	       (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? ICE_FDIR_MSIX : 0) +
> > -	       (ice_is_rdma_ena(pf) ? num_online_cpus() + ICE_RDMA_AEQ_MSIX : 0);
> > +	       (ice_is_rdma_ena(pf) ? netif_get_num_default_rss_queues() +
> > +				      ICE_RDMA_AEQ_MSIX : 0);
> >   }
> >   /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index bac481e8140d..e366d089bef9 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -159,12 +159,14 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
> >   static u16 ice_get_rxq_count(struct ice_pf *pf)
> >   {
> > -	return min(ice_get_avail_rxq_count(pf), num_online_cpus());
> > +	return min(ice_get_avail_rxq_count(pf),
> > +		   netif_get_num_default_rss_queues());
> >   }
> >   static u16 ice_get_txq_count(struct ice_pf *pf)
> >   {
> > -	return min(ice_get_avail_txq_count(pf), num_online_cpus());
> > +	return min(ice_get_avail_txq_count(pf),
> > +		   netif_get_num_default_rss_queues());
> >   }
> >   /**
> > @@ -907,13 +909,15 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
> >   		if (vsi->type == ICE_VSI_CHNL)
> >   			vsi->rss_size = min_t(u16, vsi->num_rxq, max_rss_size);
> >   		else
> > -			vsi->rss_size = min_t(u16, num_online_cpus(),
> > +			vsi->rss_size = min_t(u16,
> > +					      netif_get_num_default_rss_queues(),
> >   					      max_rss_size);
> >   		vsi->rss_lut_type = ICE_LUT_PF;
> >   		break;
> >   	case ICE_VSI_SF:
> >   		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
> > -		vsi->rss_size = min_t(u16, num_online_cpus(), max_rss_size);
> > +		vsi->rss_size = min_t(u16, netif_get_num_default_rss_queues(),
> > +				      max_rss_size);
> >   		vsi->rss_lut_type = ICE_LUT_VSI;
> >   		break;
> >   	case ICE_VSI_VF:
> 
