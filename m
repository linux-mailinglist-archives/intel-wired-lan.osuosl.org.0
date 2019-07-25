Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E888742B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 02:52:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DED9C87F5D;
	Thu, 25 Jul 2019 00:52:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8vR3f5ymNAFi; Thu, 25 Jul 2019 00:52:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1C3087DD4;
	Thu, 25 Jul 2019 00:52:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AD161BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 00:51:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 312998489C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 00:51:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iunce5sWK6pe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 00:51:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 71860847BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 00:51:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 17:51:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,304,1559545200"; d="scan'208";a="253769141"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga001.jf.intel.com with ESMTP; 24 Jul 2019 17:51:56 -0700
Received: from orsmsx102.amr.corp.intel.com ([169.254.3.11]) by
 ORSMSX104.amr.corp.intel.com ([169.254.4.232]) with mapi id 14.03.0439.000;
 Wed, 24 Jul 2019 17:51:55 -0700
From: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>
To: "Allan, Bruce W" <bruce.w.allan@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S23 v3 04/15] ice: Restructure VFs
 initialization flows
Thread-Index: AQHVQX+cPQK3B0QB20Gbzbuvu3hzDKba92UA//+LuwA=
Date: Thu, 25 Jul 2019 00:51:54 +0000
Message-ID: <CFEEE81102D91947B9CC368106979EBABC809327@ORSMSX102.amr.corp.intel.com>
References: <20190723092454.3508-1-anthony.l.nguyen@intel.com>
 <20190723092454.3508-4-anthony.l.nguyen@intel.com>
 <804857E1F29AAC47BF68C404FC60A184010968EAED@ORSMSX122.amr.corp.intel.com>
In-Reply-To: <804857E1F29AAC47BF68C404FC60A184010968EAED@ORSMSX122.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTM5MzM1YmYtZDVkZC00YzcwLWIwNzQtNWVkNDkxODAxNTVlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMGtzMzZRU3dOaU8yeU9jTnpDeURNazQwaTVleWNxeHZTUEZRNk9Xc3JGOXFVWXZsTzREeVwvM3o3UXNmQWdBNVIifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 v3 04/15] ice: Restructure VFs
 initialization flows
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



> -----Original Message-----
> From: Allan, Bruce W
> Sent: Wednesday, July 24, 2019 5:47 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Abodunrin, Akeem G <akeem.g.abodunrin@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH S23 v3 04/15] ice: Restructure VFs
> initialization flows
> 
> > -----Original Message-----
> > From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> > Behalf Of Tony Nguyen
> > Sent: Tuesday, July 23, 2019 2:25 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Abodunrin, Akeem G <akeem.g.abodunrin@intel.com>
> > Subject: [Intel-wired-lan] [PATCH S23 v3 04/15] ice: Restructure VFs
> > initialization flows
> >
> > From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> >
> > This patch restructures how VFs are configured, and resources allocated.
> > Instead of freeing resources that were never allocated, and resetting
> > empty VFs that have never been created - the new flow will just
> > allocate resources for number of requested VFs based on the availability.
> >
> > During VFs initialization process, global interrupt is disabled, and
> > rearmed after getting MSIX vectors for VFs. This allows immediate
> > mailbox communications, instead of delaying it till later and VFs.
> > PF communications resulted to using polling instead of actual interrupt.
> > The issue manifested when creating higher number of VFs (128 VFs) per PF.
> >
> > Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice.h          |  1 +
> >  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 70
> > +++++++++++++------
> >  2 files changed, 49 insertions(+), 22 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> > b/drivers/net/ethernet/intel/ice/ice.h
> > index 07950ac4869f..112bdb662ea2 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -220,6 +220,7 @@ enum ice_state {
> >  	__ICE_CFG_BUSY,
> >  	__ICE_SERVICE_SCHED,
> >  	__ICE_SERVICE_DIS,
> > +	__ICE_OICR_INTR_DIS,		/* Global OICR interrupt disabled */
> >  	__ICE_STATE_NBITS		/* must be last */
> >  };
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> > b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> > index ce01cbe70ea4..4d41877fa06e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> > @@ -974,6 +974,48 @@ ice_vf_set_vsi_promisc(struct ice_vf *vf, struct
> > ice_vsi *vsi, u8 promisc_m,
> >  	return status;
> >  }
> >
> > +/**
> > + * ice_config_res_vfs - Finalize allocation of VFs resources in one
> > +go
> > + * @pf: pointer to the PF structure
> > + *
> > + * This function is being called as last part of resetting all VFs,
> > +or when
> > + * configuring VFs for the first time, where there is no resource to
> > +be freed
> > + * Returns true if resources were properly allocated for all VFs, and
> > +false
> > + * otherwise.
> > + */
> > +static bool ice_config_res_vfs(struct ice_pf *pf) {
> > +	struct ice_hw *hw = &pf->hw;
> > +	struct ice_vf *vf;
> 
> The scope of vf can be reduced to the for() loop that uses it
I agree with that... Thanks Bruce!

> 
> > +	int v;
> > +
> > +	if (ice_check_avail_res(pf)) {
> > +		dev_err(&pf->pdev->dev,
> > +			"Cannot allocate VF resources, try with fewer
> number
> > of VFs\n");
> > +		return false;
> > +	}
> > +
> > +	/* rearm global interrupts */
> > +	if (test_and_clear_bit(__ICE_OICR_INTR_DIS, pf->state))
> > +		ice_irq_dynamic_ena(hw, NULL, NULL);
> > +
> > +	/* Finish resetting each VF and allocate resources */
> > +	for (v = 0; v < pf->num_alloc_vfs; v++) {
> > +		vf = &pf->vf[v];
> > +
> > +		vf->num_vf_qs = pf->num_vf_qps;
> > +		dev_dbg(&pf->pdev->dev,
> > +			"VF-id %d has %d queues configured\n",
> > +			vf->vf_id, vf->num_vf_qs);
> > +		ice_cleanup_and_realloc_vf(vf);
> > +	}
> > +
> > +	ice_flush(hw);
> > +	clear_bit(__ICE_VF_DIS, pf->state);
> > +
> > +	return true;
> > +}
> > +
> >  /**
> >   * ice_reset_all_vfs - reset all allocated VFs in one go
> >   * @pf: pointer to the PF structure
> > @@ -1066,25 +1108,8 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool
> > is_vflr)
> >  		dev_err(&pf->pdev->dev,
> >  			"Failed to free MSIX resources used by SR-IOV\n");
> >
> > -	if (ice_check_avail_res(pf)) {
> > -		dev_err(&pf->pdev->dev,
> > -			"Cannot allocate VF resources, try with fewer
> number
> > of VFs\n");
> > +	if (!ice_config_res_vfs(pf))
> >  		return false;
> > -	}
> > -
> > -	/* Finish the reset on each VF */
> > -	for (v = 0; v < pf->num_alloc_vfs; v++) {
> > -		vf = &pf->vf[v];
> > -
> > -		vf->num_vf_qs = pf->num_vf_qps;
> > -		dev_dbg(&pf->pdev->dev,
> > -			"VF-id %d has %d queues configured\n",
> > -			vf->vf_id, vf->num_vf_qs);
> > -		ice_cleanup_and_realloc_vf(vf);
> > -	}
> > -
> > -	ice_flush(hw);
> > -	clear_bit(__ICE_VF_DIS, pf->state);
> >
> >  	return true;
> >  }
> > @@ -1249,7 +1274,7 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16
> > num_alloc_vfs)
> >  	/* Disable global interrupt 0 so we don't try to handle the VFLR. */
> >  	wr32(hw, GLINT_DYN_CTL(pf->oicr_idx),
> >  	     ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S);
> > -
> > +	set_bit(__ICE_OICR_INTR_DIS, pf->state);
> >  	ice_flush(hw);
> >
> >  	ret = pci_enable_sriov(pf->pdev, num_alloc_vfs); @@ -1278,13
> > +1303,13 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16
> > num_alloc_vfs)
> >  	}
> >  	pf->num_alloc_vfs = num_alloc_vfs;
> >
> > -	/* VF resources get allocated during reset */
> > -	if (!ice_reset_all_vfs(pf, true)) {
> > +	/* VF resources get allocated with initialization */
> > +	if (!ice_config_res_vfs(pf)) {
> >  		ret = -EIO;
> >  		goto err_unroll_sriov;
> >  	}
> >
> > -	goto err_unroll_intr;
> > +	return ret;
> >
> >  err_unroll_sriov:
> >  	pf->vf = NULL;
> > @@ -1296,6 +1321,7 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16
> > num_alloc_vfs)
> >  err_unroll_intr:
> >  	/* rearm interrupts here */
> >  	ice_irq_dynamic_ena(hw, NULL, NULL);
> > +	clear_bit(__ICE_OICR_INTR_DIS, pf->state);
> >  	return ret;
> >  }
> >
> > --
> > 2.20.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
