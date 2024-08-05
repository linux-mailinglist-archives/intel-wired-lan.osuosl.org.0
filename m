Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD34947477
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 06:57:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 477AF402A9;
	Mon,  5 Aug 2024 04:57:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sy04tLYBjXef; Mon,  5 Aug 2024 04:57:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4B75402AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722833851;
	bh=8FzkrB3RcfiEx6M2NE0DWjB7bjCYk3Av2se2HkFPksY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yLHqGxf+U0X/ZgRvs8fVj09tfYhR5PMhdxIu+3hEn3y35JTO20iVUFU4XDwQ43TIn
	 4+HjywuJ4xuatPhDsLcQhw1Clm7/Gxj5HS80U6spd9Vhsnp9aUFHPLJOCtVguTm/iY
	 8Vw7X7LIFl9aSVQ84U8zubf6u90J0Stvu8xnnOfHzPyqRkLkH/T0wM31uC8L/kgO7+
	 9JZRtrarYi0qhZL8FP+1fuxG42tw3/z5XnTMKZUf38A341/Lod5EqB/CIvylMDTqQ5
	 opb2q18M4e+vP4tE5mYGDzxGe4VslRxT4wHs0ynr8Gy73EIzhz3grx1m35jeFEq/US
	 HfFviEIPixrvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4B75402AD;
	Mon,  5 Aug 2024 04:57:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFA5A1BF346
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 04:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9E9880F97
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 04:57:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EPrjrLOqRsXg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2024 04:57:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B38CD80F93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B38CD80F93
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B38CD80F93
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 04:57:27 +0000 (UTC)
X-CSE-ConnectionGUID: VrH9LYOMQoOAvPC5bv1BJQ==
X-CSE-MsgGUID: iknFOpElSUaSJZU3XSd77g==
X-IronPort-AV: E=McAfee;i="6700,10204,11154"; a="24545366"
X-IronPort-AV: E=Sophos;i="6.09,263,1716274800"; d="scan'208";a="24545366"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2024 21:57:27 -0700
X-CSE-ConnectionGUID: KY0I1FwARe6GICFlnwpL7Q==
X-CSE-MsgGUID: P7iZpUy9QaCMBwKSm0tW/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,263,1716274800"; d="scan'208";a="55973510"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2024 21:57:24 -0700
Date: Mon, 5 Aug 2024 06:55:45 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZrBbUfqMwniZF1wv@mev-dev.igk.intel.com>
References: <20240801093115.8553-1-michal.swiatkowski@linux.intel.com>
 <20240801093115.8553-5-michal.swiatkowski@linux.intel.com>
 <a39489ca-9784-427e-ae05-a3f632d4a2b3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a39489ca-9784-427e-ae05-a3f632d4a2b3@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722833848; x=1754369848;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4mw4xw180wEtM/ofwSO2sJEDO3PWVnZB2oKDGCyAVkM=;
 b=C1CHzfXgElOrw9hpFzftdkPGc2wLqAkroZBeyDzd0RUWBgf97DyvxFDo
 8WNcQTWP8O+wqpFZGGSPhVwdB0O4n2gECEfnq77A+ZcD3gV+oHB9LZJNI
 klAI7gaKP6nMVdcnAJfg9Rik/S5u2beMrhRX5ai0KSUuUv1LxPRNtW3KX
 dX3DhD5ExeeDr4Ij24vTHBvdJsu5VxqtZnVkqrwswuYReMTdnA2l/JHqA
 UedQhOrJS4QbbeVYkX8wjiMzpaNKdyE5lUjQazSIvAtjKpnQ9Xaekd9Kt
 B2k+T/Hw+zmRzgGUev3sWEJOLdcqH8LLDDvITCIQsj7tg2OWqmfcGLb4F
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C1CHzfXg
Subject: Re: [Intel-wired-lan] [iwl-next v2 4/7] ice,
 irdma: move interrupts code to irdma
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 02, 2024 at 02:49:08PM +0200, Przemek Kitszel wrote:
> On 8/1/24 11:31, Michal Swiatkowski wrote:
> > Move responsibility of MSI-X requesting for RDMA feature from ice driver
> > to irdma driver. It is done to allow simple fallback when there is not
> > enough MSI-X available.
> > 
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   drivers/infiniband/hw/irdma/hw.c         |  2 -
> >   drivers/infiniband/hw/irdma/main.c       | 46 ++++++++++++++++-
> >   drivers/infiniband/hw/irdma/main.h       |  3 ++
> >   drivers/net/ethernet/intel/ice/ice.h     |  2 -
> >   drivers/net/ethernet/intel/ice/ice_idc.c | 64 ++++++------------------
> >   include/linux/net/intel/iidc.h           |  2 +
> >   6 files changed, 63 insertions(+), 56 deletions(-)
> > 
> > diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
> > index ad50b77282f8..69ce1862eabe 100644
> > --- a/drivers/infiniband/hw/irdma/hw.c
> > +++ b/drivers/infiniband/hw/irdma/hw.c
> > @@ -498,8 +498,6 @@ static int irdma_save_msix_info(struct irdma_pci_f *rf)
> >   	iw_qvlist->num_vectors = rf->msix_count;
> >   	if (rf->msix_count <= num_online_cpus())
> >   		rf->msix_shared = true;
> > -	else if (rf->msix_count > num_online_cpus() + 1)
> > -		rf->msix_count = num_online_cpus() + 1;
> >   	pmsix = rf->msix_entries;
> >   	for (i = 0, ceq_idx = 0; i < rf->msix_count; i++, iw_qvinfo++) {
> > diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
> > index 3f13200ff71b..69ad137be7aa 100644
> > --- a/drivers/infiniband/hw/irdma/main.c
> > +++ b/drivers/infiniband/hw/irdma/main.c
> > @@ -206,6 +206,43 @@ static void irdma_lan_unregister_qset(struct irdma_sc_vsi *vsi,
> >   		ibdev_dbg(&iwdev->ibdev, "WS: LAN free_res for rdma qset failed.\n");
> >   }
> > +static int irdma_init_interrupts(struct irdma_pci_f *rf, struct ice_pf *pf)
> > +{
> > +	int i;
> > +
> > +	rf->msix_count = num_online_cpus() + IRDMA_NUM_AEQ_MSIX;
> > +	rf->msix_entries = kcalloc(rf->msix_count, sizeof(*rf->msix_entries),
> > +				   GFP_KERNEL);
> > +	if (!rf->msix_entries)
> > +		return -ENOMEM;
> > +
> > +	for (i = 0; i < rf->msix_count; i++)
> > +		if (ice_alloc_rdma_qvector(pf, &rf->msix_entries[i]))
> > +			break;
> > +
> > +	if (i < IRDMA_MIN_MSIX) {
> > +		for (; i >= 0; i--)
> > +			ice_free_rdma_qvector(pf, &rf->msix_entries[i]);
> 
> you call ice_free_rdma_qvector() for i=0 even if the very first alloc
> attempt has failed
> 

Good point, I will fix it, thanks

> > +
> > +		kfree(rf->msix_entries);
> > +		return -ENOMEM;
> > +	}
> > +
> > +	rf->msix_count = i;
> > +
> > +	return 0;
> > +}
> 
> [...]
> 
> > --- a/drivers/infiniband/hw/irdma/main.h
> > +++ b/drivers/infiniband/hw/irdma/main.h
> > @@ -117,6 +117,9 @@ extern struct auxiliary_driver i40iw_auxiliary_drv;
> >   #define IRDMA_IRQ_NAME_STR_LEN (64)
> > +#define IRDMA_NUM_AEQ_MSIX	1
> > +#define IRDMA_MIN_MSIX		2
> > +
> >   enum init_completion_state {
> >   	INVALID_STATE = 0,
> >   	INITIAL_STATE,
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> > index 8247d27541b0..1311be1d2c30 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -97,8 +97,6 @@
> >   #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
> >   #define ICE_MAX_MSIX		256
> >   #define ICE_FDIR_MSIX		2
> > -#define ICE_RDMA_NUM_AEQ_MSIX	4
> 
> you have to extend commit message to tell why there is a 4 -> 1 change
>

Ok, I will

> > -#define ICE_MIN_RDMA_MSIX	2
> >   #define ICE_ESWITCH_MSIX	1
> >   #define ICE_NO_VSI		0xffff
> >   #define ICE_VSI_MAP_CONTIG	0
> 
> 
