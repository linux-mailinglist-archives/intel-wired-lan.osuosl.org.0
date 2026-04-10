Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MKoKhPE2Gk4hwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 11:34:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D51DB3D4D05
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 11:34:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77D6A40D0C;
	Fri, 10 Apr 2026 09:34:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 76-a6CulZNLM; Fri, 10 Apr 2026 09:34:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C080B40D4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775813648;
	bh=sbM21vS9RG0xTNneVhbnDW2fnz9h7Hsz+sTJGjyoxSk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XaKBc1rhFjPbGV0RGpLNoEamRu8wQfJo2q1NvexGVi28eXUSOzNB2Aw/n7ZZgKjFe
	 JKPSwKZmyx23uiMXfhhmjh7XXKB+qcRTIHbSX/+KaRxwAZcJcm/Wm7jDnEoTHv6Mqp
	 uLuc17Xc8SZrZRr2b/H6CilQ8mosSiWzUPbY/mkLjAtVhq6wJVX++Sc4JKnlkfF+kD
	 ZSbehIPVjkd2Akc5RkL148n80XHd52reMzBdg/iiZ73n1K0aYdGlLJXOfosx3IG+Ww
	 2+RK3AW7wwfGOmMuCX00GNIZLr2nd3cE6wuvspn6hZL0LppHXkjOhGZ1/OdrD2vm3h
	 06IzKX4B8UlZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C080B40D4E;
	Fri, 10 Apr 2026 09:34:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 726F01F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6301C82C21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:34:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NAb4y-wXPC7e for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 09:34:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 36F9582BBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36F9582BBC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 36F9582BBC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:34:05 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-507-TaOvCxMUNt67n9uKpMtWIA-1; Fri, 10 Apr 2026 05:34:01 -0400
X-MC-Unique: TaOvCxMUNt67n9uKpMtWIA-1
X-Mimecast-MFC-AGG-ID: TaOvCxMUNt67n9uKpMtWIA_1775813640
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-488bf01961cso12240025e9.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 02:34:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775813640; x=1776418440;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=sbM21vS9RG0xTNneVhbnDW2fnz9h7Hsz+sTJGjyoxSk=;
 b=LByi6NPRoUSdciKR005HcTnC3oUwkIf6E+4MVnqZAoKo8GAD2tsKP7O4zm7NlZaaCn
 fa7z/Qax+2XcR/vozHfD6YENhFep0aArcLuJGaEVvfqdKPUG9bp5AS3beGfZRdcHGU5R
 ky1NKmxhWgnDSJyM61dyrGDLhkxAF8jUOh3czUAYewZR0C2y6y1dyJjReX9Gj5PyWBIS
 EfIbqeohJ8Qzy+uvv++1L4ekV2wAmxki0j3H3pmIG/jj8EAsQyTuDuTupvUaZGr3e0wn
 bsq9yy141Z2Y3yjErUKKDnMM72adOAjUzP8cxb61ebLFM/RsoGruzkmwfsSLbEVbSpL5
 UtOw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7LJRKQos0aHBGjWlSa9Ja0fRGYB50Klz6LkZKInX2D4RfGIIlHgrZZfQNKY/0nM8fK11t86QqGtMw19HsoTg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz5jcgbWpekS4ttjlKnYmz/SJ2Ul3NxCI6edRKPhl1/683wbkX+
 GclxF7toq158P2055kPp3VgHo9uVREVnKXQ3NfPURT1dE1OskEjpY6w2XDVkydseuBdBwKg8/ov
 MttvERNY4XwEAKKZxFc3E4BPR5sVwicwQTRFU6B69QIVMaL7OGWV8k6ekdqrfSR9ORddSkWI=
X-Gm-Gg: AeBDieuWyeoXikHq0PMiMNJJXxstnh/phY5Wb7DzQtA/+ag6FInxzXAvSIHeENwPI78
 k/+NGQF1cwkrCy5rzuSyG+WgmIf0kpIRSalnoZbssu98hR3ILc/SjBOHMwmsaS2wFqBeHjMr3uR
 Aped8mwCjfG/VODva38cA46YKYITy0iKz+QtKxmLuY+8L4zxQEMPpfQUtF0cw3KrQMcN3BNi2TQ
 3AIkYx0kXlemhSeRQBYmKY/9EBpzemgStoX93b+nCbRHwNWE0uCxJex7sBGQzOq271rRO0vkBwp
 kaLqIujWXNIpRxIL3d9bTe+JSlRH3LYvH6l+StYiS+vrLYTtoAZQdsG8bWD6+ctMlHcSTZSah82
 Glfp7BGfDhH+cxTqyM2cK
X-Received: by 2002:a05:600c:45cd:b0:488:a82f:bb96 with SMTP id
 5b1f17b1804b1-488d68c7fc2mr24692075e9.29.1775813640029; 
 Fri, 10 Apr 2026 02:34:00 -0700 (PDT)
X-Received: by 2002:a05:600c:45cd:b0:488:a82f:bb96 with SMTP id
 5b1f17b1804b1-488d68c7fc2mr24691485e9.29.1775813639482; 
 Fri, 10 Apr 2026 02:33:59 -0700 (PDT)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-488d67b4a46sm34427405e9.4.2026.04.10.02.33.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2026 02:33:57 -0700 (PDT)
Message-ID: <7768956d-f1d6-496b-93ef-10525852e95e@redhat.com>
Date: Fri, 10 Apr 2026 11:33:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
 <20260408-jk-even-more-e825c-fixes-v1-2-b959da91a81f@intel.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-2-b959da91a81f@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: mJxu5BwPw1ez236W0vWTmGaUJ05h2i-4aybiLpVYZZw_1775813640
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775813645;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sbM21vS9RG0xTNneVhbnDW2fnz9h7Hsz+sTJGjyoxSk=;
 b=TlcWGWfwz+no9NCzIe9ufzOcANWOIZJj6LLqonnxYNQlhiCJHofDQsd2vTVyn/iv7VnZ9x
 qjWmViIuF/s6Tub1PJ3+YDJ4kz/FKUTFH5t0KbkX4vTOYSo60BWhc9w+ka3fqF/lUnyYra
 I/XXCEVr5jGHrhpMtaRWE5UbmferZtE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=TlcWGWfw
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/4] ice: perform PHY soft
 reset for E825C ports at initialization
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D51DB3D4D05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/8/26 20:46, Jacob Keller wrote:
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
> In some cases the PHY timestamp block of the E825C can become stuck. This
> is known to occur if the software writes 0 to the Tx timestamp threshold,
> and with older versions of the ice driver the threshold configuration is
> buggy and can race in such that hardware briefly operates with a zero
> threshold enabled. There are no other known ways to trigger this behavior,
> but once it occurs, the hardware is not recovered by normal reset, a driver
> reload, or even a warm power cycle of the system. A cold power cycle is
> sufficient to recover hardware, but this is extremely invasive and can
> result in significant downtime on customer deployments.
>
> The PHY for each port has a timestamping block which has its own reset
> functionality accessible by programming the PHY_REG_GLOBAL register.
> Writing to the PHY_REG_GLOBAL_SOFT_RESET_BIT triggers the hardware to
> perform a complete reset of the timestamping block of the PHY. This
> includes clearing the timestamp status for the port, clearing all
> outstanding timestamps in the memory bank, and resetting the PHY timer.
>
> The new ice_ptp_phy_soft_reset_eth56g() function toggles the
> PHY_REG_GLOBAL soft reset bit with the required delays, ensuring the
> PHY is properly reinitialized without requiring a full device reset.
> The sequence clears the reset bit, asserts it, then clears it again,
> with short waits between transitions to allow hardware stabilization.
>
> Call this function in the new ice_ptp_init_phc_e825c(), implementing the
> E825C device specific variant of the ice_ptp_init_phc(). Note that if
> ice_ptp_init_phc() fails, PTP functionality may be disabled, but the driver
> will still load to allow basic functionality to continue.
>
> This causes the clock owning PF driver to perform a PHY soft reset for
> every port during initialization. This ensures the driver begins life in a
> known functional state regardless of how it was previously programmed.
>
> This ensures that we properly reconfigure the hardware after a device reset
> or when loading the driver, even if it was previously misconfigured with an
> out-of-date or modified driver.
>
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
> Signed-off-by: Timothy Miskell <timothy.miskell@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  4 ++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 90 ++++++++++++++++++++++++++++-
>   2 files changed, 93 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 5896b346e579..9d7acc7eb2ce 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -374,6 +374,7 @@ int ice_stop_phy_timer_eth56g(struct ice_hw *hw, u8 port, bool soft_reset);
>   int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port);
>   int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold);
>   int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
> +int ice_ptp_phy_soft_reset_eth56g(struct ice_hw *hw, u8 port);
>   
>   #define ICE_ETH56G_NOMINAL_INCVAL	0x140000000ULL
>   #define ICE_ETH56G_NOMINAL_PCS_REF_TUS	0x100000000ULL
> @@ -676,6 +677,9 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
>   #define ICE_P0_GNSS_PRSNT_N	BIT(4)
>   
>   /* ETH56G PHY register addresses */
> +#define PHY_REG_GLOBAL			0x0
> +#define PHY_REG_GLOBAL_SOFT_RESET_M	BIT(11)
> +
>   /* Timestamp PHY incval registers */
>   #define PHY_REG_TIMETUS_L		0x8
>   #define PHY_REG_TIMETUS_U		0xC
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 67775beb9449..441b5f10e4bb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -377,6 +377,31 @@ static void ice_ptp_cfg_sync_delay(const struct ice_hw *hw, u32 delay)
>    * The following functions operate on devices with the ETH 56G PHY.
>    */
>   
> +/**
> + * ice_ptp_init_phc_e825c - Perform E825C specific PHC initialization
> + * @hw: pointer to HW struct
> + *
> + * Perform E825C-specific PTP hardware clock initialization steps.
> + *
> + * Return: 0 on success, or a negative error value on failure.
> + */
> +static int ice_ptp_init_phc_e825c(struct ice_hw *hw)
> +{
> +	int err;
> +
> +	/* Soft reset all ports, to ensure everything is at a clean state */
> +	for (int port = 0; port < hw->ptp.num_lports; port++) {
> +		err = ice_ptp_phy_soft_reset_eth56g(hw, port);
> +		if (err) {
> +			ice_debug(hw, ICE_DBG_PTP, "Failed to soft reset port %d, err %d\n",
> +				  port, err);
> +			return err;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>   /**
>    * ice_ptp_get_dest_dev_e825 - get destination PHY for given port number
>    * @hw: pointer to the HW struct
> @@ -2179,6 +2204,69 @@ int ice_ptp_read_tx_hwtstamp_status_eth56g(struct ice_hw *hw, u32 *ts_status)
>   	return 0;
>   }
>   
> +/**
> + * ice_ptp_phy_soft_reset_eth56g - Perform a PHY soft reset on ETH56G
> + * @hw: pointer to the HW structure
> + * @port: PHY port number
> + *
> + * Trigger a soft reset of the ETH56G PHY by toggling the soft reset
> + * bit in the PHY global register. The reset sequence consists of:
> + *   1. Clearing the soft reset bit
> + *   2. Asserting the soft reset bit
> + *   3. Clearing the soft reset bit again
> + *
> + * Short delays are inserted between each step to allow the hardware
> + * to settle. This provides a controlled way to reinitialize the PHY
> + * without requiring a full device reset.
> + *
> + * Return: 0 on success, or a negative error code on failure when
> + *         reading or writing the PHY register.
> + */
> +int ice_ptp_phy_soft_reset_eth56g(struct ice_hw *hw, u8 port)
> +{
> +	u32 global_val;
> +	int err;
> +
> +	err = ice_read_ptp_reg_eth56g(hw, port, PHY_REG_GLOBAL, &global_val);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read PHY_REG_GLOBAL for port %d, err %d\n",
> +			  port, err);
> +		return err;
> +	}
> +
> +	global_val &= ~PHY_REG_GLOBAL_SOFT_RESET_M;
> +	ice_debug(hw, ICE_DBG_PTP, "Clearing soft reset bit for port %d, val: 0x%x\n",
> +		  port, global_val);
> +	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_GLOBAL, global_val);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to write PHY_REG_GLOBAL for port %d, err %d\n",
> +			  port, err);
> +		return err;
> +	}
> +
> +	usleep_range(5000, 6000);
> +
> +	global_val |= PHY_REG_GLOBAL_SOFT_RESET_M;
> +	ice_debug(hw, ICE_DBG_PTP, "Set soft reset bit for port %d, val: 0x%x\n",
> +		  port, global_val);
> +	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_GLOBAL, global_val);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to write PHY_REG_GLOBAL for port %d, err %d\n",
> +			  port, err);
> +		return err;
> +	}
> +	usleep_range(5000, 6000);
> +
> +	global_val &= ~PHY_REG_GLOBAL_SOFT_RESET_M;
> +	ice_debug(hw, ICE_DBG_PTP, "Clear soft reset bit for port %d, val: 0x%x\n",
> +		  port, global_val);
> +	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_GLOBAL, global_val);
> +	if (err)
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to write PHY_REG_GLOBAL for port %d, err %d\n",
> +			  port, err);
> +	return err;
> +}
> +
>   /**
>    * ice_get_phy_tx_tstamp_ready_eth56g - Read the Tx memory status register
>    * @hw: pointer to the HW struct
> @@ -5591,7 +5679,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
>   	case ICE_MAC_GENERIC:
>   		return ice_ptp_init_phc_e82x(hw);
>   	case ICE_MAC_GENERIC_3K_E825:
> -		return 0;
> +		return ice_ptp_init_phc_e825c(hw);
>   	default:
>   		return -EOPNOTSUPP;
>   	}
>
Reviewed-by: Petr Oros <poros@redhat.com>

