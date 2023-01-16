Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D1766BBCF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jan 2023 11:34:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E3A3401CA;
	Mon, 16 Jan 2023 10:34:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E3A3401CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673865279;
	bh=UodZkLlPAgorc9Dg5R1/MrvZ6RCDvFwOdeI/ESHkLQg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g/j6zpDp/CNWBQSMwuVIMiGWRGwd+11F+21FOinb9KUxULlICjNanbIIkSKOLmCbq
	 i4l0p80sdgwKKyGlRNgpMz7sNDWY+HOgpCdQ0UnpCtupJhgZxeaJgZ/sbvBFIbT03R
	 09WFzTJ/wRJo88CT2xI1Y5+waf8k6JL3arkcVI9d1XEiXHhBKTTyzCK1zdjetOOuTq
	 yNaJxYrhWgDJ4iHhQROnQ0RnomZywPD9fivtw3joB/0ejneDGjtA2JW3jrthIeD8R2
	 PGt8g2yyRHYK+juKGqv4XPkXEukb2u8D5D7dTWX02HAholymDZ2BE5hCgbWk+6TKMK
	 VcR1yyBb8apgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e1rTMvJUP4ku; Mon, 16 Jan 2023 10:34:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EAAE400F1;
	Mon, 16 Jan 2023 10:34:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EAAE400F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F6391BF404
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 10:34:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5317C400F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 10:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5317C400F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dPsNEYAIYKoI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 10:34:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5758A400AC
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5758A400AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 10:34:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="323135478"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="323135478"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 02:34:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="722270475"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="722270475"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 02:34:30 -0800
Date: Mon, 16 Jan 2023 11:34:27 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <Y8UoMzXJe7iguVUW@localhost.localdomain>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
 <20230113223735.2514364-3-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230113223735.2514364-3-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673865272; x=1705401272;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+TdFexnGL6r5twr4wPutcCwt7Fyp5oFIg13YAt0Ky+s=;
 b=RwXCWWaF6Xf7+l5r1t53/RyZNBE6FeJuSE/psZDxPisEwYb6S3CebUBU
 gdkbV0leA+4ALkzrlKIvrB2bnRGC3yAPJuysqzYEvJEKxIofxDWO3lTC1
 wc7EioVDyetFew5ShPtAmeAloGQsBMLgZ/ajTmtMFGHD+yEt/jiTnuc9l
 4OQb+dEHjQqgfztpDQsbqsxr7H8/6TxsdfBg8fHti1VJ2htxLboB5nCx2
 bj55iB4yIkAFVkmzoJf+Y6WNo0eDRliwSTR70wpgz0NkqS/SmKwCo6zFw
 VnqvCC3kOWK9fczTREILNj9Tpef1KpyqpLME/Egm/8XksQkoyUCyZ2u3R
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RwXCWWaF
Subject: Re: [Intel-wired-lan] [PATCH net-next 02/13] ice: drop unnecessary
 VF parameter from several VSI functions
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 13, 2023 at 02:37:24PM -0800, Jacob Keller wrote:
> The vsi->vf pointer gets assigned early on during ice_vsi_alloc. Several
> functions currently take a VF pointer, but they can just use the existing
> vsi->vf pointer as needed. Modify these functions to drop the unnecessary
> VF parameter.
> 
> Note that ice_vsi_cfg is not changed as a following change will refactor so
> that the VF pointer is assigned during ice_vsi_cfg rather than
> ice_vsi_alloc.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 20 ++++++++------------
>  1 file changed, 8 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 62d27e50f40e..0bf99f0e3faa 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -166,14 +166,14 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
>  /**
>   * ice_vsi_set_num_qs - Set number of queues, descriptors and vectors for a VSI
>   * @vsi: the VSI being configured
> - * @vf: the VF associated with this VSI, if any
>   *
>   * Return 0 on success and a negative value on error
>   */
> -static void ice_vsi_set_num_qs(struct ice_vsi *vsi, struct ice_vf *vf)
> +static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
>  {
>  	enum ice_vsi_type vsi_type = vsi->type;
>  	struct ice_pf *pf = vsi->back;
> +	struct ice_vf *vf = vsi->vf;
>  
>  	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
>  		return;
> @@ -598,11 +598,10 @@ static int ice_vsi_alloc_stat_arrays(struct ice_vsi *vsi)
>   * @ch: ptr to channel
>   */
>  static int
> -ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_vf *vf,
> -		  struct ice_channel *ch)
> +ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
>  {
>  	if (vsi->type != ICE_VSI_CHNL) {
> -		ice_vsi_set_num_qs(vsi, vf);
> +		ice_vsi_set_num_qs(vsi);
>  		if (ice_vsi_alloc_arrays(vsi))
>  			return -ENOMEM;
>  	}
> @@ -2702,14 +2701,11 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
>  /**
>   * ice_vsi_cfg_def - configure default VSI based on the type
>   * @vsi: pointer to VSI
> - * @vf: pointer to VF to which this VSI connects. This field is used primarily
> - *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
>   * @ch: ptr to channel
>   * @init_vsi: is this an initialization or a reconfigure of the VSI
>   */
>  static int
> -ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
> -		int init_vsi)
> +ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_channel *ch, int init_vsi)
>  {
>  	struct device *dev = ice_pf_to_dev(vsi->back);
>  	struct ice_pf *pf = vsi->back;
> @@ -2717,7 +2713,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
>  
>  	vsi->vsw = pf->first_sw;
>  
> -	ret = ice_vsi_alloc_def(vsi, vf, ch);
> +	ret = ice_vsi_alloc_def(vsi, ch);
>  	if (ret)
>  		return ret;
>  
> @@ -2875,7 +2871,7 @@ int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
>  {
>  	int ret;
>  
> -	ret = ice_vsi_cfg_def(vsi, vf, ch, init_vsi);
> +	ret = ice_vsi_cfg_def(vsi, ch, init_vsi);
>  	if (ret)
>  		return ret;
>  
> @@ -3504,7 +3500,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
>  	prev_rxq = vsi->num_rxq;
>  
>  	ice_vsi_decfg(vsi);
> -	ret = ice_vsi_cfg_def(vsi, vsi->vf, vsi->ch, init_vsi);
> +	ret = ice_vsi_cfg_def(vsi, vsi->ch, init_vsi);
>  	if (ret)
>  		goto err_vsi_cfg;
>  
Looks better now
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> -- 
> 2.38.1.420.g319605f8f00e
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
