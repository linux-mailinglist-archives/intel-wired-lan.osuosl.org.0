Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B9CA3ED4D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 08:23:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A382D83A84;
	Fri, 21 Feb 2025 07:23:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eci8K0XWUYS8; Fri, 21 Feb 2025 07:23:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D366183A76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740122607;
	bh=t6Af84BcSDC6kKQVHrK7KhxnWGCKrWlJDCmGXUmOoX8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Zg+Y3IXIZZIzwihVegIdDWoh60K/IKbDOFDpN/bdy6QUEJODk4MHMttRso/6Mv90X
	 FisStSm5+2WBWPz8K1hj7cNSXYZZYTbOCTsvX1t0TyqJGApXbgAKaOC41mvYDWszTd
	 pxElI1o59TPhJo1lyjIcaQtizrCBjEUr7HCHiC8ldMaKTnNsmpv7ywLkNlxSUcEkNm
	 9PhLHfYAszJjGKK2Nhac9H0+o3/g7aBlU/8VKd0NbQnqHgzTzPS058Jcjy0SMPD7LX
	 h6lB1WLEfeExWwUHusHtJUwKF9mhxK4AwnChGLqCsXBeCPswNWwW6pZcLS/HN5+34a
	 8XUgvNUSfmQfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D366183A76;
	Fri, 21 Feb 2025 07:23:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B2445D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 07:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8922E411C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 07:23:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZcvwYgZeqie6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 07:23:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5AB8E411C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AB8E411C2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5AB8E411C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 07:23:23 +0000 (UTC)
X-CSE-ConnectionGUID: Lzbwe8GiThKPt3m0Sixbew==
X-CSE-MsgGUID: b6pGUpuwTW201gVKGHLOdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="63406461"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="63406461"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 23:23:24 -0800
X-CSE-ConnectionGUID: PC3qtnJgQOKSviv4qp0jnw==
X-CSE-MsgGUID: 3+U8oABgRKSWkpnWec7krQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="120224189"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.60.175])
 ([10.247.60.175])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 23:23:20 -0800
Message-ID: <6ff37238-ff0e-43c9-a88d-1258fd4ce7ef@linux.intel.com>
Date: Fri, 21 Feb 2025 15:23:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250217-igc_mqprio_tx_mode-v1-1-3a402fe1f326@linutronix.de>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250217-igc_mqprio_tx_mode-v1-1-3a402fe1f326@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740122605; x=1771658605;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=sq/x43yJb850psvaY5dsqL9/rnJ1afk9ad6fQQPp8Oc=;
 b=IPNxB/+4Gl6A8T1Owea/f7SL2xV1Sv78x05DOCf8ETuvu0cC9cXMJWzr
 976FUmBqa4UUBvuoiapedDHs+m3aCizOjLagknAY6sHsfa2TL6dg76OOf
 fL7wBcUV5jEH+DT4/k1y1WSzLFaXNHI5qNPHyFrSwDJ/0eDNnagPZ5wr8
 nphfRYWbt/+81F45gIYOZqkOJdNKo3wioNMvaWJOZbJZ26JM38l7Rlaxm
 ETuyB6r1R8zzdUTejcnud3zkgkD2HYrGSEMMamLaiAMB+qI57QkYFxgXp
 ymS+tfPRfrjB1AvxzLgOzoTpmWNlNqh7tljQVU2n1rcN9H46vCqcNXPXO
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IPNxB/+4
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Change Tx mode for
 MQPRIO offloading
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



On 17/2/2025 7:45 pm, Kurt Kanzenbach wrote:
> The current MQPRIO offload implementation uses the legacy TSN Tx mode. In
> this mode the hardware uses four packet buffers and considers queue
> priorities.
> 
> In order to harmonize the TAPRIO implementation with MQPRIO switch to the
Missed "," ?
In order to harmonize the TAPRIO implementation with MQPRIO, switch to the

> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 1e44374ca1ffbb86e9893266c590f318984ef574..6e4582de9602db2c6667f1736cc2acaa4d4b5201 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -47,7 +47,7 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
>   		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
>   
>   	if (adapter->strict_priority_enable)
> -		new_flags |= IGC_FLAG_TSN_LEGACY_ENABLED;
> +		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
>   
>   	return new_flags;
>   }

IGC_FLAG_TSN_QBV_ENABLED is set multiple times in different lines:

	if (adapter->taprio_offload_enable)
		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;

	if (is_any_launchtime(adapter))
		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;

	if (is_cbs_enabled(adapter))
		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;

	if (adapter->strict_priority_enable)
		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;

	return new_flags;
}

We can combine the conditions to simplify:
	if (adapter->taprio_offload_enable ||
             is_any_launchtime(adapter) ||
             adapter->strict_priority_enable)
		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
