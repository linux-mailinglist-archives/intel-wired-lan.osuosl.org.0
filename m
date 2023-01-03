Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7412C65C0C8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 14:27:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAFDD606BF;
	Tue,  3 Jan 2023 13:27:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAFDD606BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672752423;
	bh=3pcyX/yVaHwYEwQsy5TSGXL5HTcq8bVv1hY/zwuVqgE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n/jcqXkViVeAu6h3xvvWnnP7mmqjTTa+7Eoav8v5ioaBWHC5d8smJcJqIamOlazXe
	 TQrLkmgBo5T2GSw56T1i7wA1t93qHM2POXvrKfjucm1oVWdCDjzshvRCXHCyXZ4YXl
	 1JJj2IYLr08cFVkIsy+tfHD8GQhy14k7GF8MlX0/VmAi9ywwiInGA0fNuQ+FXG0U16
	 DXUxDULiAlzRH6PKiJ+zx9Uq96Kblx6e22OGgSa9u/MvzE1B/vCZ/NAflhkv4yDLlm
	 TyqEiaR7D/9Ft98t/YojBRo0XRmSF7rs2dL8e3G/t/VNQlWs1t5Mf2FraV1jQfjOzu
	 GjXyS7W9e2/rQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EdHovVnR6xoj; Tue,  3 Jan 2023 13:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF69F60A9F;
	Tue,  3 Jan 2023 13:27:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF69F60A9F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D29D61BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 13:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ABCE4404E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 13:26:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABCE4404E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id megXJZ97tAiY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 13:26:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E50F404B6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E50F404B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 13:26:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="301339130"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="301339130"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 05:26:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="718098101"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="718098101"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jan 2023 05:26:54 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 303DQrtI031553; Tue, 3 Jan 2023 13:26:53 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue,  3 Jan 2023 14:26:37 +0100
Message-Id: <20230103132637.3910851-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230103052401.488013-1-michal.swiatkowski@linux.intel.com>
References: <20230103052401.488013-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672752416; x=1704288416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bpP3XzVw06n3pVn/r+LsyYhjFPEdDOGmwsWVe789SH8=;
 b=bLbugVEgiU8ybVTi0QfWSuaRr4YcsE7466F28x1xeR+45epybQm0cVIn
 J90jboeLO7hlS1hN3BSezmXYpv1RI11m9pylx/P9U7uOrAN8MhWmHv/6o
 h1UNOpdm1YOe9iQSdDSZSJvf/krCLZS5kwiCLVtIzzpPZhZtOywhedbzh
 lTW5FryXfdrv/kqDyn32dNydDrBDlO8ju7oL5DN57GyBHkVg53F10qE/M
 WIa5G0v/+cRE4MmS8um2VmnfkFKqe06MK7ZB8KMsPd7hHOuMI/QtucFcf
 EG9l1zn2j3n5a2J3AXs9d/F2OrP+U5Wvu+Ey5/D/2+OPemK1aTk4387Ee
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bLbugVEg
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix out-of-bounds KASAN
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
Cc: intel-wired-lan@lists.osuosl.org, pmenzel@molgen.mpg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 3 Jan 2023 06:24:01 +0100

> KASAN reported:
> [ 9793.708867] BUG: KASAN: global-out-of-bounds in ice_get_link_speed+0x16/0x30 [ice]
[...]

> The ICE_AQ_LINK_SPEED_UNKNOWN define is BIT(15). The value is bigger
> than both legacy and normal link speed tables. Add one element (0 -
> unknown) to both tables. There is no need to explicitly set table size,
> leave it empty.
> 
> Fixes: 1d0e28a9be1f ("ice: Remove and replace ice speed defines with ethtool.h versions")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v1 --> v2:
>  * follow Alex sugestions and remove all zero records from link speed
>    tables and add validation for the index
>  * fix commit message
> ---
> ---

Super-nit: redundant double '---', one is enough.

>  drivers/net/ethernet/intel/ice/ice_common.c |  9 ++++-----
>  drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 18 +++++++-----------
>  2 files changed, 11 insertions(+), 16 deletions(-)

[...]

> @@ -71,21 +67,21 @@ static const u32 ice_legacy_aq_to_vc_speed[15] = {
>   */
>  u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed)
>  {
> -	u32 speed;
> +	/* convert a BIT() value into an array index */
> +	u32 index = fls(link_speed) - 1;
>  
>  	if (adv_link_support) {
> -		/* convert a BIT() value into an array index */
> -		speed = ice_get_link_speed(fls(link_speed) - 1);
> -	} else {
> +		return ice_get_link_speed(index);
> +	} else if (index < ARRAY_SIZE(ice_legacy_aq_to_vc_speed)) {
>  		/* Virtchnl speeds are not defined for every speed supported in
>  		 * the hardware. To maintain compatibility with older AVF
>  		 * drivers, while reporting the speed the new speed values are
>  		 * resolved to the closest known virtchnl speeds
>  		 */
> -		speed = ice_legacy_aq_to_vc_speed[fls(link_speed) - 1];
> +		return ice_legacy_aq_to_vc_speed[index];
>  	}

Breh, I've just realized that the branches are now oneliners, so {}s
around them are not needed anymore. Could you please send a v3
without them and with my

Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

added?

>  
> -	return speed;
> +	return VIRTCHNL_LINK_SPEED_UNKNOWN;
>  }
>  
>  /* The mailbox overflow detection algorithm helps to check if there
> -- 
> 2.36.1

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
