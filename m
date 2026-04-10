Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KG3EAO/D2Gk4hwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 11:33:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC483D4CBF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 11:33:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92EA840D0C;
	Fri, 10 Apr 2026 09:33:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ThRr03e6pBof; Fri, 10 Apr 2026 09:33:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC22740D4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775813611;
	bh=7B/UUfZnQvrc2YpSzdcD/g7Oh2oh/jVTzJlkculeTRk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=okM18uYR0aJQ6IvDmJYEUDuPOlPIvO0N+zvj5ITEKaE3bPKc17U26mW9aZ7aBQi6o
	 WCjfo1D5ORtkZCO95lLVB0InxybtlQk481OLtKRNAamWogJMrI34CgvS7QMYc0Z3ZM
	 lk37bA5iz8GstVErB1XO3cPKeqStpoRyvebOdFGLpaqapcRH2KM+fpmD5l+fs6s8yi
	 pHOci2CEGywWGF8C7ug/0POdwHaNks/hrNlwJQPV7WEDtLez/2UJZ4/QE59X8yqk96
	 Q1iRDyej8v9XTx9dH0/PCbOET8yHq85Z6A8wxQ900LnHzilRax7DMku95J/sR35uAU
	 DYenDZxcYeF6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC22740D4E;
	Fri, 10 Apr 2026 09:33:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D617E237
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C82CF40CEB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2gmMFl9FcY43 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 09:33:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A773640CC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A773640CC8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A773640CC8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:33:27 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-68-7lTZv_f0O_WXbOyrURm0_A-1; Fri, 10 Apr 2026 05:33:25 -0400
X-MC-Unique: 7lTZv_f0O_WXbOyrURm0_A-1
X-Mimecast-MFC-AGG-ID: 7lTZv_f0O_WXbOyrURm0_A_1775813604
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-43d03bad787so1671015f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 02:33:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775813604; x=1776418404;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7B/UUfZnQvrc2YpSzdcD/g7Oh2oh/jVTzJlkculeTRk=;
 b=kOlIj8TuFitiXHLxJc4OiJ6kqNLWmM2TnEeef/zNav3z5bfiu1LybbA6Ifo6/ijoDd
 ubsK09qNHGXKt2oCIL8bFgoskFgUKUsJuG0W6MLjD4PcmEP9weFHAp7++AcZXN9lPeD+
 7SAdQbfSIceKuES8Dq3jB67oYnt4hHWdOKN8N/WHiLh4c9ccIlxFtp1Z6uBGxuXFOlP8
 FZ1nsYN3LbPNx5YIYwHdNSOYHMPZbNNZvC0gtbmhuj4LLiRJVSEZcs4zPfANreOvegKz
 /gXi0L+gHoHmeqjIXkL8TFTrR9QutW4Oc4DdONOyQUdOGui+0WtLkFjbzPQlGGGTfQMJ
 SDMg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFTYubwhaZ3q/Wz+JXl9BDKzjcL0X4akxJlMamdcEtcuA/CiyNkExquojlYn7whZ8PSvTBPjsuF7RzUT96ij0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzcrd6QEY1Us827qHr4Rroio4KQ8StO5zlCI3oRspjcpieb7Ni3
 I6pSqzRnmO3X1Q97n7QC17wkZpW5HpA51LMKOMGxRV5Lam1iBUH4Tv2XCoDCTaUY0fqR6QUttv5
 7IxcOMe0i6GQ3dqe1TDklfyslmOzE+iQ7Njhe2Fk84epOjgQ7kXWHyq+59ye13kjonDDiKeE=
X-Gm-Gg: AeBDievic8WRwOFpyd3dXtpchAA/l6Nncref5YW0dTsSQ3PMlBokgwDdSKOyD8WY+T0
 yEnB195oAHAbRnLfb6jzq1KEEiz7ukHKq1IfX6jB4ezKZ2L9tCmwprl14JRAryieTLM9jYLJ6mi
 gzEdQ7Yvo13/ikIAYqtRn7KgeLkAYDtLXAGv+d1oaQK5wp2VAhnQhoiLucGPyy8/d2at7soDYTP
 b5pLnMHlRH08iZg+9egV383S52ObrneVpEpDxTvhhKXXMbeptGzwpR7Nuf3Z2plfEI8ACNtLcFG
 9e6f/6+RugxJ1uGfRzQCrGzK98y12ZcwADOZkU1gWv+lElPi7jHyBsvpiJ04gME8aBQ6ItWbroX
 taMhtvSLqxEHj+SkJcyPs
X-Received: by 2002:a05:6000:26c4:b0:43c:f1da:488a with SMTP id
 ffacd0b85a97d-43d642a4d54mr3403320f8f.13.1775813603832; 
 Fri, 10 Apr 2026 02:33:23 -0700 (PDT)
X-Received: by 2002:a05:6000:26c4:b0:43c:f1da:488a with SMTP id
 ffacd0b85a97d-43d642a4d54mr3403266f8f.13.1775813603236; 
 Fri, 10 Apr 2026 02:33:23 -0700 (PDT)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d63e468c5sm6393551f8f.20.2026.04.10.02.33.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2026 02:33:22 -0700 (PDT)
Message-ID: <515bb9be-5623-4589-ba5c-d8e5e8a4f10c@redhat.com>
Date: Fri, 10 Apr 2026 11:33:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
 <20260408-jk-even-more-e825c-fixes-v1-1-b959da91a81f@intel.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-1-b959da91a81f@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vBkJpYCvldWTbvg2fri5tom02JHPfI4rNVgC1ZXwibY_1775813604
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775813606;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7B/UUfZnQvrc2YpSzdcD/g7Oh2oh/jVTzJlkculeTRk=;
 b=T0/66fIpRHrsdn7f3i8LnGhqNcOXMPfEXOyaoV1AVOWeKsrWNq2zUQPt1pV/RBSQVTNJ7/
 D/bHZA/FxaaLw/BzW9RjILjWXg7ycMqv+Em0TLeKjn1vxCY4x5WSDZDBQcvM0XSxdoxfYG
 xK9LRtydYLkgkeAQYjiKkktIWubilF4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=T0/66fIp
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/4] ice: fix timestamp
 interrupt configuration for E825C
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
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
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
X-Rspamd-Queue-Id: 2CC483D4CBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/8/26 20:46, Jacob Keller wrote:
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
> The E825C ice_phy_cfg_intr_eth56g() function is responsible for programming
> the PHY interrupt for a given port. This function writes to the
> PHY_REG_TS_INT_CONFIG register of the port. The register is responsible for
> configuring whether the port interrupt logic is enabled, as well as
> programming the threshold of waiting timestamps that will trigger an
> interrupt from this port.
>
> This threshold value must not be programmed to zero while the interrupt is
> enabled. Doing so puts the port in a misconfigured state where the PHY
> timestamp interrupt for the quad of connected ports will become stuck.
>
> This occurs, because a threshold of zero results in the timestamp interrupt
> status for the port becoming stuck high. The four ports in the connected
> quad have their timestamp status indicators muxed together. A new interrupt
> cannot be generated until the timestamp status indicators return low for
> all four ports.
>
> Normally, the timestamp status for a port will clear once there are fewer
> timestamps in that ports timestamp memory bank than the threshold. A
> threshold of zero makes this impossible, so the timestamp status for the
> port does not clear.
>
> The ice driver never intentionally programs the threshold to zero, indeed
> the driver always programs it to a value of 1, intending to get an
> interrupt immediately as soon as even a single packet is waiting for a
> timestamp.
>
> However, there is a subtle flaw in the programming logic in the
> ice_phy_cfg_intr_eth56g() function. Due to the way that the hardware
> handles enabling the PHY interrupt. If the threshold value is modified at
> the same time as the interrupt is enabled, the HW PHY state machine might
> enable the interrupt before the new threshold value is actually updated.
> This leaves a potential race condition caused by the hardware logic where
> a PHY timestamp interrupt might be triggered before the non-zero threshold
> is written, resulting in the PHY timestamp logic becoming stuck.
>
> Once the PHY timestamp status is stuck high, it will remain stuck even
> after attempting to reprogram the PHY block by changing its threshold or
> disabling the interrupt. Even a typical PF or CORE reset will not reset the
> particular block of the PHY that becomes stuck. Even a warm power cycle is
> not guaranteed to cause the PHY block to reset, and a cold power cycle is
> required.
>
> Prevent this by always writing the PHY_REG_TS_INT_CONFIG in two stages.
> First write the threshold value with the interrupt disabled, and only write
> the enable bit after the threshold has been programmed. When disabling the
> interrupt, leave the threshold unchanged. Additionally, re-read the
> register after writing it to guarantee that the write to the PHY has been
> flushed upon exit of the function.
>
> While we're modifying this function implementation, explicitly reject
> programming a threshold of 0 when enabling the interrupt. No caller does
> this today, but the consequences of doing so are significant. An explicit
> rejection in the code makes this clear.
>
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 36 +++++++++++++++++++++++++----
>   1 file changed, 32 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index e3db252c3918..67775beb9449 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -1847,6 +1847,8 @@ static int ice_phy_cfg_mac_eth56g(struct ice_hw *hw, u8 port)
>    * @ena: enable or disable interrupt
>    * @threshold: interrupt threshold
>    *
> + * The threshold cannot be 0 while the interrupt is enabled.
> + *
>    * Configure TX timestamp interrupt for the specified port
>    *
>    * Return:
> @@ -1858,19 +1860,45 @@ int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold)
>   	int err;
>   	u32 val;
>   
> +	if (ena && !threshold)
> +		return -EINVAL;
> +
>   	err = ice_read_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, &val);
>   	if (err)
>   		return err;
>   
> +	val &= ~PHY_TS_INT_CONFIG_ENA_M;
>   	if (ena) {
> -		val |= PHY_TS_INT_CONFIG_ENA_M;
>   		val &= ~PHY_TS_INT_CONFIG_THRESHOLD_M;
>   		val |= FIELD_PREP(PHY_TS_INT_CONFIG_THRESHOLD_M, threshold);
> -	} else {
> -		val &= ~PHY_TS_INT_CONFIG_ENA_M;
> +		err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG,
> +					       val);
> +		if (err) {
> +			ice_debug(hw, ICE_DBG_PTP,
> +				  "Failed to update 'threshold' PHY_REG_TS_INT_CONFIG port=%u ena=%u threshold=%u\n",
> +				  port, !!ena, threshold);
> +			return err;
> +		}
> +		val |= PHY_TS_INT_CONFIG_ENA_M;
>   	}
>   
> -	return ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, val);
> +	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, val);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP,
> +			  "Failed to update 'ena' PHY_REG_TS_INT_CONFIG port=%u ena=%u threshold=%u\n",
> +			  port, !!ena, threshold);
> +		return err;
> +	}
> +
> +	err = ice_read_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, &val);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP,
> +			  "Failed to read PHY_REG_TS_INT_CONFIG port=%u ena=%u threshold=%u\n",
> +			  port, !!ena, threshold);
> +		return err;
> +	}
> +
> +	return 0;
>   }
>   
>   /**
>
Reviewed-by: Petr Oros <poros@redhat.com>


