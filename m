Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 291ED668CE3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 07:30:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 861C64184F;
	Fri, 13 Jan 2023 06:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 861C64184F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673591422;
	bh=MjFP/dtp4KGhSDZ9c/70p8ZsHU9VC04SecEMRdSOwB8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0LhVUWU3RnfAG+6BlqA6zzM9XbcQrGiWrQJ/6m6kYxg4miPB5SKGdklEfSeaoBhy8
	 9POQ/TrfO9s+Dxd/wL1iEnIH7JVLaE8g9WxUSpzJm4M4zMzjBYhqj+c5rasJK1pwfi
	 pofNVN55PhMVMU2cC3GAijUBJWnI1b98WL9i5I/HbZcAip8xL0kVciaUiq7a4z0EWo
	 2FVx32aFRWChAZ084uDPsTBCR5nLJl+FBFFuZLQQ2JXc2hWwtVr5sbzr94OjzMqpRz
	 F/Sjz+nqK8g2VXg7rxGGnLIndb+gMb5nRBnai6WBPi2RtJOeK5E+k7aOIe/5dQt/Hh
	 4zGvWKq5DRKfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VLd4d5BlDFo8; Fri, 13 Jan 2023 06:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2507B417B9;
	Fri, 13 Jan 2023 06:30:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2507B417B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB8E11BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 06:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C55AE40359
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 06:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C55AE40359
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zVZucJPVLk4e for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 06:30:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A65A54025F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A65A54025F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 06:30:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="325984963"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="325984963"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 22:30:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="765909596"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="765909596"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 22:30:12 -0800
Date: Fri, 13 Jan 2023 07:30:08 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Rogalski, RafalX" <rafalx.rogalski@intel.com>
Message-ID: <Y8D6cA3npsVss7nd@localhost.localdomain>
References: <20230111142029.318092-1-kamil.maziarz@intel.com>
 <Y7+ypc+uffjS52Js@localhost.localdomain>
 <DM8PR11MB562405EC0E21760D2FC05E27E7FD9@DM8PR11MB5624.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM8PR11MB562405EC0E21760D2FC05E27E7FD9@DM8PR11MB5624.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673591414; x=1705127414;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DzZL41WHjRehT+rUX3oxYJym76EdVUCva/Y6/0cIbqA=;
 b=GhBxojP3Xz4KLyECGbYccVVz8MiKH3K07TVVZGQQNbVfaKy3BZ/1DF00
 7Hl7pzd77/pgJ2MktTbj+MPPkkB5tfs4WZ4yGVhCO/PADePQpBBXc9pb4
 h9q7OXFr76oMzh50ioLjQqCMKo8OYKScshh/c0HA8QR6G3K3/JXALmdWu
 YJJnnn80vLBesyXgpGShJazKOVJwmXN7Y7zHWGmkcSoJp4LF5oa86ikM7
 aiYYY5OmnmRB6iQ+jamS1GqToFq+2ad+OL6ommiebStHfs2/aA7S0MapD
 y6Tl2OzlHoMOeEgft6IMD9tEz4MM9WW8ffOz5mJbR8EvwBrH89YRh7wzJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GhBxojP3
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Ignore RDMA message on
 setup tc qdisc
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Maziarz, Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 12, 2023 at 01:54:00PM +0000, Rogalski, RafalX wrote:
> >-----Original Message-----
> >From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com> 
> >Sent: Thursday, January 12, 2023 8:12 AM
> >To: Maziarz, Kamil <kamil.maziarz@intel.com>
> >Cc: intel-wired-lan@lists.osuosl.org; Rogalski, RafalX <rafalx.rogalski@intel.com>
> >Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Ignore RDMA message on setup tc qdisc
> >
> >On Wed, Jan 11, 2023 at 03:20:29PM +0100, Kamil Maziarz wrote:
> >> From: Rafal Rogalski <rafalx.rogalski@intel.com>
> >> 
> >> Commit f70b9d5f4426 ("ice: check for a leaf node presence") prevents 
> >> removal of VSI with leaf nodes. This is an expectation of driver 
> >> action induced by FW requirements. However, this caused RDMA scheduler 
> >> config removal to fail every time a qdisc was added or deleted.
> >> 
> >> Fix this by ignoring errors from RDMA configuration removal when qdisc 
> >> are being reconfigured.
> >> 
> >> Fixes: ff7e93219442 ("ice: Fix failure to re-add LAN/RDMA Tx queues")
> >> Signed-off-by: Rafal Rogalski <rafalx.rogalski@intel.com>
> >> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> >> ---
> >Thanks for changes. It is a good practise to include changelog here.
> >Something like:
> >v1 --> v2:
> > - check for -EBUSY etc.
> > ---
> >
> > Is Your patch rebased on dev-queue? I am pretty sure that  ice_vsi_rebuild looks different on current dev-queue, please check  that.
> >
> Thank you for vigilance. Yes, my changes are pushed at the top of dev-queue branch to the net-queue repository.
> 
Yeah, sorry for confusion, didn't notice that it is a fix to net. Thanks
for clarification.

> >>  drivers/net/ethernet/intel/ice/ice.h      | 1 +
> >>  drivers/net/ethernet/intel/ice/ice_lib.c  | 2 +-  
> >> drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
> >>  3 files changed, 5 insertions(+), 1 deletion(-)
> >> 
> >> diff --git a/drivers/net/ethernet/intel/ice/ice.h 
> >> b/drivers/net/ethernet/intel/ice/ice.h
> >> index 2f0b604abc5e..b572d07bc126 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice.h
> >> +++ b/drivers/net/ethernet/intel/ice/ice.h
> >> @@ -306,6 +306,7 @@ enum ice_pf_state {
> >>  	ICE_PHY_INIT_COMPLETE,
> >>  	ICE_FD_VF_FLUSH_CTX,		/* set at FD Rx IRQ or timeout */
> >>  	ICE_AUX_ERR_PENDING,
> >> +	ICE_SETUP_TC_QDISC,
> >>  	ICE_STATE_NBITS		/* must be last */
> >>  };
> >>  
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c 
> >> b/drivers/net/ethernet/intel/ice/ice_lib.c
> >> index 22bcb414546a..0ee3acbea108 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> >> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> >> @@ -3448,7 +3448,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool 
> >> init_vsi)
> >>  
> >>  	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
> >>  	ret = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
> >> -	if (ret)
> >> +	if (ret && !(test_bit(ICE_SETUP_TC_QDISC, pf->state) && ret == 
> >> +-EBUSY))
> >It is fine for me in current state, but do we really need to do this check only in setting TC qdisc? Doesn't the same thing happen when the number of queues is changed from ethtool? (maybe it is not because the changes is blocked when RDMA is active). Maybe whole
> >ice_setup_tc_mqprio_qdisc() should return -EBOUSY or inval if RDMA is active? Is it valid to a new qdisc when RDMA is active?
> >
> You are right about ethtool. However, I'm not sure if we should ignore -EBOUSY for every other scenario.
> 
Dave recently added a patchset thath blocks any queue changes when RDMA
driver is bound to aux [1]. I think following the same logic in
ice_setup_tc_mqprio_qdisc() the same check should happen (because it is
changing queues).

Adding Dave

Thanks, Michal
> >>  		dev_err(ice_pf_to_dev(vsi->back), "Failed to remove RDMA scheduler config for VSI %u, err %d\n",
> >>  			vsi->vsi_num, ret);
> >>  	ice_vsi_free_q_vectors(vsi);
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c 
> >> b/drivers/net/ethernet/intel/ice/ice_main.c
> >> index a9a7f8b52140..5ff137645f08 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> >> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> >> @@ -8706,6 +8706,7 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
> >>  	cur_txq = vsi->num_txq;
> >>  	cur_rxq = vsi->num_rxq;
> >>  
> >> +	set_bit(ICE_SETUP_TC_QDISC, pf->state);
> >>  	/* proceed with rebuild main VSI using correct number of queues */
> >>  	ret = ice_vsi_rebuild(vsi, false);
> >>  	if (ret) {
> >> @@ -8716,9 +8717,11 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
> >>  		clear_bit(ICE_RESET_FAILED, pf->state);
> >>  		if (ice_vsi_rebuild(vsi, false)) {
> >>  			dev_err(dev, "Rebuild of main VSI failed again\n");
> >> +			clear_bit(ICE_SETUP_TC_QDISC, pf->state);
> >>  			return ret;
> >>  		}
> >>  	}
> >> +	clear_bit(ICE_SETUP_TC_QDISC, pf->state);
> >>  
> >>  	vsi->all_numtc = num_tcf;
> >>  	vsi->all_enatc = ena_tc_qdisc;
> >> --
> >> 2.31.1
> >> 
> >> _______________________________________________
> >> Intel-wired-lan mailing list
> >> Intel-wired-lan@osuosl.org
> >> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
