Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A7C653428
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 17:37:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25ECA81FF5;
	Wed, 21 Dec 2022 16:37:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25ECA81FF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671640659;
	bh=89eghagxbEyb4JTzefgYXLfexO101wRzi1z3fsTLC+4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EmaFhGyO1nBVPWCcPj4QfHJtGIh7z2B7dDPKoqtTyEExVj5Y+T418uk6tZDvAgp7j
	 7WAMV0edRb9Cm6vRyQX/yIekBBJ4ZpLoMkQpNh2HGkfNYUo3rPEeW4eweYMBtfJH7J
	 cEUPUItFLBKabaCepL3nKb/OVhBliko1QC3PaCuM5KrGDuhKiTZP9DrXo89PQpE51s
	 pbt+VjooVE9tEkbwHhno77PwLrg5tReAuoAirpVgochK3iizeVhXrCDlng1qjZHiNZ
	 YOZCQKV/T3/pK0MT2J0uCu9xmGBUWhX+u/TuRMkqOypcIW/qh5afiYpnN6ekJzfAmD
	 z7Al+oWgf9lSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gyXsT1LpHC_m; Wed, 21 Dec 2022 16:37:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DC5381F14;
	Wed, 21 Dec 2022 16:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DC5381F14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9310E1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 16:37:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6CF6240519
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 16:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CF6240519
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FzZp4Kyj4vP5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 16:37:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73D2940516
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73D2940516
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 16:37:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="321830062"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="321830062"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 08:37:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="644901748"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="644901748"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 21 Dec 2022 08:37:28 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2BLGbRnV005512; Wed, 21 Dec 2022 16:37:27 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Wed, 21 Dec 2022 17:37:26 +0100
Message-Id: <20221221163726.1189622-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221221092746.39234-1-michal.swiatkowski@linux.intel.com>
References: <20221221092746.39234-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671640652; x=1703176652;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=32H4DgDIS8LkIEJp/cFlecIun/x1mtOLzysAeoVpQhE=;
 b=n7V675DJt+rAMKk1kmq6UN853TJUemkTGBuWlMJSOauocJQlmyUffHEB
 3HWbdy/9YF93QJ8Uw85TSS/tohS4i37vaBl+gTX0msSSKdzmufHGcV6Dz
 V4VR3Yf6Yrt/jkqxrfvPEoDmeGz90hze0qsYstrNUX9ycxrXx6JTXng5x
 ERB32jBuk/YOQbWoSeEicgVN/CUZfshMebQ8Vg4hZ5156xbT+HTy6jiUz
 u+Cs+Dy+vx9q0hbcE13c82sgf2UtW1TSFpHJ2swHd81jZ5tSOwaeZXebO
 92DfW/yHmrGYyW37xPdH3RyCcnE0O96UaaWhiW0L4Hce8LKyKkxDPlpuW
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n7V675DJ
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Wed, 21 Dec 2022 10:27:46 +0100

> KASAN reported:
> [ 9793.708867] BUG: KASAN: global-out-of-bounds in ice_get_link_speed+0x16/0x30 [ice]
> [ 9793.709205] Read of size 4 at addr ffffffffc1271b1c by task kworker/6:1/402
> 
> [ 9793.709222] CPU: 6 PID: 402 Comm: kworker/6:1 Kdump: loaded Tainted: G    B      OE      6.1.0+ #3
> [ 9793.709235] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.00.01.0014.070920180847 07/09/2018
> [ 9793.709245] Workqueue: ice ice_service_task [ice]

[...]

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

I warned Jesse that no index check might cause out-of-bounds walks
and here they are. I suggested the following back then:

1) Don't define any zeroed elements and elements with
   %VIRTCHNL_LINK_SPEED_UNKNOWN. Don't define explicit array bounds.

2) In ice_get_link_speed():

	if (index >= ARRAY_SIZE(ice_aq_to_link_speed))
		return 0;

	return ice_aq_to_link_speed[index];

3) Same in ice_conv_link_speed_to_virtchnl():

	u32 index = fls(link_speed) - 1;

	if (adv_link_support)
		return ice_get_link_speed(index);
	else if (index < ARRAY_SIZE(ice_legacy_aq_to_vc_speed))
		return ice_legacy_aq_to_vc_speed[index];
	else
		return VIRTCHNL_LINK_SPEED_UNKNOWN;

This could go as a fix to net with no problems.

>  
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> index d4a4001b6e5d..5f754d41f345 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c

[...]

> -- 
> 2.36.1

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
