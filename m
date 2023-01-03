Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB3765BA83
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 06:43:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F170160ECD;
	Tue,  3 Jan 2023 05:43:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F170160ECD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672724613;
	bh=gdyHlDeag4ni9hitdSiXFgMCtcn6k1z+k8XUnnf75+g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M7M9YdX7AKVoBMYqxQmO9aA8o50QF82drPPOmIpqvM8tdPp4L5Mra30bXetuo/zaf
	 s3/d/qFNvzpA0pUYOna0yg5me1anUa++km9q6q++U67rrrukV8ir9hkbas9+qrimY3
	 x/O//e3KaPFlpbc5SRMpeJ8+JRoFnEqK4b8NohDIRpu8sYdxjIJspWdID/hQ4kBWLu
	 jjJ7EqVDS7G8yho3ZVXwx/pqGGt2lML+bUboNnyM2fTAl4gXQvm3gtAW+tCYM2/a6e
	 fG1Aea8qe3BKOLa+Mm0wFdFsyXjCe1oOf8dlopuNZaNMrBDAyQzn8IwTQ8c7AL3Bw5
	 j9aPDAwzOhkow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CTj1QT6G6lW3; Tue,  3 Jan 2023 05:43:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8E2460C2E;
	Tue,  3 Jan 2023 05:43:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8E2460C2E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C7FA1BF338
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 05:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 76D898146A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 05:43:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76D898146A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UFnAQR97EeGq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 05:43:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B29908144F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B29908144F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 05:43:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="407848091"
X-IronPort-AV: E=Sophos;i="5.96,296,1665471600"; d="scan'208";a="407848091"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 21:43:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="723148557"
X-IronPort-AV: E=Sophos;i="5.96,296,1665471600"; d="scan'208";a="723148557"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 21:43:25 -0800
Date: Tue, 3 Jan 2023 06:43:15 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <Y7PAc5y58CUTbmRG@localhost.localdomain>
References: <20221228064158.267080-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221228064158.267080-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672724606; x=1704260606;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=haqepWQGP7z2niAQ+Eti/EBtGwtfXS/sziNA+LOjoyw=;
 b=bVRILvmaPcryxiHka0sPFqKT/lB9Xc7p5DOxPPxM0kSTcOPerokt6qEG
 k0DgZVHofBfWEh5A4lYBIh5rge2LuGhNpyr4nlNNNUkZUUbe45U/dtMNn
 Zfl20L5P/1WF1j0b0dRM6XMcDU95Y+Uv6ABIPTZaD9qmxA3eucDaKf/ql
 Ga+y69AmN8Fi26Aala3fbVTiCyMYv0jsYDadc5lRixJi8Zr4fpFUjhQc8
 swRBlpVYisT0iRE7LF785gJbYZL78ex5KLXELLItTnCHy4G1yT12fQr26
 51gIAQNehUrhfbsv9yovg40MSHhDAI/tGLfzvKCSBtxNEe/xG3d5wykgX
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bVRILvma
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix out-of-bounds KASAN
 warining in virtchnl
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

On Wed, Dec 28, 2022 at 07:41:58AM +0100, Michal Swiatkowski wrote:
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
> unknown) to both tables. There is no need to explicit set table size,
> leave it empty.
> 
> Fixes: 1d0e28a9be1f ("ice: Remove and replace ice speed defines with ethtool.h versions")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 5 +++--
>  drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 5 +++--
>  2 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 4b78bfb0d7f9..a24b5cb95039 100644
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
> @@ -5577,7 +5577,8 @@ static const u32 ice_aq_to_link_speed[15] = {
>  	0,
>  	0,
>  	0,
> -	0		/* BIT(14) */
> +	0,
> +	0		/* BIT(15) */
>  };
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> index d4a4001b6e5d..5f754d41f345 100644
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
> @@ -54,7 +54,8 @@ static const u32 ice_legacy_aq_to_vc_speed[15] = {
>  	VIRTCHNL_LINK_SPEED_UNKNOWN,
>  	VIRTCHNL_LINK_SPEED_UNKNOWN,
>  	VIRTCHNL_LINK_SPEED_UNKNOWN,
> -	VIRTCHNL_LINK_SPEED_UNKNOWN	/* BIT(14) */
> +	VIRTCHNL_LINK_SPEED_UNKNOWN,
> +	VIRTCHNL_LINK_SPEED_UNKNOWN	/* BIT(15) */
>  };
>  
>  /**
> -- 
NACK, sorry, I accidentally sent v1 instead of v2 with few changes
suggested in review :( . I already have sent v2.

> 2.36.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
