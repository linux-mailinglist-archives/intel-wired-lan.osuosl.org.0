Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBBCA2397C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 07:21:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14116606B4;
	Fri, 31 Jan 2025 06:21:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1bfS1rcgKlFg; Fri, 31 Jan 2025 06:21:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6993B6073C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738304491;
	bh=TtWjVqi/gbiARu1lEqRHX7gwWKHCsuFvSA6baTkSEvo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kOtuuxeHOXSXzRw/hb17/3GQmUssmGIDZ5NMDYbO56ME3dW3Xdct6H/YOenJMqul/
	 H5aQmWpJr/+arRr6GTTmPH050yWVgyvsfreCtrfeTeJaJYskV0a9YtUtBIqYgpSCA0
	 625RUu3G4N0MBlh64ieJslrfYqKJLhB+rDsFSypPT3iwwVr2zNtSDRu0iNhMH3/jaO
	 eluREei0nz40nODJ9NJAVNVbK+6pBSzcKY5G8o5bOhuqhuLVFvM709/66ApelE8kMG
	 V2wL/gQqLnHwmbqCsTgs1ILtYSDWUFfw1imwzrRipU1umGxrTe5RmfAcMZxRHHZBrl
	 gj5zpE1IpmNPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6993B6073C;
	Fri, 31 Jan 2025 06:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B463416C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 06:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A27946066A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 06:21:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j2lrNkVZ7qjR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 06:21:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D88336065A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D88336065A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D88336065A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 06:21:28 +0000 (UTC)
X-CSE-ConnectionGUID: LvuDM1UWQkmCnpeh9gpLCA==
X-CSE-MsgGUID: qczhubAbT4G/1NNkKiFaOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38898450"
X-IronPort-AV: E=Sophos;i="6.13,247,1732608000"; d="scan'208";a="38898450"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 22:21:28 -0800
X-CSE-ConnectionGUID: 8/BkORJtSKaC4/WFwBOUug==
X-CSE-MsgGUID: 4dYWIjDlRoyHMpYHStLWJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,247,1732608000"; d="scan'208";a="110122754"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 22:21:24 -0800
Date: Fri, 31 Jan 2025 07:17:54 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiasheng Jiang <jiashengjiangcool@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 wojciech.drewek@intel.com, piotr.raczynski@intel.com,
 mateusz.polchlopek@intel.com, pawel.kaminski@intel.com,
 michal.wilczynski@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <Z5xrEtiFC4PtSFp6@mev-dev.igk.intel.com>
References: <20250131013832.24805-1-jiashengjiangcool@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250131013832.24805-1-jiashengjiangcool@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738304489; x=1769840489;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4457f3QO7jxAij1w8K8qI9z2zpN0Sb/yTbSaXGKXzAQ=;
 b=KhpkI47K7T3TUDtKHMZnUFwZ1NVpbxgliPZKjHwd7yE7Tr0RLzJXbh8P
 nu4sgS/tQxe4EH8EsxQR7PaNnJYv49Q/9GmEQMZcW+JHMA8wT59o296x0
 j613uZwQDci8e6dBdv5f6tU4oAgUYi6wQRveDO2mc5BRXInZgK6+kD6zr
 kCSHkeDp5IiSjpqwPOKi6pu87byyHH8j3SfpMmLdSJpHxmaZyoR4tfu/Y
 3wEzz+vBN7DFzo/0s7Yx1FTNlbqzan3N+gc/SRL/q132tOhZYjDxl67mv
 qtYQFmXz32A0TK7htQ63PQPF3b6ydL5l0hpVJ9PicnIvs5zpjTPvdmlY3
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KhpkI47K
Subject: Re: [Intel-wired-lan] [PATCH] ice: Add check for devm_kzalloc()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 31, 2025 at 01:38:32AM +0000, Jiasheng Jiang wrote:
> Add check for the return value of devm_kzalloc() to guarantee the success
> of allocation.
> 
> Fixes: 42c2eb6b1f43 ("ice: Implement devlink-rate API")
> Signed-off-by: Jiasheng Jiang <jiashengjiangcool@gmail.com>
> ---
>  drivers/net/ethernet/intel/ice/devlink/devlink.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index d116e2b10bce..dbdb83567364 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -981,6 +981,9 @@ static int ice_devlink_rate_node_new(struct devlink_rate *rate_node, void **priv
>  
>  	/* preallocate memory for ice_sched_node */
>  	node = devm_kzalloc(ice_hw_to_dev(pi->hw), sizeof(*node), GFP_KERNEL);
> +	if (!node)
> +		return -ENOMEM;
> +

Thanks for fixing:
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

>  	*priv = node;
>  
>  	return 0;
> -- 
> 2.25.1
