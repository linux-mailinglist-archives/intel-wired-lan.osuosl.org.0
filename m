Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE7494DAAB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Aug 2024 06:22:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 196EB409FB;
	Sat, 10 Aug 2024 04:22:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IOfwLeJdNkcy; Sat, 10 Aug 2024 04:22:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 828C440C53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723263739;
	bh=Jf3RS2/Tk7PpjhihqNaoLaw4gyb3lG7yNJ2eHZX5cEc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=achnB39hB4buti/k3M9D+VLRpA0MxWP6DGfpY2civXcgcRTb1ENgLNLsRNDzhChF/
	 JIqX3DMV0DYp1OCPtFVnVhOb5+EN3iDX7G0u2SD1igq7fUMxuPKCfPFSIhJZNpmTHW
	 fCG8a7c0cke2h8Fyuh7xPmzNJJYVkig39MZdHKmt3EI68UWy2fNhLMrxC4mnZHpLhb
	 gXK7oNzm6QAnyqqzXqH6finnPNA5ahksg7RwS0jAnWL21LM825FnTa/PhEKR7uCLbw
	 HNa3CLPQ73zwmYoSKxlcgOljSLoqG/q67H3OlKaDmFvlxYyNR/A1A94wFcAZQlzKMJ
	 cKdpNA1NYsbWA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 828C440C53;
	Sat, 10 Aug 2024 04:22:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 28BED1BF285
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 04:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15F0F80FFE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 04:22:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CVKpSIualxNa for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Aug 2024 04:22:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A5FDF81004
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5FDF81004
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A5FDF81004
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 04:22:14 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af7d5.dynamic.kabel-deutschland.de
 [95.90.247.213])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B600A61E5FE05;
 Sat, 10 Aug 2024 06:21:18 +0200 (CEST)
Message-ID: <c0782e49-dc5b-4c04-8122-46e81ab98c23@molgen.mpg.de>
Date: Sat, 10 Aug 2024 06:21:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20240810002302.2054816-1-vinicius.gomes@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240810002302.2054816-1-vinicius.gomes@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix not clearing
 TimeSync interrupts for 82580
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
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 kurt@linutronix.de, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 daiweili@gmail.com, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vinicius,


Thank you for the patch.


Am 10.08.24 um 02:23 schrieb Vinicius Costa Gomes:
> It was reported that 82580 NICs have a hardware bug that makes it
> necessary to write into the TSICR (TimeSync Interrupt Cause) register
> to clear it.

Were you able to verify that report by checking against some errata? Is 
Intel aware of the problem?

> Add a conditional so only for 82580 we write into the TSICR register,
> so we don't risk losing events for other models.
> 
> This (partially) reverts commit ee14cc9ea19b ("igb: Fix missing time sync events").
> 
> Fixes: ee14cc9ea19b ("igb: Fix missing time sync events")
> Reported-by: Daiwei Li <daiweili@gmail.com>
> Closes: https://lore.kernel.org/intel-wired-lan/CAN0jFd1kO0MMtOh8N2Ztxn6f7vvDKp2h507sMryobkBKe=xk=w@mail.gmail.com/
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> 
> @Daiwei Li, I don't have a 82580 handy, please confirm that the patch
> fixes the issue you are having.

Please also add a description of the test case, and maybe the PCI vendor 
and device code of your network device.

>   drivers/net/ethernet/intel/igb/igb_main.c | 27 ++++++++++++++++++-----
>   1 file changed, 22 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 11be39f435f3..edb34f67ae03 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -6960,31 +6960,48 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
>   static void igb_tsync_interrupt(struct igb_adapter *adapter)
>   {
>   	struct e1000_hw *hw = &adapter->hw;
> -	u32 tsicr = rd32(E1000_TSICR);
> +	u32 ack = 0, tsicr = rd32(E1000_TSICR);
>   	struct ptp_clock_event event;
>   
>   	if (tsicr & TSINTR_SYS_WRAP) {
>   		event.type = PTP_CLOCK_PPS;
>   		if (adapter->ptp_caps.pps)
>   			ptp_clock_event(adapter->ptp_clock, &event);
> +		ack |= TSINTR_SYS_WRAP;
>   	}
>   
>   	if (tsicr & E1000_TSICR_TXTS) {
>   		/* retrieve hardware timestamp */
>   		schedule_work(&adapter->ptp_tx_work);
> +		ack |= E1000_TSICR_TXTS;
>   	}
>   
> -	if (tsicr & TSINTR_TT0)
> +	if (tsicr & TSINTR_TT0) {
>   		igb_perout(adapter, 0);
> +		ack |= TSINTR_TT0;
> +	}
>   
> -	if (tsicr & TSINTR_TT1)
> +	if (tsicr & TSINTR_TT1) {
>   		igb_perout(adapter, 1);
> +		ack |= TSINTR_TT1;
> +	}
>   
> -	if (tsicr & TSINTR_AUTT0)
> +	if (tsicr & TSINTR_AUTT0) {
>   		igb_extts(adapter, 0);
> +		ack |= TSINTR_AUTT0;
> +	}
>   
> -	if (tsicr & TSINTR_AUTT1)
> +	if (tsicr & TSINTR_AUTT1) {
>   		igb_extts(adapter, 1);
> +		ack |= TSINTR_AUTT1;
> +	}
> +
> +	if (hw->mac.type == e1000_82580) {
> +		/* 82580 has a hardware bug that requires a explicit

a*n*

> +		 * write to clear the TimeSync interrupt cause.
> +		 */
> +		wr32(E1000_TSICR, ack);
> +	}

Is there a nicer way to write this, so `ack` is only assigned in case 
for the 82580?

>   }
>   
>   static irqreturn_t igb_msix_other(int irq, void *data)


Kind regards,

Paul
