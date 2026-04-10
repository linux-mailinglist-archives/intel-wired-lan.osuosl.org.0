Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gA1vHDDE2Gk4hwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 11:34:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0C33D4D79
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 11:34:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4D9040D78;
	Fri, 10 Apr 2026 09:34:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AheAjsib-nkA; Fri, 10 Apr 2026 09:34:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AE6F40D4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775813678;
	bh=qOOTcFGxnrzrTtnktwvjMFoVHaeGEwhYa6Pm50725v8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PUehCuqbKWZV9NekhvE6wWYQRwdnGUWu7gwh18hELM/GIbsvwxMYMCHR6RIhp5umQ
	 BxPBDo9NO/030LemX6fklOI/3K0Grv9Z4Le0yxN5rnx2yc589XQoEaCPUlGxpJ2iCk
	 r89hZt/C4k5dGT6Dv8Cn/kaYA46unpHEJbfgMtutwA3YaFRJfPDW55OTgi5qxBH2nP
	 Lyv8qnxzVUdG7K4MnqB2NRR9PebO5idQfa0yJgAJ0XEJk+hdampYZ4AlBsMd913XW4
	 9xlAiR8QqOBu3P279OQMkP6FRuIhyx/CFQO6EtTf8dbwZV4ok38mW+VT/NJ546rLBY
	 ix0eWkk+hLEXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AE6F40D4E;
	Fri, 10 Apr 2026 09:34:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 49E621F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:34:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FEB340CF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:34:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lf_7eUuH7eHK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 09:34:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2612940CEB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2612940CEB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2612940CEB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:34:34 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-61-QTRP7SOJPZeRs7Zm9DQZOQ-1; Fri, 10 Apr 2026 05:34:33 -0400
X-MC-Unique: QTRP7SOJPZeRs7Zm9DQZOQ-1
X-Mimecast-MFC-AGG-ID: QTRP7SOJPZeRs7Zm9DQZOQ_1775813672
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-43cfb72377bso1505713f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 02:34:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775813670; x=1776418470;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qOOTcFGxnrzrTtnktwvjMFoVHaeGEwhYa6Pm50725v8=;
 b=m4Fn9n56oUbKj1lmDa4L7zHOb1joCi3pg8gHJfQhFUB0Ztq6r8+aA3Mv3lJSF/4JNN
 uxjfv5YL7KeXsGWvu+ou2u2T7AMjvnPP4f/NNHLzLG8NdetNO1XkcODjcXveM0Ozmdwb
 VTD3dPJd1KAxQzVsenTA3igiQ7OzlYFD9sM8xpH3qsmHmdJmXUo30LYC2J6FQrGjTN1r
 OVsaomQp5PyHX8eaUKOd5315PUkAz+jXfGChQ14Z3jtVHjf81zCdbmmPZ1lw71tjaNJ8
 tQh2VA/fOPfOT8ufqElAoD5RIXscJ0aXkSPFibr/ZzJxlAeVUEQNmya38Kktz3Nst+nB
 V5UQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV35DKAhQGp7YHZtGUWRBI35QAVoND1t8fuMv0EoYYlhgjFiBg/9ofAPN0MIZzuDc6+jbqsD1c8plBP4Vb9T30=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwjNN/ZYZ8wi8y4cnDT/b8CVqMxuvvBzlPdWinVM0FR5XTkPf4p
 COZjqTjfWf02DWnXpOmoasjrbbdn+j3AmRYZcmpPDkxw45UCoT9G1UfSiefnEMvJyyK907LygPq
 K8AmR1jLCkiD8GmPgCd16wLn2+sEoE2bARqPmBU2C8f3xcdLMxAPFUuvLvbkTovtAIj+va3kJ1y
 /qD2w=
X-Gm-Gg: AeBDiev/AvrO8UiNGB3/B5cjwtAS9286BAiQwiS8VJoUMNhtMgagr4iMpuVWtpZz028
 OF2G1cPx3q1XPIOXFnJX8ODZmu9yjltAE8Q375xXvP+QhygdDeQwxOMsKAe4YA/XpJGVMsVeGkL
 7vuBQZUGHYzlWIaldUe1CUGzf72nmYRh64a74r/HOO+CJlqVOBRPvh3uFKMYplpCXh/B9J4PIND
 hu87PzEjSPhyFNBDJbqVicFk1lLIt/KsNsBWDT5zBN/mc5MMd8BgkMRY8rJHhpBYvl998QiBNOE
 oLam8YuUlal+k8b9UMk3H7jdnUfvmhIP8JdEMKbU5RLDPKIvPpXnfYF400+TsTRpYuGrd9hHdhx
 snx1RRdwnKulCpq0LjAh7
X-Received: by 2002:a5d:584b:0:b0:439:bdba:56be with SMTP id
 ffacd0b85a97d-43d64255118mr3234533f8f.10.1775813669886; 
 Fri, 10 Apr 2026 02:34:29 -0700 (PDT)
X-Received: by 2002:a5d:584b:0:b0:439:bdba:56be with SMTP id
 ffacd0b85a97d-43d64255118mr3234492f8f.10.1775813669361; 
 Fri, 10 Apr 2026 02:34:29 -0700 (PDT)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d63de2a74sm6481641f8f.3.2026.04.10.02.34.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2026 02:34:28 -0700 (PDT)
Message-ID: <24a12da3-00f5-46ff-8719-b7a8654dd460@redhat.com>
Date: Fri, 10 Apr 2026 11:34:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
 <20260408-jk-even-more-e825c-fixes-v1-4-b959da91a81f@intel.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-4-b959da91a81f@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: b83CEW9hdsvX348CakjhjAcNaJHEf2XdLM-Ex7BxB1c_1775813672
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775813674;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qOOTcFGxnrzrTtnktwvjMFoVHaeGEwhYa6Pm50725v8=;
 b=d7nBE52ktF+Zmgzkm3YfvAK2iUA2WOvFCFWeOvkR5JWvD6W3Ion7l/Z1EQlW8wnaJl9rZ/
 +EkJrkMFxjmn6q7SfDY7rEGFmpV7FSLqhaPU9cnFO06uychMd8NuKNqlaATSqfxdCbkoSK
 vKptch5gL6XiREn3p7M5gWoVEWO1GG4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=d7nBE52k
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/4] ice: fix
 ice_ptp_read_tx_hwtstamp_status_eth56g
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
X-Rspamd-Queue-Id: 1C0C33D4D79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/8/26 20:46, Jacob Keller wrote:
> The ice_ptp_read_tx_hwtstamp_status_eth56g function calls
> ice_read_phy_eth56g with a PHY index. However the function actually expects
> a port index. This causes the function to read the wrong PHY_PTP_INT_STATUS
> registers, and effectively makes the status wrong for the second set of
> ports from 4 to 7.
>
> The ice_read_phy_eth56g function uses the provided port index to determine
> which PHY device to read. We could refactor the entire chain to take a PHY
> index, but this would impact many code sites. Instead, multiply the PHY
> index by the number of ports, so that we read from the first port of each
> PHY.
>
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 64ad5ed5c688..672218e5d1f9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -2219,13 +2219,19 @@ int ice_ptp_read_tx_hwtstamp_status_eth56g(struct ice_hw *hw, u32 *ts_status)
>   	*ts_status = 0;
>   
>   	for (phy = 0; phy < params->num_phys; phy++) {
> +		u8 port;
>   		int err;
>   
> -		err = ice_read_phy_eth56g(hw, phy, PHY_PTP_INT_STATUS, &status);
> +		/* ice_read_phy_eth56g expects a port index, so use the first
> +		 * port of the PHY
> +		 */
> +		port = phy * hw->ptp.ports_per_phy;
> +
> +		err = ice_read_phy_eth56g(hw, port, PHY_PTP_INT_STATUS, &status);
>   		if (err)
>   			return err;
>   
> -		*ts_status |= (status & mask) << (phy * hw->ptp.ports_per_phy);
> +		*ts_status |= (status & mask) << port;
>   	}
>   
>   	ice_debug(hw, ICE_DBG_PTP, "PHY interrupt err: %x\n", *ts_status);
Reviewed-by: Petr Oros <poros@redhat.com>

