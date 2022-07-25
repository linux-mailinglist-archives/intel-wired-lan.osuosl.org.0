Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CC657FBAC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 10:50:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72D4A60BBD;
	Mon, 25 Jul 2022 08:50:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72D4A60BBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658739041;
	bh=a3UVZbb46eIkhFfLEWfQrXUe3kjAeopYyl7kv3mNI8Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ULkmdpTPr+x9/hE5ARrbYILtzkmWkx9NGMMY/0dmkkmPV6Qt7oUBFsteXU6jEzt0I
	 hhzIdnY+Hys/5+mQq6Tps3bjKyboJumu5HhJnvpKFFbu1rxBV15QD8UYJvxOEyZFZq
	 b1ykmduUOVR2CeSgEBYFUVbkCYd+K5cW5W6HOzXqQFyy6arfbDMXinkeGeh+TSdn7P
	 kMSb3IcvVSapJWO7vmEMU+bMUUz+7uOAoW/YA51uXP9PjKbtZpPpy91Jc5STw69Uii
	 Vgca0vMFqOUTUevgawLTmCjpeU7e7/3d+O1tMg16Q/Ce7B8PlZDnPgkNkNJCOan/oT
	 21vxak1e4edxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cee1MtIIAasw; Mon, 25 Jul 2022 08:50:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B00360BD1;
	Mon, 25 Jul 2022 08:50:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B00360BD1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C815B1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 08:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96016415DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 08:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96016415DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CcZJyR8YD8Lh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 08:50:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92C10415C3
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92C10415C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 08:50:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="287660499"
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="287660499"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 01:50:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="702413288"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jul 2022 01:50:32 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26P8oVXP002259; Mon, 25 Jul 2022 09:50:31 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Date: Mon, 25 Jul 2022 10:48:41 +0200
Message-Id: <20220725084841.2082138-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220722153610.499172-1-karol.kolacinski@intel.com>
References: <20220722153610.499172-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658739034; x=1690275034;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tuRkgznKqLVQKRZs05pPrB5nhL5Ei+HycapO3VjrdAU=;
 b=gDzaeGzPb4tEmKZCgULeohxETuEBdfqIiWGYwugiRYrXDJKLXLmOCcwM
 hTD9Z4PiQw8TyMS2RRMoF3tZm8jRIo55Cpx9enllGTidLB4j7R1d8a0+v
 ZfozEcWjuvS1ysafSJmJkVC+gMpOV7q3ULrnlzoSNuFN12x5ilX2B6KkQ
 NvUvnFNhc6QOWGd1z0OOkP6oj4i6dDPfOKB6gH8lg0ovc7jHJKCynflno
 cMSvWihTfXOaDvG4pD9M5AlAP36+RrrTO7+vjxEG9HcwjIxLe5OUqs6ci
 4cpQR4l9ukotFiIg1j19itlM+nAcSVrJksgIg+quv1+0Z/nsmJKmLIiFo
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gDzaeGzP
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add low latency Tx
 timestamp read
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

From: Karol Kolacinski <karol.kolacinski@intel.com>
Date: Fri, 22 Jul 2022 17:36:10 +0200

(offtop below)

> E810 products can support low latency Tx timestamp register read.
> This requires usage of threaded IRQ instead of kthread to reduce the
> kthread start latency (spikes up to 20 ms).
> Add a check for the device capability and use the new method if
> supported.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c |  4 +
>  drivers/net/ethernet/intel/ice/ice_main.c   | 32 +++++--
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 47 +++++-----
>  drivers/net/ethernet/intel/ice/ice_ptp.h    |  7 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 98 ++++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  7 ++
>  drivers/net/ethernet/intel/ice/ice_type.h   |  2 +
>  7 files changed, 152 insertions(+), 45 deletions(-)

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index 861b64322959..920c47ddbe8d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -347,6 +347,7 @@ struct ice_ts_func_info {
>  #define ICE_TS_DEV_ENA_M		BIT(24)
>  #define ICE_TS_TMR0_ENA_M		BIT(25)
>  #define ICE_TS_TMR1_ENA_M		BIT(26)
> +#define ICE_TS_LL_TX_TS_READ_M		BIT(28)
>  
>  struct ice_ts_dev_info {
>  	/* Device specific info */
> @@ -359,6 +360,7 @@ struct ice_ts_dev_info {
>  	u8 ena;
>  	u8 tmr0_ena;
>  	u8 tmr1_ena;
> +	u8 ts_ll_read;

Those all are flags, what about converting them to a bitfield/bitmap
(in a separate patch)? 1 byte per bit is a waste. Even though
currently there are 6 bytes accupied (after your addition) and long
(unsigned) is of 8 bytes, more flags here will waste more and more
space.

>  };
>  
>  /* Function specific capabilities */
> -- 
> 2.34.1

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
