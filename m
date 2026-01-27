Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELGVDREqeWkIvwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 22:11:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 207769AA0B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 22:11:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE0A380D83;
	Tue, 27 Jan 2026 21:11:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tN-N9FVg8Yzn; Tue, 27 Jan 2026 21:11:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 505D081302
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769548301;
	bh=kVIvSfC3+m+e34IhEtXwExP0t5x+hgXK8yCDMo43BHk=;
	h=Date:To:References:From:Cc:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FbRgtX0kkPZabVDUYec/yc4UjqKA42LpZgyCmd+mlXbCdM9nRR2Dl3iBNOwX/9unW
	 I48ieCW3rwkfY8jbkLUhZIvKAF0yeSWv+gO2W+/Bax99oMiDf3cj0F0bCrBl6RueYV
	 gPnEC7cRNeL2W4oldO7NqYW9FCW3NtkHRAn7YfCwfzd3ME2Pw0pIC7+ABq5HgYEHTb
	 FOiiaZRpoLOh/DeWGWCew0VzkzYiB/3g+ArVqhQi55VXhqWq9Im3t1ktJ3usj9/pw3
	 N+qhoB+RQ47gqy3/KiIVl4qZaVu11jqi4BtTcZaZJDajEg3Xfnb/4I268Qu0tEnPB0
	 7pdNW4ImNMX9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 505D081302;
	Tue, 27 Jan 2026 21:11:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E9A65118
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 21:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D81B64064E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 21:11:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id msb7OJ-bygL4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 21:11:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 26E9A4046C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26E9A4046C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26E9A4046C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 21:11:37 +0000 (UTC)
Received: from [10.0.61.60] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8BF754C442F9A8;
 Tue, 27 Jan 2026 22:11:21 +0100 (CET)
Message-ID: <2dcbd793-0a5b-42c5-8adf-c1ea8cddee2f@molgen.mpg.de>
Date: Tue, 27 Jan 2026 22:11:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20260106141420.1585948-1-vitaly.lifshits@intel.com>
 <20260106141420.1585948-3-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org
In-Reply-To: <20260106141420.1585948-3-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mpg.de:email];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[mpg.de];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 207769AA0B
X-Rspamd-Action: no action

Dear Vitaly,


Thank you for your patch.

Am 06.01.26 um 15:14 schrieb Vitaly Lifshits:
> Panther Lake systems introduced an autonomous power gating feature for
> the integrated Gigabit Ethernet in shutdown state (S5) state. As part of
> it, the reset value of DPG_EN bit was changed to 1. Clear this bit after
> performing hardware reset to avoid errors such as Tx/Rx hangs, or packet
> loss/corruption.
> 
> Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM generation")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v4: fix commit message
> v3: rephrase a comment in the code
> v2: fix a typo in a macro
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 10 ++++++++++
>   2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
> index ba331899d186..d4a1041e456d 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -33,6 +33,7 @@
>   
>   /* Extended Device Control */
>   #define E1000_CTRL_EXT_LPCD  0x00000004     /* LCD Power Cycle Done */
> +#define E1000_CTRL_EXT_DPG_EN	0x00000008 /* Dynamic Power Gating Enable */
>   #define E1000_CTRL_EXT_SDP3_DATA 0x00000080 /* Value of SW Definable Pin 3 */
>   #define E1000_CTRL_EXT_FORCE_SMBUS 0x00000800 /* Force SMBus mode */
>   #define E1000_CTRL_EXT_EE_RST    0x00002000 /* Reinitialize from EEPROM */
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index eead80bba6f4..13841daba399 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -4932,6 +4932,16 @@ static s32 e1000_reset_hw_ich8lan(struct e1000_hw *hw)
>   	reg |= E1000_KABGTXD_BGSQLBIAS;
>   	ew32(KABGTXD, reg);
>   
> +	/*
> +	 * The hardware reset value of the DPG_EN bit is 1.
> +	 * Clear DPG_EN to prevent unexpected autonomous power gating.
> +	 */
> +	if (hw->mac.type >= e1000_pch_ptp) {
> +		reg = er32(CTRL_EXT);
> +		reg &= ~E1000_CTRL_EXT_DPG_EN;
> +		ew32(CTRL_EXT, reg);
> +	}
> +
>   	return 0;
>   }

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
