Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CErFEBMsdmkVMwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Jan 2026 15:43:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD20810B4
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Jan 2026 15:43:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BAF082333;
	Sun, 25 Jan 2026 14:43:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uANIE_shJkCs; Sun, 25 Jan 2026 14:43:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C463982342
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769352204;
	bh=C2WK0mkvZpCXDzBU2snOXa00Uvl+Vz80H4nPIHcgH/k=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SAgYXx307cTkNuiYaW6WI8Vzq906Wcs1EuyCNOlHAIgq/T76iXIj4aLEBzXJIgQp4
	 +uvs6UAjjjCFkfcFmIiq9DqV3VB5BR/rLyB2saVzMtVLmli57pfVDN6A/tZn6Lfuwv
	 ffEhrxXqBvki3m8J3+IQU5eaHiiJUBDD9y8XtedqGFyIsGfZNr/HaDe4VIWEhsOyyX
	 h2u4D4s7/Ekg2ya0hkOaytNyRobKnedJh3hbfLuyXiW00leqTtSXsa+KSf6PvCb3S0
	 VgH4XlCm9U73VyPxvwxwRGm+QNl4EoDo3sfUf7HpICRROfhcfHSmPfD5E5PTE65uek
	 YwByVTvrm91oA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C463982342;
	Sun, 25 Jan 2026 14:43:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A35661CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jan 2026 14:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 84FC140875
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jan 2026 14:43:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4mA3gOmo_XaF for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Jan 2026 14:43:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BFEBF40874
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFEBF40874
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BFEBF40874
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jan 2026 14:43:19 +0000 (UTC)
Received: from [10.0.48.90] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E70474C442FB37;
 Sun, 25 Jan 2026 15:42:48 +0100 (CET)
Message-ID: <5d5c9a52-e280-453f-8c30-17489e04546b@molgen.mpg.de>
Date: Sun, 25 Jan 2026 15:42:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, marmarek@invisiblethingslab.com,
 timo.teras@iki.fi, jeremie.wenger@edu.ge.ch
References: <20260125103613.1843742-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260125103613.1843742-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[mpg.de];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,m:marmarek@invisiblethingslab.com,m:timo.teras@iki.fi,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mpg.de:email,osuosl.org:dkim];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9DD20810B4
X-Rspamd-Action: no action

Dear Vitaly,


Am 25.01.26 um 11:36 schrieb Vitaly Lifshits:
> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> disabled K1 by default on Meteor Lake and newer systems due to packet
> loss observed on various platforms. However, disabling K1 caused an
> increase in power consumption.
> 
> To mitigate this, reconfigure the PLL clock gate value so that K1 can
> remain enabled without incurring the additional power consumption.

Please add how to measure the power consumption, and add the value 
before and after your change.

Also, please add how to check that K1 is enabled.

> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Fixes: 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")

The tags could be swapped.

> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 3 +++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 3 ---
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 13841daba399..4b42b28354d0 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1594,6 +1594,9 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
>   			phy_reg &= ~I217_PLL_CLOCK_GATE_MASK;
>   			if (speed == SPEED_100 || speed == SPEED_10)
>   				phy_reg |= 0x3E8;
> +			else if (hw->mac.type == e1000_pch_mtp ||
> +				 hw->mac.type == e1000_pch_ptp)
> +				phy_reg |= 0x1D5;

Please add a comment, what this magical value does. (Yes, it should have 
been added for the other lines too in the other places.)

>   			else
>   				phy_reg |= 0xFA;
>   			e1e_wphy_locked(hw, I217_PLL_CLOCK_GATE_REG, phy_reg);
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 82d1d5fe51d5..8f0eb822610b 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7755,9 +7755,6 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	/* init PTP hardware clock */
>   	e1000e_ptp_init(adapter);
>   
> -	if (hw->mac.type >= e1000_pch_mtp)
> -		adapter->flags2 |= FLAG2_DISABLE_K1;
> -
>   	/* reset the hardware with the new settings */
>   	e1000e_reset(adapter);
>   

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
