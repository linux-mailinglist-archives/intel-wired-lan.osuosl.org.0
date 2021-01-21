Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A9E2FF185
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jan 2021 18:14:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E79EB86D41;
	Thu, 21 Jan 2021 17:14:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SYOqdGky6QOC; Thu, 21 Jan 2021 17:14:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0CBA285FED;
	Thu, 21 Jan 2021 17:14:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5AADA1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 17:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51CBE871F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 17:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZ+pdW7Y1w2c for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 17:14:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0BCAF871E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 17:14:20 +0000 (UTC)
IronPort-SDR: LnLhr2CJ81O63q1VUL1hvJSYFNYgb2YychipM79JxQEXyS1tAAy24BfLzDTzR0Pts27GXplwGe
 TGWYbRaiu9YQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="175798182"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="175798182"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 09:14:20 -0800
IronPort-SDR: HNO7Jqpy0nB7bKgFGnidrWdIh5IFu+M8A6ANx7tMMKDxSqvLsf0CEd+R1XyJycOdTJImXN5OWo
 xXxaYHb6ozcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="356552156"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jan 2021 09:14:19 -0800
Date: Thu, 21 Jan 2021 18:04:46 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>
Message-ID: <20210121170446.GA44125@ranger.igk.intel.com>
References: <20210121075247.16666-1-brett.creeley@intel.com>
 <74b3c8c5-f611-d797-49f2-63f260869c1c@molgen.mpg.de>
 <0255cc56d4a93d84d781c21f857ea4389faa7f55.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0255cc56d4a93d84d781c21f857ea4389faa7f55.camel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix MSI-X vector fallback
 logic
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Creeley, Brett" <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 21, 2021 at 05:07:21PM +0000, Venkataramanan, Anirudh wrote:
> On Thu, 2021-01-21 at 08:17 +0100, Paul Menzel wrote:
> > Dear Brett,
> > 
> > 
> > Am 21.01.21 um 08:52 schrieb Brett Creeley:
> > > The current MSI-X enablement logic tries to enable best-case MSI-X
> > > vectors and if that fails we only support a bare-minimum set. This
> > > includes a single MSI-X for 1 Tx and 1 Rx queue and a single MSI-X
> > > for the OICR interrupt. Unfortunately, the driver fails to load
> > > when we
> > > don't get as many MSI-X as requested for a couple reasons.
> > > 
> > > First, the code to allocate MSI-X in the driver tries to allocate
> > > num_online_cpus() MSI-X for LAN traffic without caring about the
> > > number
> > > of MSI-X actually enabled/requested from the kernel for LAN
> > > traffic.
> > > So, when calling ice_get_res() for the PF VSI, it returns failure
> > > because the number of available vectors is less than requested. Fix
> > > this by not allowing the PF VSI to allocation  more than
> > > pf->num_lan_msix MSI-X vectors and pf->num_lan_msix Rx/Tx queues.
> > > Limiting the number of queues is done because we don't want more
> > > than
> > > 1 Tx/Rx queue per interrupt due to performance conerns.
> > > 
> > > Second, the driver assigns pf->num_lan_msix = 2, to account for LAN
> > > traffic and the OICR. However, pf->num_lan_msix is only meant for
> > > LAN
> > > MSI-X. This is causing a failure when the PF VSI tries to
> > > allocate/reserve the minimum pf->num_lan_msix because the OICR MSI-
> > > X has
> > > already been reserved, so there may not be enough MSI-X vectors
> > > left.
> > > Fix this by setting pf->num_lan_msix = 1 for the failure case. Then
> > > the
> > > ICE_MIN_MSIX accounts for the LAN MSI-X and the OICR MSI-X needed
> > > for
> > > the failure case.
> > > 
> > > Update the related defines used in ice_ena_msix_range() to align
> > > with
> > > the above behavior and remove the unused RDMA defines because RDMA
> > > is
> > > currently not supported. Also, remove the now incorrect comment.
> > > 
> > > Also, prevent users from enabling more combined queues than there
> > > are
> > > MSI-X available via ethtool.
> > > 
> > > Fixes: Commit 152b978a1f90 ("ice: Rework ice_ena_msix_range")
> > > Fixes: Commit 87324e747fde ("ice: Implement ethtool ops for
> > > channels")
> > 
> > The word *Commit* does not need to be put in there.
> 
> Will do.
> 
> > 
> > Could you split the ethtool change into a separate commit?
> 
> Will do.
> 
> > 
> > Also, can you document your test setup so the driver failed to load?
> 
> The issue (fixed by this patch) is triggered when the driver doesn't
> get adequate MSI-X vectors. We made a local change to the driver to
> simulate this situation and verified that with this patch, the driver
> comes up with a single queue.

What's diff from the version that was up on netdev?

> 
> > 
> > 
> > Kind regards,
> > 
> > Paul
> > 
> > 
> > > Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> > > ---
> > >   drivers/net/ethernet/intel/ice/ice.h         |  4 +++-
> > >   drivers/net/ethernet/intel/ice/ice_ethtool.c |  8 ++++----
> > >   drivers/net/ethernet/intel/ice/ice_lib.c     | 14 +++++++++-----
> > >   drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++------
> > >   4 files changed, 18 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> > > b/drivers/net/ethernet/intel/ice/ice.h
> > > index 6efafe7d8a62..619d93f8b54c 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice.h
> > > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > > @@ -68,7 +68,9 @@
> > >   #define ICE_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
> > >   #define ICE_AQ_LEN		64
> > >   #define ICE_MBXSQ_LEN		64
> > > -#define ICE_MIN_MSIX		2
> > > +#define ICE_MIN_LAN_TXRX_MSIX	1
> > > +#define ICE_MIN_LAN_OICR_MSIX	1
> > > +#define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX +
> > > ICE_MIN_LAN_OICR_MSIX)
> > >   #define ICE_FDIR_MSIX		1
> > >   #define ICE_NO_VSI		0xffff
> > >   #define ICE_VSI_MAP_CONTIG	0
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > > b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > > index 41427302332c..aebebd2102da 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > > @@ -3265,8 +3265,8 @@ ice_set_rxfh(struct net_device *netdev, const
> > > u32 *indir, const u8 *key,
> > >    */
> > >   static int ice_get_max_txq(struct ice_pf *pf)
> > >   {
> > > -	return min_t(int, num_online_cpus(),
> > > -		     pf->hw.func_caps.common_cap.num_txq);
> > > +	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> > > +		    (u16)pf->hw.func_caps.common_cap.num_txq);
> > >   }
> > >   
> > >   /**
> > > @@ -3275,8 +3275,8 @@ static int ice_get_max_txq(struct ice_pf *pf)
> > >    */
> > >   static int ice_get_max_rxq(struct ice_pf *pf)
> > >   {
> > > -	return min_t(int, num_online_cpus(),
> > > -		     pf->hw.func_caps.common_cap.num_rxq);
> > > +	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> > > +		    (u16)pf->hw.func_caps.common_cap.num_rxq);
> > >   }
> > >   
> > >   /**
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> > > b/drivers/net/ethernet/intel/ice/ice_lib.c
> > > index 3df67486d42d..ad9c22a1b97a 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > > @@ -161,8 +161,9 @@ static void ice_vsi_set_num_qs(struct ice_vsi
> > > *vsi, u16 vf_id)
> > >   
> > >   	switch (vsi->type) {
> > >   	case ICE_VSI_PF:
> > > -		vsi->alloc_txq = min_t(int,
> > > ice_get_avail_txq_count(pf),
> > > -				       num_online_cpus());
> > > +		vsi->alloc_txq = min3(pf->num_lan_msix,
> > > +				      ice_get_avail_txq_count(pf),
> > > +				      (u16)num_online_cpus());
> > >   		if (vsi->req_txq) {
> > >   			vsi->alloc_txq = vsi->req_txq;
> > >   			vsi->num_txq = vsi->req_txq;
> > > @@ -174,8 +175,9 @@ static void ice_vsi_set_num_qs(struct ice_vsi
> > > *vsi, u16 vf_id)
> > >   		if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> > >   			vsi->alloc_rxq = 1;
> > >   		} else {
> > > -			vsi->alloc_rxq = min_t(int,
> > > ice_get_avail_rxq_count(pf),
> > > -					       num_online_cpus());
> > > +			vsi->alloc_rxq = min3(pf->num_lan_msix,
> > > +					      ice_get_avail_rxq_count(p
> > > f),
> > > +					      (u16)num_online_cpus());
> > >   			if (vsi->req_rxq) {
> > >   				vsi->alloc_rxq = vsi->req_rxq;
> > >   				vsi->num_rxq = vsi->req_rxq;
> > > @@ -184,7 +186,9 @@ static void ice_vsi_set_num_qs(struct ice_vsi
> > > *vsi, u16 vf_id)
> > >   
> > >   		pf->num_lan_rx = vsi->alloc_rxq;
> > >   
> > > -		vsi->num_q_vectors = max_t(int, vsi->alloc_rxq, vsi-
> > > >alloc_txq);
> > > +		vsi->num_q_vectors = min_t(int, pf->num_lan_msix,
> > > +					   max_t(int, vsi->alloc_rxq,
> > > +						 vsi->alloc_txq));
> > >   		break;
> > >   	case ICE_VSI_VF:
> > >   		vf = &pf->vf[vsi->vf_id];
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > > b/drivers/net/ethernet/intel/ice/ice_main.c
> > > index fb81aa5979e3..e10ca8929f85 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > > @@ -3430,18 +3430,14 @@ static int ice_ena_msix_range(struct ice_pf
> > > *pf)
> > >   	if (v_actual < v_budget) {
> > >   		dev_warn(dev, "not enough OS MSI-X vectors. requested =
> > > %d, obtained = %d\n",
> > >   			 v_budget, v_actual);
> > > -/* 2 vectors each for LAN and RDMA (traffic + OICR), one for flow
> > > director */
> > > -#define ICE_MIN_LAN_VECS 2
> > > -#define ICE_MIN_RDMA_VECS 2
> > > -#define ICE_MIN_VECS (ICE_MIN_LAN_VECS + ICE_MIN_RDMA_VECS + 1)
> > >   
> > > -		if (v_actual < ICE_MIN_LAN_VECS) {
> > > +		if (v_actual < ICE_MIN_MSIX) {
> > >   			/* error if we can't get minimum vectors */
> > >   			pci_disable_msix(pf->pdev);
> > >   			err = -ERANGE;
> > >   			goto msix_err;
> > >   		} else {
> > > -			pf->num_lan_msix = ICE_MIN_LAN_VECS;
> > > +			pf->num_lan_msix = ICE_MIN_LAN_TXRX_MSIX;
> > >   		}
> > >   	}
> > >   
> > > 
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
