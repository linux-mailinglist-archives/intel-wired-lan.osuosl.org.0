Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3A67329FD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 10:37:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EAD3610B4;
	Fri, 16 Jun 2023 08:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EAD3610B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686904658;
	bh=7+3LgZLhiNywmbGPPkxsqnfeYPIXji9bLmtCK5t3Jsk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SfEzBYQ7ITkH/VtSIseBPdIH9Ct94TR50QB9kV8KGNTSTOl3+s4DaNzOk/hwArqGP
	 /aWvu37kdBfeNUJD3eOBXzqlFK1qk7/ytlfFlync23aGOdl5XZfElLNXOenufXE872
	 R7odw+XicWRM4kAsCy+7Z3RgNugNYzvK8wMh0mQwJ5G4pzisJSSnQPhEGURrqL6Mxa
	 LySKx8b+pwRB0vrGA4ZRI846MIsJHSNBVSQ9K0H4OABfFEPHqmjM2HgYrGJXtNk1Id
	 pCFOLlXVN21QLHNPKxbu7O4o5FNSH2pYIyiBGKx36tZ8qzuudnQHjSXGY99HuKN9pd
	 BgGEbEGFmcl5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 95DoFqx7uFrn; Fri, 16 Jun 2023 08:37:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAC6E605EE;
	Fri, 16 Jun 2023 08:37:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAC6E605EE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F74E1BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 08:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46D6241F5B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 08:37:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46D6241F5B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gah1m-su9ba4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 08:37:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FE4341F57
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0FE4341F57
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 08:37:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="361688832"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="361688832"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 01:37:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="715923831"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="715923831"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 01:37:26 -0700
Date: Fri, 16 Jun 2023 10:37:23 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <ZIwfQ62nQFmr6RFZ@localhost.localdomain>
References: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
 <20230615123830.155927-5-michal.swiatkowski@linux.intel.com>
 <CO1PR11MB5089B50AB69E2EA953E07FEFD65BA@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CO1PR11MB5089B50AB69E2EA953E07FEFD65BA@CO1PR11MB5089.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686904650; x=1718440650;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TFjfmDfGyKVcsNmEnWJhlPPhJzj7rQFvm131Anc9tAM=;
 b=XkVkyd3H0wtzafNXTU4rRHNmRlZon++one0j4wA8kV8G0pszulGO5GgJ
 DVj2GzVZQ9VMsBTW0gyLaKADSMrIiWR3y6fPTBZJEdiYJo5JSrkFSSGV8
 cnKwRWVS4MmEBDATAVxDAw4B9ZX7S7QQZ1UQ3weJsPwP2pIu2Xo7yqc/a
 aAAM2ANCkGimiJmOnGl9mc5UIRuG6R/12GEwrFiqdCZwE7HRu7hnDw8Hl
 C5podoKKgOrnaQvLPPvTWyw+FaY04QCOidFCMsNtgzk46ALCTkpdrvtSw
 wysx+3ycFsJePM1p6yAewO94sNuw5Kx1qjgdrVsRY9lpuhqZucKkvfsx6
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XkVkyd3H
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 4/4] ice: manage VFs MSI-X
 using resource tracking
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 15, 2023 at 03:57:37PM +0000, Keller, Jacob E wrote:
> 
> 
> > -----Original Message-----
> > From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Sent: Thursday, June 15, 2023 5:39 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > Subject: [PATCH iwl-next v1 4/4] ice: manage VFs MSI-X using resource tracking
> > 
> > Track MSI-X for VFs using bitmap, by setting and clearing bitmap during
> > allocation and freeing.
> > 
> > Try to linearize irqs usage for VFs, by freeing them and allocating once
> > again. Do it only for VFs that aren't currently running.
> > 
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_sriov.c | 170 ++++++++++++++++++---
> >  1 file changed, 151 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> > b/drivers/net/ethernet/intel/ice/ice_sriov.c
> > index e20ef1924fae..78a41163755b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> > @@ -246,22 +246,6 @@ static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
> >  	return vsi;
> >  }
> > 
> > -/**
> > - * ice_calc_vf_first_vector_idx - Calculate MSIX vector index in the PF space
> > - * @pf: pointer to PF structure
> > - * @vf: pointer to VF that the first MSIX vector index is being calculated for
> > - *
> > - * This returns the first MSIX vector index in PF space that is used by this VF.
> > - * This index is used when accessing PF relative registers such as
> > - * GLINT_VECT2FUNC and GLINT_DYN_CTL.
> > - * This will always be the OICR index in the AVF driver so any functionality
> > - * using vf->first_vector_idx for queue configuration will have to increment by
> > - * 1 to avoid meddling with the OICR index.
> > - */
> > -static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
> > -{
> > -	return pf->sriov_base_vector + vf->vf_id * pf->vfs.num_msix_per;
> > -}
> > 
> >  /**
> >   * ice_ena_vf_msix_mappings - enable VF MSIX mappings in hardware
> > @@ -528,6 +512,52 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16
> > num_vfs)
> >  	return 0;
> >  }
> > 
> > +/**
> > + * ice_sriov_get_irqs - get irqs for SR-IOV usacase
> > + * @pf: pointer to PF structure
> > + * @needed: number of irqs to get
> > + *
> > + * This returns the first MSI-X vector index in PF space that is used by this
> > + * VF. This index is used when accessing PF relative registers such as
> > + * GLINT_VECT2FUNC and GLINT_DYN_CTL.
> > + * This will always be the OICR index in the AVF driver so any functionality
> > + * using vf->first_vector_idx for queue configuration_id: id of VF which will
> > + * use this irqs
> > + *
> > + * Only SRIOV specific vectors are tracked in sriov_irq_bm. SRIOV vectors are
> > + * allocated from the end of global irq index. First bit in sriov_irq_bm means
> > + * last irq index etc. It simplifies extension of SRIOV vectors.
> > + * They will be always located from sriov_base_vector to the last irq
> > + * index. While increasing/decreasing sriov_base_vector can be moved.
> > + */
> > +static int ice_sriov_get_irqs(struct ice_pf *pf, u16 needed)
> > +{
> > +	int res = bitmap_find_next_zero_area(pf->sriov_irq_bm,
> > +					     pf->sriov_irq_size, 0, needed, 0);
> > +	/* conversion from number in bitmap to global irq index */
> > +	int index = pf->sriov_irq_size - res - needed;
> > +
> > +	if (res >= pf->sriov_irq_size || index < pf->sriov_base_vector)
> > +		return -ENOENT;
> > +
> > +	bitmap_set(pf->sriov_irq_bm, res, needed);
> > +	return index;
> 
> Shouldn't it be possible to use the xarray that was recently done for dynamic IRQ allocation for this now? It might take a little more refactor work though, hmm. It feels weird to introduce yet another data structure for a nearly identical purpose...
> 

I used bitmap because it was easy to get linear irq indexes (it is need
for VF to have linear indexes). Do you know how to assume that with
xarray? I felt like solution with storing in xarray and searching for
linear space was more complicated than bitmap, but probably I don't know
useful xarray mechanism for that purpose. If you know please point me
and I will rewrite it to use xarray.

Thanks

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
