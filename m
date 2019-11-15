Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0AAFD250
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2019 02:17:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72DA188F13;
	Fri, 15 Nov 2019 01:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t9p-5zhTnU-x; Fri, 15 Nov 2019 01:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1972E88EDF;
	Fri, 15 Nov 2019 01:17:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C3061BF406
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 01:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6634322DC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 01:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bq62xadVRchk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2019 01:17:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 2DEE622DB0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 01:17:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 17:17:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,306,1569308400"; d="scan'208";a="406520055"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga006.fm.intel.com with ESMTP; 14 Nov 2019 17:17:13 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 14 Nov 2019 17:17:12 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 Nov 2019 17:17:12 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Thu, 14 Nov 2019 17:17:12 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select bitmap
 validation
Thread-Index: AQHVmliIkEH6hjlYKEKnKZy6zbRV3qeLb8rA
Date: Fri, 15 Nov 2019 01:17:12 +0000
Message-ID: <d05e40a7ad5246cdba8f63a6825ce9d9@intel.com>
References: <20191113192817.531297-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20191113192817.531297-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDBkNjhhZjktMmFhZC00YWE1LTg3NjMtZDI2MDZjZWNkODlkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNTFPMmhkYk9IdVhyUlVsVCtlaFwvbllGeCtOdGloT0t4M2NWRlg3aThBcTBvQ3FoN0pYMkJ5QjBCWVZHU1wvUk10In0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select
 bitmap validation
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
Cc: "Creeley, Brett" <brett.creeley@intel.com>,
 Arkady Gilinksky <arkady.gilinsky@harmonicinc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Comments inline

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Jeff Kirsher
> Sent: Wednesday, November 13, 2019 11:28 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady Gilinksky
> <arkady.gilinsky@harmonicinc.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select bitmap
> validation
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently in i40e_vc_disable_queues_msg() we are incorrectly validating the
> virtchnl queue select bitmaps. The virtchnl_queue_select rx_queues and
> tx_queue bitmap is being compared against ICE_MAX_VF_QUEUES, but the
> problem is that these bitmaps can have a value greater than
> I40E_MAX_VF_QUEUES.
> Fix this by comparing the bitmaps against BIT(I40E_MAX_VF_QUEUES).
> 
> Also, add the function i40e_vc_validate_vqs_bitmaps() that checks to see if
> both virtchnl_queue_select bitmaps are empty along with checking that the
> bitmaps only have valid bits set. This function can then be used in both the
> queue enable and disable flows.
> 
> Suggested-by: Arkady Gilinksky <arkady.gilinsky@harmonicinc.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 22 +++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 6d75a35acb67..275702d8cf7a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -2321,6 +2321,22 @@ static int i40e_ctrl_vf_rx_rings(struct i40e_vsi *vsi,
> unsigned long q_map,
>  	return ret;
>  }
> 
> +/**
> + * i40e_vc_validate_vqs_bitmaps - validate Rx/Tx queue bitmaps from
> +VIRTHCHNL
> + * @vqs: virtchnl_queue_select structure containing bitmaps to validate
> + *
> + * Returns true if validation was successful, else false.
> + */
> +static bool i40e_vc_validate_vqs_bitmaps(struct virtchnl_queue_select
> +*vqs) {
> +	if ((!vqs->rx_queues && !vqs->tx_queues) ||
> +	    vqs->rx_queue >= BIT(I40E_MAX_VF_QUEUES) ||
> +	    vqs->tx_queue >= BIT(I40E_MAX_VF_QUEUES))

Should these not be "rx_queues" and "tx_queues"? 

> +	       return false;
> +
> +	return true;
> +}
> +
>  /**
>   * i40e_vc_enable_queues_msg
>   * @vf: pointer to the VF info
> @@ -2346,7 +2362,7 @@ static int i40e_vc_enable_queues_msg(struct
> i40e_vf *vf, u8 *msg)
>  		goto error_param;
>  	}
> 
> -	if ((0 == vqs->rx_queues) && (0 == vqs->tx_queues)) {
> +	if (i40e_vc_validate_vqs_bitmaps(vqs)) {
>  		aq_ret = I40E_ERR_PARAM;
>  		goto error_param;
>  	}
> @@ -2408,9 +2424,7 @@ static int i40e_vc_disable_queues_msg(struct
> i40e_vf *vf, u8 *msg)
>  		goto error_param;
>  	}
> 
> -	if ((vqs->rx_queues == 0 && vqs->tx_queues == 0) ||
> -	    vqs->rx_queues > I40E_MAX_VF_QUEUES ||
> -	    vqs->tx_queues > I40E_MAX_VF_QUEUES) {
> +	if (i40e_vc_validate_vqs_bitmaps(vqs)) {
>  		aq_ret = I40E_ERR_PARAM;
>  		goto error_param;
>  	}
> --
> 2.23.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
