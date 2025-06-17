Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5F8ADCC3B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jun 2025 15:02:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C87260E91;
	Tue, 17 Jun 2025 13:02:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QB3HOH6bVE3W; Tue, 17 Jun 2025 13:02:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD5F260EAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750165328;
	bh=YGaMQQRIqJqeMqGuLuG9yPrZZBhxSd6nLokoG1UiEc8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EvKL9QjlZgHzpMzXOORPYlGBrGV1lin/g8qgE7i2eBAZYw1y7nBWkVftV+lHl8zoY
	 6EsrvgJJuutJJVQo/YWtM2Eugr2/TsSmVt5PiIGjR4YDiyLEqMpFKKjn2fKj42P9hc
	 EqP58bT7gA3f7CYJBkuhC5anzJfn6OLeWBCim47Wuvx6xacnfsLS2BqcNcaWceolyZ
	 Cf3UNW76J1QT3DitXiedWUmo3VJ6KE0Kn6dxoiw8nC7yZSmfDJxqHBIIgdzSNhjRmz
	 zF9nm5OLXA4TwXG4Eoq6PmNAmP6CInC6zzWjLVvPO9ov+pNWdbozEtEIKIOIEj1UtZ
	 2fbc0qyTIxEBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD5F260EAD;
	Tue, 17 Jun 2025 13:02:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D533D79
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 13:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03D8260E91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 13:02:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LMxzEsV5FNal for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jun 2025 13:02:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=gil.fine@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 365E360E30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 365E360E30
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 365E360E30
 for <intel-wired-lan@osuosl.org>; Tue, 17 Jun 2025 13:02:06 +0000 (UTC)
X-CSE-ConnectionGUID: 6V6rXE2eS5evG5GqXxebJg==
X-CSE-MsgGUID: UAIqsEViSUmS5A8OQgVHWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="56018647"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="56018647"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 06:02:05 -0700
X-CSE-ConnectionGUID: RfgyaNljR8SH3hh/HQPVyQ==
X-CSE-MsgGUID: RiTOiT9XQtCGVughYO2Zfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="149261441"
Received: from gfine-mobl1.ger.corp.intel.com (HELO [10.245.152.36])
 ([10.245.152.36])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 06:02:04 -0700
Message-ID: <e02c9f2f-9643-428b-a6aa-71fbdf790169@linux.intel.com>
Date: Tue, 17 Jun 2025 16:01:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Fine, Gil" <gil.fine@linux.intel.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <20250525083843.287228-1-vitaly.lifshits@intel.com>
Content-Language: en-US
In-Reply-To: <20250525083843.287228-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750165326; x=1781701326;
 h=message-id:date:mime-version:from:subject:to:references:
 in-reply-to:content-transfer-encoding;
 bh=2KgQr8wVDp9J8gRT3JvEktoM6CSfy4zjKhZOvv9A1Ww=;
 b=VLvnugaVhvYzyPDkb43+bThd0TuHG/B2aZUCnyud0jzmzZji787IRh/N
 7bMrUx5Cvz7y/yByUFsmhF1vXJgWGGfu/s0G79gj/4APrMwKClnQQRLzx
 x6YlMBu/v6kfYpzMSratLiSHBv9nxiUJGsLgxq1MtT9/2wYIQA+GwVLDa
 OP6nIOaim1FAOkuWYp5YG6PkGYCGxPrdiBgZH8yvywxcfBLWY7uegbJs8
 I1IxZfkTJFmV8M617GpZryS8qIVWlG7ZWtMprXyADTM/rDZOa4UzKCWHt
 BalNkzGXMem1eHQqM+biaSW8xaY3/BNjnhvINMD3NPwXx3kRpCosjb7Ut
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VLvnugaV
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: set fixed
 clock frequency indication for Nahum 11 and Nahum 13
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


On 5/25/2025 11:38, Vitaly Lifshits wrote:
> On some systems with Nahum 11 and Nahum 13 the value of the XTAL clock in
> the software STRAP is incorrect. This causes the PTP timer to run at the
> wrong rate and can lead to synchronization issues.
>
> The STRAP value is configured by the system firmware, and a firmware
> update is not always possible. Since the XTAL clock on these systems
> always runs at 38.4MHz, the driver may ignore the STRAP and just set
> the correct value.
>
> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Reviewed-by: Gil Fine <gil.fine@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 14 +++++++++++---
>   drivers/net/ethernet/intel/e1000e/ptp.c    |  9 ++++++---
>   2 files changed, 17 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 8ebcb6a7d608..9d2098ed4969 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3534,9 +3534,6 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
>   	case e1000_pch_cnp:
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
> -	case e1000_pch_mtp:
> -	case e1000_pch_lnp:
> -	case e1000_pch_ptp:
>   	case e1000_pch_nvp:
>   		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
>   			/* Stable 24MHz frequency */
> @@ -3552,6 +3549,17 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
>   			adapter->cc.shift = shift;
>   		}
>   		break;
> +	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
> +	case e1000_pch_ptp:
> +			/* System firmware can misreport this value, so set it to a
> +			 * stable 38400KHz frequency.
> +			 */
> +			incperiod = INCPERIOD_38400KHZ;
> +			incvalue = INCVALUE_38400KHZ;
> +			shift = INCVALUE_SHIFT_38400KHZ;
> +			adapter->cc.shift = shift;
> +		break;
>   	case e1000_82574:
>   	case e1000_82583:
>   		/* Stable 25MHz frequency */
> diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
> index 89d57dd911dc..992aec8a4538 100644
> --- a/drivers/net/ethernet/intel/e1000e/ptp.c
> +++ b/drivers/net/ethernet/intel/e1000e/ptp.c
> @@ -295,15 +295,18 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
>   	case e1000_pch_cnp:
>   	case e1000_pch_tgp:
>   	case e1000_pch_adp:
> -	case e1000_pch_mtp:
> -	case e1000_pch_lnp:
> -	case e1000_pch_ptp:
>   	case e1000_pch_nvp:
>   		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)
>   			adapter->ptp_clock_info.max_adj = MAX_PPB_24MHZ;
>   		else
>   			adapter->ptp_clock_info.max_adj = MAX_PPB_38400KHZ;
>   		break;
> +	case e1000_pch_mtp:
> +	case e1000_pch_lnp:
> +	case e1000_pch_ptp:
> +		adapter->ptp_clock_info.max_adj = MAX_PPB_38400KHZ;
> +		break;
> +
>   	case e1000_82574:
>   	case e1000_82583:
>   		adapter->ptp_clock_info.max_adj = MAX_PPB_25MHZ;
