Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E79B1C13B89
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 10:10:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96434847EE;
	Tue, 28 Oct 2025 09:10:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G1teQAIiulwc; Tue, 28 Oct 2025 09:10:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E81DD847F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761642635;
	bh=2i2GDMMp5w3F/8OE8xkIu7XoIlFIq/3Y/XKhw/+jiBg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jFqgnZkrT83Lo7gUuzGmZ8keEUgk6OdIhS6d1TQGYEc7hPApTBz8wNd9QhGDlmcAF
	 To3CVrCCCcrAzoc2AcvQvgtaxyGJxl9fhWASOD8wBAs6wrX+wsG3Tyms5d5hAxRYDg
	 5RbprYX9PPPF0jc9/iyq3Mz69qa3O0zvh3Mxz9iUgIIZ/A6iJ5Y2C9ejQwWMu+X1PL
	 xtyFAVw5e27WSH0T+bVC3zrq68SzVEyY+nYfcWAAbWEOQspEvyC2mU9xno+BwXI592
	 iEnNw/QZ/15O4Q/Hj6F6eU9pG+PwATnrudXxdgHg/wn+MxyMM8/5JnfjDD8oef7kBY
	 h4ivLifyQLivg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E81DD847F2;
	Tue, 28 Oct 2025 09:10:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C4ABA43F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 09:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B662C847ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 09:10:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R_VzFDHHlk5f for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 09:10:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C0482847EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0482847EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C0482847EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 09:10:32 +0000 (UTC)
X-CSE-ConnectionGUID: K1f/0PPaQI6QK+vKCWW+GA==
X-CSE-MsgGUID: a5kgkEllQ7uvCt5v7vyxrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63886574"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="63886574"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 02:10:32 -0700
X-CSE-ConnectionGUID: VZj/1pnaQaCTQUFRJRnfTg==
X-CSE-MsgGUID: 2VYCyRV4TLCpymx491eKJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="184525905"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 02:10:30 -0700
Date: Tue, 28 Oct 2025 10:08:24 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <aQCICC7S4JCaImJa@mev-dev.igk.intel.com>
References: <20251028070634.2124215-1-michal.swiatkowski@linux.intel.com>
 <IA3PR11MB898627B7BCB9ACEEE31A377BE5FDA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA3PR11MB898627B7BCB9ACEEE31A377BE5FDA@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761642633; x=1793178633;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lbcYMNWtSmGXCpuFko3OMESYsLMpkByTHzCvLQRpQIM=;
 b=FS81puktEboQKHmfN/7clpVNh1gFIKjmXVN9fIiGpYtBNXOXZI0/WG4r
 pvHkzrMVQdeceH2b8vOGSf3ZbHMtTdYE9oLaAf3mSEfI/X+kofcmeInSh
 9guv2ePasImbYi9fLG6v2AK1eMZQ4cS2Ou//r/S7KJBsQoZ/81G1O8YJm
 V6kIcAvCWS2TpfsEeVPTkDRHtUmwL+WfagZcT/4TLJxecEzrPe5iIsEVN
 dRGI2iwjWuKC75H2MW5NkAQ4l2pvrGISMGraJ5SpuCTUTcc5E7tYjCOkh
 Gi+xZ/ZlABpgkGR2nD/MlQaGnNkQwDljoR+HtPZGB3JnyfeqJWgxVbnwZ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FS81pukt
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: use
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

On Tue, Oct 28, 2025 at 07:48:11AM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Michal Swiatkowski
> > Sent: Tuesday, October 28, 2025 8:07 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; pmenzel@molgen.mpg.de; Lobakin, Aleksander
> > <aleksander.lobakin@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> > <jacob.e.keller@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: use
> > netif_get_num_default_rss_queues()
> > 
> > On some high-core systems (like AMD EPYC Bergamo, Intel Clearwater
> > Forest) loading ice driver with default values can lead to queue/irq
> > exhaustion. It will result in no additional resources for SR-IOV.
> > 
> > In most cases there is no performance reason for more than half
> > num_cpus(). Limit the default value to it using generic
> > netif_get_num_default_rss_queues().
> > 
> > Still, using ethtool the number of queues can be changed up to
> > num_online_cpus(). It can be done by calling:
> > $ethtool -L ethX combined max_cpu
> > 
> It could be nice to use $(nproc)?
>  $ ethtool -L ethX combined $(nproc)

Will change

> 
> > This change affects only the default queue amount.
> > 
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> > v1 --> v2:
> >  * Follow Olek's comment and switch from custom limiting to the
> > generic
> >    netif_...() function.
> >  * Add more info in commit message (Paul)
> >  * Dropping RB tags, as it is different patch now
> > ---
> >  drivers/net/ethernet/intel/ice/ice_irq.c |  5 +++--
> >  drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++++----
> >  2 files changed, 11 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c
> > b/drivers/net/ethernet/intel/ice/ice_irq.c
> > index 30801fd375f0..1d9b2d646474 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_irq.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> > @@ -106,9 +106,10 @@ static struct ice_irq_entry
> > *ice_get_irq_res(struct ice_pf *pf,
> >  #define ICE_RDMA_AEQ_MSIX 1
> >  static int ice_get_default_msix_amount(struct ice_pf *pf)
> >  {
> > -	return ICE_MIN_LAN_OICR_MSIX + num_online_cpus() +
> > +	return ICE_MIN_LAN_OICR_MSIX +
> > netif_get_num_default_rss_queues() +
> >  	       (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? ICE_FDIR_MSIX :
> > 0) +
> > -	       (ice_is_rdma_ena(pf) ? num_online_cpus() +
> > ICE_RDMA_AEQ_MSIX : 0);
> > +	       (ice_is_rdma_ena(pf) ?
> > netif_get_num_default_rss_queues() +
> > +				      ICE_RDMA_AEQ_MSIX : 0);
> >  }
> > 
> >  /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index bac481e8140d..e366d089bef9 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -159,12 +159,14 @@ static void ice_vsi_set_num_desc(struct ice_vsi
> > *vsi)
> > 
> >  static u16 ice_get_rxq_count(struct ice_pf *pf)
> >  {
> > -	return min(ice_get_avail_rxq_count(pf), num_online_cpus());
> > +	return min(ice_get_avail_rxq_count(pf),
> > +		   netif_get_num_default_rss_queues());
> >  }
> min(a, b) resolves to the type of the expression, which here will be int due to netif_get_num_default_rss_queues() returning int. 
> That implicitly truncates to u16 on return.
> What do you think about to make this explicit with min_t() to avoid type surprises?

We will just hide the truncing in the min_t() call. Probably if we
assuming that cpu / 2 can be higher than U16_MAX we should check that
here. Is it needed? (Previous situation is the same, num_online_cpus() is
returning int).

> 
> > 
> >  static u16 ice_get_txq_count(struct ice_pf *pf)
> >  {
> > -	return min(ice_get_avail_txq_count(pf), num_online_cpus());
> > +	return min(ice_get_avail_txq_count(pf),
> > +		   netif_get_num_default_rss_queues());
> >  }
> 
> Same min_t() ?
> 
> Otherwise, fine for me.

Thanks

> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
