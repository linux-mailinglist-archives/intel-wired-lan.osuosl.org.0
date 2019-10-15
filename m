Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9290D7EBE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2019 20:18:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 70B7F22CCE;
	Tue, 15 Oct 2019 18:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G2pZ7GWZpyTL; Tue, 15 Oct 2019 18:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C1E422CC6;
	Tue, 15 Oct 2019 18:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2174E1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2019 18:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1BD8722926
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2019 18:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RiRzwZyg-6OQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2019 18:18:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A98520111
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2019 18:18:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 11:18:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="396900652"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga006.fm.intel.com with ESMTP; 15 Oct 2019 11:18:47 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 15 Oct 2019 11:18:44 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Oct 2019 11:18:43 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Tue, 15 Oct 2019 11:18:43 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S30 2/9] ice: get rid of per-tc flow in
 Tx queue configuration routines
Thread-Index: AQHVfvJ43uPxhAwC3E+RJw83alUUS6dcC6nQ
Date: Tue, 15 Oct 2019 18:18:43 +0000
Message-ID: <60e1ec76aae441b6b86263eabb6e11c1@intel.com>
References: <20191009140925.13997-1-anthony.l.nguyen@intel.com>
 <20191009140925.13997-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20191009140925.13997-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDFlZjM5ZjAtMDlhNS00ZDc3LThhZTEtMGUxNGMxMTViMjc4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiM0crMURRMjZvU0hEXC95aktPNzA3WUFyR1d6Y2JKbUtHYVpcL3RKMWNJR3JmOFMzUVwvM0l5RHhnM3pqYVVsSDVodiJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S30 2/9] ice: get rid of per-tc flow
 in Tx queue configuration routines
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
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Tony Nguyen
> Sent: Wednesday, October 9, 2019 7:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S30 2/9] ice: get rid of per-tc flow in Tx
> queue configuration routines
> 
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> 
> There's no reason for treating DCB as first class citizen when configuring the
> Tx queues and going through TCs. Reverse the logic and base the
> configuration logic on rings, which is the object of interest anyway.
> 
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 29 +++++++++--
> drivers/net/ethernet/intel/ice/ice_base.h |  4 +-
> drivers/net/ethernet/intel/ice/ice_lib.c  | 63 ++++++++---------------
>  3 files changed, 47 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index 735922a4d632..1dd9c18ecd8c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -190,6 +190,21 @@ static void ice_cfg_itr_gran(struct ice_hw *hw)
>  	wr32(hw, GLINT_CTL, regval);
>  }
> 
> +/**
> + * ice_calc_q_handle - calculate the queue handle
> + * @vsi: VSI that ring belongs to
> + * @ring: ring to get the absolute queue index
> + * @tc: traffic class number
> + */
> +static u16 ice_calc_q_handle(struct ice_vsi *vsi, struct ice_ring
> +*ring, u8 tc) {
> +	/* idea here for calculation is that we subtract the number of queue
> +	 * count from TC that ring belongs to from its absolute queue index
> +	 * and as a result we get the queue's index within TC.
> +	 */

This should be reworded; as is it's confusing. 


> +	return ring->q_index - vsi->tc_cfg.tc_info[tc].qoffset; }
> +
>  /**
>   * ice_setup_tx_ctx - setup a struct ice_tlan_ctx instance
>   * @ring: The Tx ring to configure
> @@ -522,13 +537,11 @@ void ice_vsi_free_q_vectors(struct ice_vsi *vsi)
>   * ice_vsi_cfg_txq - Configure single Tx queue
>   * @vsi: the VSI that queue belongs to
>   * @ring: Tx ring to be configured
> - * @tc_q_idx: queue index within given TC
>   * @qg_buf: queue group buffer
> - * @tc: TC that Tx ring belongs to
>   */
>  int
> -ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring, u16 tc_q_idx,
> -		struct ice_aqc_add_tx_qgrp *qg_buf, u8 tc)
> +ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring,
> +		struct ice_aqc_add_tx_qgrp *qg_buf)
>  {
>  	struct ice_tlan_ctx tlan_ctx = { 0 };
>  	struct ice_aqc_add_txqs_perq *txq;
> @@ -536,6 +549,7 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring
> *ring, u16 tc_q_idx,
>  	u8 buf_len = sizeof(*qg_buf);
>  	enum ice_status status;
>  	u16 pf_q;
> +	u8 tc;
> 
>  	pf_q = ring->reg_idx;
>  	ice_setup_tx_ctx(ring, &tlan_ctx, pf_q); @@ -549,10 +563,15 @@
> ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring, u16 tc_q_idx,
>  	 */
>  	ring->tail = pf->hw.hw_addr + QTX_COMM_DBELL(pf_q);
> 
> +	if (IS_ENABLED(CONFIG_DCB))
> +		tc = ring->dcb_tc;
> +	else
> +		tc = 0;
> +
>  	/* Add unique software queue handle of the Tx queue per
>  	 * TC into the VSI Tx ring
>  	 */
> -	ring->q_handle = tc_q_idx;
> +	ring->q_handle = ice_calc_q_handle(vsi, ring, tc);
> 
>  	status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc, ring->q_handle,
>  				 1, qg_buf, buf_len, NULL);
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.h
> b/drivers/net/ethernet/intel/ice/ice_base.h
> index db456862b35b..407995e8e944 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.h
> +++ b/drivers/net/ethernet/intel/ice/ice_base.h
> @@ -13,8 +13,8 @@ int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi);  void
> ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi);  void
> ice_vsi_free_q_vectors(struct ice_vsi *vsi);  int -ice_vsi_cfg_txq(struct
> ice_vsi *vsi, struct ice_ring *ring, u16 tc_q_idx,
> -		struct ice_aqc_add_tx_qgrp *qg_buf, u8 tc);
> +ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring,
> +		struct ice_aqc_add_tx_qgrp *qg_buf);
>  void ice_cfg_itr(struct ice_hw *hw, struct ice_q_vector *q_vector);  void
> ice_cfg_txq_interrupt(struct ice_vsi *vsi, u16 txq, u16 msix_idx, u16 itr_idx);
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index fe7f43d2e734..74c3bd191671 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1260,42 +1260,31 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
>   * ice_vsi_cfg_txqs - Configure the VSI for Tx
>   * @vsi: the VSI being configured
>   * @rings: Tx ring array to be configured
> - * @offset: offset within vsi->txq_map
>   *
>   * Return 0 on success and a negative value on error
>   * Configure the Tx VSI for operation.
>   */
>  static int
> -ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring **rings, int offset)
> +ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring **rings)
>  {
>  	struct ice_aqc_add_tx_qgrp *qg_buf;
> -	struct ice_pf *pf = vsi->back;
> -	u16 q_idx = 0, i;
> +	u16 q_idx = 0;
>  	int err = 0;
> -	u8 tc;
> 
> -	qg_buf = devm_kzalloc(&pf->pdev->dev, sizeof(*qg_buf),
> GFP_KERNEL);
> +	qg_buf = kzalloc(sizeof(*qg_buf), GFP_KERNEL);
>  	if (!qg_buf)
>  		return -ENOMEM;
> 
>  	qg_buf->num_txqs = 1;
> 
> -	/* set up and configure the Tx queues for each enabled TC */
> -	ice_for_each_traffic_class(tc) {
> -		if (!(vsi->tc_cfg.ena_tc & BIT(tc)))
> -			break;
> -
> -		for (i = 0; i < vsi->tc_cfg.tc_info[tc].qcount_tx; i++) {
> -			err = ice_vsi_cfg_txq(vsi, rings[q_idx], i + offset,
> -					      qg_buf, tc);
> -			if (err)
> -				goto err_cfg_txqs;
> -
> -			q_idx++;
> -		}
> +	for (q_idx = 0; q_idx < vsi->num_txq; q_idx++) {
> +		err = ice_vsi_cfg_txq(vsi, rings[q_idx], qg_buf);
> +		if (err)
> +			goto err_cfg_txqs;
>  	}
> +
>  err_cfg_txqs:
> -	devm_kfree(&pf->pdev->dev, qg_buf);
> +	kfree(qg_buf);
>  	return err;
>  }
> 
> @@ -1308,7 +1297,7 @@ ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring
> **rings, int offset)
>   */
>  int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi)  {
> -	return ice_vsi_cfg_txqs(vsi, vsi->tx_rings, 0);
> +	return ice_vsi_cfg_txqs(vsi, vsi->tx_rings);
>  }
> 
>  /**
> @@ -1498,34 +1487,24 @@ static int
>  ice_vsi_stop_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
>  		      u16 rel_vmvf_num, struct ice_ring **rings)  {
> -	u16 i, q_idx = 0;
> -	int status;
> -	u8 tc;
> +	u16 q_idx;
> 
>  	if (vsi->num_txq > ICE_LAN_TXQ_MAX_QDIS)
>  		return -EINVAL;
> 
> -	/* set up the Tx queue list to be disabled for each enabled TC */
> -	ice_for_each_traffic_class(tc) {
> -		if (!(vsi->tc_cfg.ena_tc & BIT(tc)))
> -			break;
> -
> -		for (i = 0; i < vsi->tc_cfg.tc_info[tc].qcount_tx; i++) {
> -			struct ice_txq_meta txq_meta = { };
> +	for (q_idx = 0; q_idx < vsi->num_txq; q_idx++) {
> +		struct ice_txq_meta txq_meta = { };
> +		int status;
> 
> -			if (!rings || !rings[q_idx])
> -				return -EINVAL;
> +		if (!rings || !rings[q_idx])
> +			return -EINVAL;
> 
> -			ice_fill_txq_meta(vsi, rings[q_idx], &txq_meta);
> -			status = ice_vsi_stop_tx_ring(vsi, rst_src,
> -						      rel_vmvf_num,
> -						      rings[q_idx], &txq_meta);
> +		ice_fill_txq_meta(vsi, rings[q_idx], &txq_meta);
> +		status = ice_vsi_stop_tx_ring(vsi, rst_src, rel_vmvf_num,
> +					      rings[q_idx], &txq_meta);
> 
> -			if (status)
> -				return status;
> -
> -			q_idx++;
> -		}
> +		if (status)
> +			return status;
>  	}
> 
>  	return 0;
> --
> 2.20.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
