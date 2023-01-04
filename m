Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CAA65CE84
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 09:44:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75F9381F47;
	Wed,  4 Jan 2023 08:44:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75F9381F47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672821861;
	bh=uDt4SxJQAXOHVEFxEzbr37D+Zj0a5oefnaUVdjderZM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zkwpjHslDp+0tWBQ5zS3H9Fziysib8McYXGCfrvHeOU7nJxAMJmE7D8APPYo3nbQ4
	 vKXGquMffeUroDNXPqJtfSVqCct0D32FiC/6c+TaACy05RoELNlAy6QiiVdQIz147f
	 x1lVLLUOrOw1kHSGs+dUog40Yx9+y3yc9ZkjjTd74UMRPRZZLy12gbt51CjMzO6ONp
	 rUIGU36owYFJ7MogkMiFcKC8erH1i0QcX2fRfzsbNlKlyGFZsT69AXrlGr8tNf9Ppu
	 cc3Qj7YkX6VpfE6POdpWuwsHDOH24FuWVbd+W2kwpfd6Y+QCOmWn/ZG4MkDIk11bx1
	 me7QAIZ9eLkxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZktL-nHcCAct; Wed,  4 Jan 2023 08:44:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A056812BD;
	Wed,  4 Jan 2023 08:44:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A056812BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 87F241BF31D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 08:44:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 608FE4089E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 08:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 608FE4089E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgbVnv5xea_n for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 08:44:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2393040865
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2393040865
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 08:44:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323120982"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="323120982"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 00:44:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="797458031"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="797458031"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 00:44:12 -0800
Date: Wed, 4 Jan 2023 09:44:08 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <Y7U8WMQ2if6mR7vf@localhost.localdomain>
References: <20230104082517.117649-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230104082517.117649-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672821854; x=1704357854;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5BvHrOgOTdgTy4xY1G5iWdZW3/EeTTUtXjnJVx8dcP0=;
 b=IEvCoJkk88WLnPtJ4rNqI3hwNFNTfb+YCuPxk7Wu9P/G2rYK1Arhasbm
 8imKh+zGwBVkKxtsoPCfGw+w7i78tVXNLx+IowazpA1PWlzBeUrM46rCY
 Eha7dhJ+9FstihAtTZkOMCZhlzNUHdISTgZlTVs12BLlgQYV0MG/pX9/J
 ea1EWL74FPBJBy+Jth3C2iMIdWdxhMw735uwSDpAM9HOO/r1kGEFrUM13
 biohd/GJ3WoOGhVh8WJxH5aSzBxEjACMCu9/IlEND+fD6O+67P4RBTAb1
 cxLEPClcnC60nymXRnD9p77RXHJkAdNSV7eYyJhiZs9IiiUiKoqZk23nM
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IEvCoJkk
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: fix out-of-bounds KASAN
 warning in virtchnl
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
Cc: pmenzel@molgen.mpg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 04, 2023 at 09:25:17AM +0100, Michal Swiatkowski wrote:
> KASAN reported:
> [ 9793.708867] BUG: KASAN: global-out-of-bounds in ice_get_link_speed+0x16/0x30 [ice]
> [ 9793.709205] Read of size 4 at addr ffffffffc1271b1c by task kworker/6:1/402
> 
> [ 9793.709222] CPU: 6 PID: 402 Comm: kworker/6:1 Kdump: loaded Tainted: G    B      OE      6.1.0+ #3
> [ 9793.709235] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.00.01.0014.070920180847 07/09/2018
> [ 9793.709245] Workqueue: ice ice_service_task [ice]
> [ 9793.709575] Call Trace:
> [ 9793.709582]  <TASK>
> [ 9793.709588]  dump_stack_lvl+0x44/0x5c
> [ 9793.709613]  print_report+0x17f/0x47b
> [ 9793.709632]  ? __cpuidle_text_end+0x5/0x5
> [ 9793.709653]  ? ice_get_link_speed+0x16/0x30 [ice]
> [ 9793.709986]  ? ice_get_link_speed+0x16/0x30 [ice]
> [ 9793.710317]  kasan_report+0xb7/0x140
> [ 9793.710335]  ? ice_get_link_speed+0x16/0x30 [ice]
> [ 9793.710673]  ice_get_link_speed+0x16/0x30 [ice]
> [ 9793.711006]  ice_vc_notify_vf_link_state+0x14c/0x160 [ice]
> [ 9793.711351]  ? ice_vc_repr_cfg_promiscuous_mode+0x120/0x120 [ice]
> [ 9793.711698]  ice_vc_process_vf_msg+0x7a7/0xc00 [ice]
> [ 9793.712074]  __ice_clean_ctrlq+0x98f/0xd20 [ice]
> [ 9793.712534]  ? ice_bridge_setlink+0x410/0x410 [ice]
> [ 9793.712979]  ? __request_module+0x320/0x520
> [ 9793.713014]  ? ice_process_vflr_event+0x27/0x130 [ice]
> [ 9793.713489]  ice_service_task+0x11cf/0x1950 [ice]
> [ 9793.713948]  ? io_schedule_timeout+0xb0/0xb0
> [ 9793.713972]  process_one_work+0x3d0/0x6a0
> [ 9793.714003]  worker_thread+0x8a/0x610
> [ 9793.714031]  ? process_one_work+0x6a0/0x6a0
> [ 9793.714049]  kthread+0x164/0x1a0
> [ 9793.714071]  ? kthread_complete_and_exit+0x20/0x20
> [ 9793.714100]  ret_from_fork+0x1f/0x30
> [ 9793.714137]  </TASK>
> 
> [ 9793.714151] The buggy address belongs to the variable:
> [ 9793.714158]  ice_aq_to_link_speed+0x3c/0xffffffffffff3520 [ice]
> 
> [ 9793.714632] Memory state around the buggy address:
> [ 9793.714642]  ffffffffc1271a00: f9 f9 f9 f9 00 00 05 f9 f9 f9 f9 f9 00 00 02 f9
> [ 9793.714656]  ffffffffc1271a80: f9 f9 f9 f9 00 00 04 f9 f9 f9 f9 f9 00 00 00 00
> [ 9793.714670] >ffffffffc1271b00: 00 00 00 04 f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9
> [ 9793.714680]                             ^
> [ 9793.714690]  ffffffffc1271b80: 00 00 00 00 00 04 f9 f9 f9 f9 f9 f9 00 00 00 00
> [ 9793.714704]  ffffffffc1271c00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> 
> The ICE_AQ_LINK_SPEED_UNKNOWN define is BIT(15). The value is bigger
> than both legacy and normal link speed tables. Add one element (0 -
> unknown) to both tables. There is no need to explicitly set table size,
> leave it empty.
> 
> Fixes: 1d0e28a9be1f ("ice: Remove and replace ice speed defines with ethtool.h versions")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Sorry, forgot about reviewed-by tag:
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

> ---
> v2 --> v3:
>  * remove double "---"
>  * remove {}s in ice_conv_link_speed_to_virtchnl()
> v1 --> v2:
>  * follow Alex sugestions and remove all zero records from link speed
>    tables and add validation for the index
>  * fix commit message
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c |  9 ++++-----
>  drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 21 ++++++++-------------
>  2 files changed, 12 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 4b78bfb0d7f9..d8efcec2fe5c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -5562,7 +5562,7 @@ bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw)
>   * returned by the firmware is a 16 bit * value, but is indexed
>   * by [fls(speed) - 1]
>   */
> -static const u32 ice_aq_to_link_speed[15] = {
> +static const u32 ice_aq_to_link_speed[] = {
>  	SPEED_10,	/* BIT(0) */
>  	SPEED_100,
>  	SPEED_1000,
> @@ -5574,10 +5574,6 @@ static const u32 ice_aq_to_link_speed[15] = {
>  	SPEED_40000,
>  	SPEED_50000,
>  	SPEED_100000,	/* BIT(10) */
> -	0,
> -	0,
> -	0,
> -	0		/* BIT(14) */
>  };
>  
>  /**
> @@ -5588,5 +5584,8 @@ static const u32 ice_aq_to_link_speed[15] = {
>   */
>  u32 ice_get_link_speed(u16 index)
>  {
> +	if (index >= ARRAY_SIZE(ice_aq_to_link_speed))
> +		return 0;
> +
>  	return ice_aq_to_link_speed[index];
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> index d4a4001b6e5d..f56fa94ff3d0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> @@ -39,7 +39,7 @@ ice_aq_send_msg_to_vf(struct ice_hw *hw, u16 vfid, u32 v_opcode, u32 v_retval,
>  	return ice_sq_send_cmd(hw, &hw->mailboxq, &desc, msg, msglen, cd);
>  }
>  
> -static const u32 ice_legacy_aq_to_vc_speed[15] = {
> +static const u32 ice_legacy_aq_to_vc_speed[] = {
>  	VIRTCHNL_LINK_SPEED_100MB,	/* BIT(0) */
>  	VIRTCHNL_LINK_SPEED_100MB,
>  	VIRTCHNL_LINK_SPEED_1GB,
> @@ -51,10 +51,6 @@ static const u32 ice_legacy_aq_to_vc_speed[15] = {
>  	VIRTCHNL_LINK_SPEED_40GB,
>  	VIRTCHNL_LINK_SPEED_40GB,
>  	VIRTCHNL_LINK_SPEED_40GB,
> -	VIRTCHNL_LINK_SPEED_UNKNOWN,
> -	VIRTCHNL_LINK_SPEED_UNKNOWN,
> -	VIRTCHNL_LINK_SPEED_UNKNOWN,
> -	VIRTCHNL_LINK_SPEED_UNKNOWN	/* BIT(14) */
>  };
>  
>  /**
> @@ -71,21 +67,20 @@ static const u32 ice_legacy_aq_to_vc_speed[15] = {
>   */
>  u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed)
>  {
> -	u32 speed;
> +	/* convert a BIT() value into an array index */
> +	u32 index = fls(link_speed) - 1;
>  
> -	if (adv_link_support) {
> -		/* convert a BIT() value into an array index */
> -		speed = ice_get_link_speed(fls(link_speed) - 1);
> -	} else {
> +	if (adv_link_support)
> +		return ice_get_link_speed(index);
> +	else if (index < ARRAY_SIZE(ice_legacy_aq_to_vc_speed))
>  		/* Virtchnl speeds are not defined for every speed supported in
>  		 * the hardware. To maintain compatibility with older AVF
>  		 * drivers, while reporting the speed the new speed values are
>  		 * resolved to the closest known virtchnl speeds
>  		 */
> -		speed = ice_legacy_aq_to_vc_speed[fls(link_speed) - 1];
> -	}
> +		return ice_legacy_aq_to_vc_speed[index];
>  
> -	return speed;
> +	return VIRTCHNL_LINK_SPEED_UNKNOWN;
>  }
>  
>  /* The mailbox overflow detection algorithm helps to check if there
> -- 
> 2.36.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
