Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF7BB0894A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 11:29:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1366615A8;
	Thu, 17 Jul 2025 09:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oZClYjk8h6Mu; Thu, 17 Jul 2025 09:29:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D6806120D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752744580;
	bh=V89MAA/c0mz56dFR3ArAryzZWzfKryLUbi0DIVB49js=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rRQ7Gn5Vguwd86V6AVeVTAMSmTQOrUbuAdyw+6ODk8wvZTv7POgK+XWz5Kk+eb35P
	 PREjgyWQqp8tYCiEOdmTMAtXpcBfe6RrynpgzX+IAN9SEiyamfoiJgxLbVz052bR4b
	 uuJRcjLsZyk+LBpK77tKl90shim0S8W4mFVq5MjPx4Vi2m7bzwU08Yivdo28hyClXQ
	 4lrLrY4vnjqGEW/8CuydOiYxKShjLfYv35rbP43/8UhpMgP0SNh/KXql4h3H1OefyB
	 R2QBAP5Nx3I0Ypf/hTFT2mK3SnCZGsej/CY/EOOt3D2z4ty9Fs82RRbETpbzGXnsVZ
	 CvxqOyXV/OPPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D6806120D;
	Thu, 17 Jul 2025 09:29:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BC1B0A59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2411410C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:29:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h5YrtUvvXmca for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 09:29:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DB8EA410C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB8EA410C3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB8EA410C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:29:37 +0000 (UTC)
X-CSE-ConnectionGUID: CnFmHaYXQdqjjYoFYKX1Fw==
X-CSE-MsgGUID: ClBG2t+tTP2dnVFMht/o/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="66080640"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="66080640"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 02:29:37 -0700
X-CSE-ConnectionGUID: kTMDdV3RTKKJ60e/F1mtvw==
X-CSE-MsgGUID: AdDq3+OvQXeQF1kxDk/1CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="188685491"
Received: from soc-5cg4396xfb.clients.intel.com (HELO [172.28.180.72])
 ([172.28.180.72])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 02:29:35 -0700
Message-ID: <b5b46a1f-41e1-4a25-bb6c-885ad2851aeb@linux.intel.com>
Date: Thu, 17 Jul 2025 11:29:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yuto Ohnuki <ytohnuki@amazon.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250717084609.28436-1-ytohnuki@amazon.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <20250717084609.28436-1-ytohnuki@amazon.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752744578; x=1784280578;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=PeRZn0vzFIsX5vcaApJyGGbknSYq0vd9WAI4xB1Xxcs=;
 b=daIaCpDydpqERdFAdV2xkYBzc5XO6b9WBBMay9Cg7jGb5bZL8ZplusIC
 K9qyXyozOGM+3TZJMMF5ztM1I1Fj88qYqJcxRYkkCu8rw6Iy949ObyKCo
 h8VKS+jw8pJE61PqMoSJtNC+Z4uMSgCGi8YMMSgN+9FsMvVQnBHKs0VC1
 JwBD5r4mseEBblf7l4MhRBTCP5IINjnluv9PxR+W/5aGM/GAbBK9kyM4I
 D0o7zDQuCPcy3MmMg+jBZQaGSsJUBcrnHKwNYPRI6dULWnxLlezDyRB4f
 feKuYsd5rrcvUNYn6xBL77YUpZGdfHdMG4ZngKqaqbfwi9NJPfjyJQVRa
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=daIaCpDy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: remove unused
 fields from struct ixgbevf_adapter
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

On 2025-07-17 10:46 AM, Yuto Ohnuki wrote:
> Remove hw_rx_no_dma_resources and eitr_param fields from struct
> ixgbevf_adapter since these fields are never referenced in the driver.
> 
> Note that the interrupt throttle rate is controlled by the
> rx_itr_setting and tx_itr_setting variables.
> 
> This change simplifies the ixgbevf driver by removing unused fields,
> which improves maintainability.
> 
> Signed-off-by: Yuto Ohnuki <ytohnuki@amazon.com>
> ---
>   drivers/net/ethernet/intel/ixgbevf/ixgbevf.h | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> index 4384e892f967..3a379e6a3a2a 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> @@ -346,7 +346,6 @@ struct ixgbevf_adapter {
>   	int num_rx_queues;
>   	struct ixgbevf_ring *rx_ring[MAX_TX_QUEUES]; /* One per active queue */
>   	u64 hw_csum_rx_error;
> -	u64 hw_rx_no_dma_resources;
>   	int num_msix_vectors;
>   	u64 alloc_rx_page_failed;
>   	u64 alloc_rx_buff_failed;
> @@ -363,8 +362,6 @@ struct ixgbevf_adapter {
>   	/* structs defined in ixgbe_vf.h */
>   	struct ixgbe_hw hw;
>   	u16 msg_enable;
> -	/* Interrupt Throttle Rate */
> -	u32 eitr_param;
>   
>   	struct ixgbevf_hw_stats stats;
>   

Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>

Thanks,
Dawid
