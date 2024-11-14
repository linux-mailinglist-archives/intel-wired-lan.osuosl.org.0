Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEFC9C82F1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 07:08:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85AA2406AA;
	Thu, 14 Nov 2024 06:08:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S6SI1jrLGcCI; Thu, 14 Nov 2024 06:08:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E6B74069C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731564510;
	bh=QMiOOYh51SDI5wY/44ssOKiBI0RZP/CGLnAOBaHLD7U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dFmA1SlPtvkEUtCzK8/t9FvjoEkNCNlsnyH5YOQgi7flZcI7SVGG2yU3nxSrWwM84
	 XkAmLe9MYma8VaYAPZw6m0J/52saCFjxZgY44QIRkvxFNVxVKb9r5v1Ua3BTaqOYH2
	 Ba0jezQqWiuRqudK+OpbWlG8eIH4xiBTfTFl2dWo6xKyE4uIqfl7uJNKRICFbZ0vBs
	 J9UyWgpIx/4DwJEgkUA8nDCVJaW2Rpkn6UDpw3qvFuIfXypJ6AOfmSeoeBTNyNz+1R
	 Xb3ZLivpIN1krlp6hwW50AqMHD2k0w0JrSWGVWxqelCoDpaEKzKLSJgZJwHEEC263s
	 NfOorzihhadbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E6B74069C;
	Thu, 14 Nov 2024 06:08:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B84C3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 06:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6EA940688
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 06:08:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oYFI8zxUZKNd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 06:08:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 48424405C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48424405C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 48424405C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 06:08:26 +0000 (UTC)
X-CSE-ConnectionGUID: cjFnqCpXTDiOPClmAiJijg==
X-CSE-MsgGUID: LybZjRQ1RRuFXnp+eMijvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="42103556"
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="42103556"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 22:08:24 -0800
X-CSE-ConnectionGUID: WPODl92zQeu3pSP3ApAtsg==
X-CSE-MsgGUID: HHWep677Qc+DhUZLVUETEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="111408696"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 22:08:21 -0800
Date: Thu, 14 Nov 2024 07:05:39 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Lukasz Czapnik <lukasz.czapnik@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, pmenzel@molgen.mpg.de,
 wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, horms@kernel.org,
 David.Laight@aculab.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com,
 jacob.e.keller@intel.com, jiri@resnulli.us, przemyslaw.kitszel@intel.com
Message-ID: <ZzWTMwo7hx8qRLnt@mev-dev.igk.intel.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
 <20241104121337.129287-6-michal.swiatkowski@linux.intel.com>
 <5eca295e-1675-4779-b0d6-ec8a7550516f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5eca295e-1675-4779-b0d6-ec8a7550516f@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731564507; x=1763100507;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sE51thmAZ7MC5QN6bD4tLwEO0ESCXyPCFsyHxzm0V+I=;
 b=RZ/AOa+MTA7NvAqrQ3p/xhG0yrqBtrq+sF+XK2Zu1fUfeZwnq7rhZzvm
 3PiKG11tBOp4lk7VErS6D2xZ8SEXNo16WFC4g9XWdpB/TfLEhmCnoEjD2
 aziKk5vmGohka7I3i5sEYd0C1JL33wxGcGfeDWYA7AKWF5uEWLzQk4aTP
 ZLIJwNln7ufZvzmQx2H2kvY3AtWvuNnxeHnoz9OLkQti/4JtACo55JMGv
 WMRbMY0uONNIVS5HesEZTAKWA45Ee5qzFCbePMybC6Xn+ChRdLrklIKUd
 Qq7B5PYpXKdfhzcWWUI5P+sxMHrHO43jykSqUL1N+klMp5oYB8sOn9xCJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RZ/AOa+M
Subject: Re: [Intel-wired-lan] [iwl-next v7 5/9] ice,
 irdma: move interrupts code to irdma
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

On Wed, Nov 13, 2024 at 05:21:20PM +0100, Lukasz Czapnik wrote:
> 
> 
> On 11/4/2024 1:13 PM, Michal Swiatkowski wrote:
> > Move responsibility of MSI-X requesting for RDMA feature from ice driver
> > to irdma driver. It is done to allow simple fallback when there is not
> > enough MSI-X available.
> > 
> > Change amount of MSI-X used for control from 4 to 1, as it isn't needed
> > to have more than one MSI-X for this purpose.
> > 
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   drivers/infiniband/hw/irdma/hw.c         |  2 -
> >   drivers/infiniband/hw/irdma/main.c       | 46 ++++++++++++++++-
> >   drivers/infiniband/hw/irdma/main.h       |  3 ++
> >   drivers/net/ethernet/intel/ice/ice.h     |  1 -
> >   drivers/net/ethernet/intel/ice/ice_idc.c | 64 ++++++------------------
> >   drivers/net/ethernet/intel/ice/ice_irq.c |  3 +-
> >   include/linux/net/intel/iidc.h           |  2 +
> >   7 files changed, 65 insertions(+), 56 deletions(-)
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
> > index 3f13200ff71b..1ee8969595d3 100644
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
> 
> I think we can default RDMA MSI-X to 64 instead of num_online_cpus(). It
> would play better on platforms with high core count (200+ cores). There
> are very little benefits for having more than 64 queues.
> 

Sure,I can do that. Do we have some numbers to put it into commit
message?

> In those special cases, when more queues are needed, user should be able
> to manually assign more resources to RDMA.

Do we have a way to do that? I mean, currently AFAIK this is the only place
where RDMA is requesting MSI-X from ice. Driver can be reloaded to do it
again (if didn't receive enough MSI-X and user change other config to
free it for RDMA use case), but the max value is fixed here (to
num_online_cpus() here, and to 64 after your suggestion).

RDMA driver should be able to reinit MSI-X during working exactly the
same way as eth is changing MSI-X amount when queues number is changing.
This should be done in irdma driver. Hope someone will take care of that
(if this is really needed, becase if 64 is always enough we are fine).

In summary I will add:
#define IRDMA_NUM_OPTIMAL_MSIX 64
min(IRDMA_NUM_OPTIMAL_MSIX, num_online_cpus()) + IRDMA_NUM_AEQ_MSIX;

Thanks,
Michal

> 
> Regards,
> Lukasz
> 
