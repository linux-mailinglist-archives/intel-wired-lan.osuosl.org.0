Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2150DA2ABA8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 15:40:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5AC78112C;
	Thu,  6 Feb 2025 14:40:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5H17vUiX_m_r; Thu,  6 Feb 2025 14:40:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A281281138
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738852826;
	bh=5eeRjK/mgCvPKNBA81SRCh80n54ZajamP6nnGJ7Obfo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0Ps8YAhrBIbHc6ZlRQjEtZIGj7YubNUe5JJuhRqoBWIDnOPt7wWx6YkwZ6D38Bk/s
	 55iR7nlgnw+9UO60mjOeudfkhcTP+bXruGphmMG/45jXjCnl8753PbtJuFckWnesbK
	 CoiwS9Sjt+5+kl1ONcrVDTDv4GLw+YLOdqxpnXxisPYoXqQJ/FIjfrGrcUURRDZg/D
	 p8u4cXz6U8j3Wx99NQcv1jmMlWC20v5oED4RzWjNDPJI77KmvGnuMYl7bH6aj9ee/a
	 XA6RPqc5vZvtFm9g2fegUDhxAp4L7MY7f36qk5rGBiNV7EB4nWT/yyyCgFefLH4jsJ
	 YJZIE86OAMxoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A281281138;
	Thu,  6 Feb 2025 14:40:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C823CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 14:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A59C414C3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 14:40:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z7bGXO19oSOu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 14:40:22 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 64F48414C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64F48414C5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64F48414C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 14:40:22 +0000 (UTC)
X-CSE-ConnectionGUID: TLnQZUcjTh+9/5mD6MACsQ==
X-CSE-MsgGUID: BQbsyBMET/uRZ+CXG4mltA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39350769"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="39350769"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 06:40:21 -0800
X-CSE-ConnectionGUID: 4xa4x8eJTkyMXG72xgzACw==
X-CSE-MsgGUID: RSbma+ZFRn+eru1mxUieyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134466168"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.73.22])
 ([10.247.73.22])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 06:40:14 -0800
Message-ID: <6bf3f4b2-efee-41fe-97b3-cb53eca4dfed@linux.intel.com>
Date: Thu, 6 Feb 2025 22:40:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Furong Xu <0x1207@gmail.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Petr Tesarik <petr@tesarici.cz>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
References: <20250205100524.1138523-1-faizal.abdul.rahim@linux.intel.com>
 <20250205100524.1138523-6-faizal.abdul.rahim@linux.intel.com>
 <20250205171234.cuscjpzdyc34ofbn@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250205171234.cuscjpzdyc34ofbn@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738852822; x=1770388822;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kD5h3RRC3oueA8lxUQ4WMmroOAU5ahZNP533Beb94VU=;
 b=L8UwR8qYVT095IHyI1lZOo+QsoGIjQRuXvTqsYQ1fJ+TC//dE76ng+AY
 MFIW4H4QNsML5ZeCq/XxrhxkToWk8lQEJ2b+cpOeEdXAzahBv6iZutJkX
 VoYYnTZsDMA12I4VD5Upbh8ggvY7C3K6hRBw1Hvhgmx+6h9ihJwgWNjfe
 EUUFLfuBxnXEWz/E9VLj1MqdA0q7kzcGoxrPUbINZGLCgFmbyez3QsQnw
 gDFDNyfN1DIbN1mdOJRnzL4/7Ho0dyKiOVjUr2D8QjDqYsvlTHS+gakPz
 jXgwdayKubUoDBAOejC4ufVvsYO7T95CkRcHGKbfSdBrfrG5hVtzXRINN
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L8UwR8qY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/9] igc: Add support for
 frame preemption verification
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


Hi Vladimir,

Thanks for the quick review, appreciate your help.

On 6/2/2025 1:12 am, Vladimir Oltean wrote:
> On Wed, Feb 05, 2025 at 05:05:20AM -0500, Faizal Rahim wrote:
>> This patch implements the "ethtool --set-mm" callback to trigger the
>> frame preemption verification handshake.
>>
>> Uses the MAC Merge Software Verification (mmsv) mechanism in ethtool
>> to perform the verification handshake for igc.
>> The structure fpe.mmsv is set by mmsv in ethtool and should remain
>> read-only for the driver.
>>
>> igc does not use two mmsv callbacks:
>> a) configure_tx()
>>     - igc lacks registers to configure FPE in the transmit direction.
> 
> Yes, maybe, but it's still important to handle this. It tells you when
> the preemptible traffic classes should be sent as preemptible on the wire
> (i.e. when the verification is either disabled, or it succeeded).
> 
> There is a selftest called manual_failed_verification() which supposedly
> tests this exact condition: if verification fails, then packets sent to
> TC0 are supposed to bump the eMAC's TX counters, even though TC0 is
> configured as preemptible. Otherwise stated: even if the tc program says
> that a certain traffic class is preemptible, you don't want to actually
> send preemptible packets if you haven't verified the link partner can
> handle them, since it will likely drop them on RX otherwise.

Even though fpe in tx direction isn't set in igc, it still checks 
ethtool_mmsv_is_tx_active() before setting a queue as preemptible.

This is done in :
igc_tsn_enable_offload(struct igc_adapter *adapter) {
{
	....
	if (ethtool_mmsv_is_tx_active(&adapter->fpe.mmsv) &&
             ring->preemptible)
	    txqctl |= IGC_TXQCTL_PREEMPTIBLE;


Wouldn't this handle the situation mentioned ?
Sorry if I miss something here.

> The problem with that selftest is that it relies on the driver's ability
> to report split ethtool counters for eMAC/pMAC, rather than just aggregate.
> In lack of that, you need to know through some other mechanism whether
> the link partner received those packets as preemptible or express, and
> that's kind of hard to add to a selftest.
>
>> b) configure_pmac()
>>     - this callback dynamically controls pmac_enabled at runtime. For
>>       example, mmsv calls configure_pmac() and disables pmac_enabled when
>>       the link partner goes down, even if the user previously enabled it.
>>       The intention is to save power but it is not feasible in igc
>>       because it causes an endless adapter reset loop:
>>
>> 	 1) Board A and Board B complete the verification handshake.
>>              Tx mode register for both boards are in TSN mode.
>> 	 2) Board B link goes down.
>>
>>           On Board A:
>> 	 3) mmsv calls configure_pmac() with pmac_enabled = false.
>> 	 4) configure_pmac() in igc updates a new field based on
>>              pmac_enabled. Driver uses this field in igc_tsn_new_flags()
>>              to indicate that the user enabled/disabled FPE.
>> 	 5) configure_pmac() in igc calls igc_tsn_offload_apply() to check
>>              whether an adapter reset is needed. Calls existing logic in
>>              igc_tsn_will_tx_mode_change() and igc_tsn_new_flags().
>> 	 6) Since pmac_enabled is now disabled and no other TSN feature
>>              is active, igc_tsn_will_tx_mode_change() evaluates to true
>>              because Tx mode will switch from TSN to Legacy.
>> 	 7) Driver resets the adapter.
>> 	 8) Registers are set, and Tx mode switches to Legacy.
>> 	 9) When link partner is up, steps 3–8 repeat, but this time
>>              with pmac_enabled = true, reactivating TSN.
>>              igc_tsn_will_tx_mode_change() evaluates to true again,
>>              since Tx mode will switch from Legacy to TSN.
>> 	10) Driver resets the adapter.
>> 	11) Rest adapter completes, registers are set, and Tx mode
>> 	    switches to TSN.
>>
>>          On Board B:
>> 	12) Adapter reset on Board A at step 10 causes it to detect its
>>              link partner as down.
> 
> Is this using fiber/DAC, or twisted pair (RJ45 PHY)?

It's using RJ45 PHY.

>> 	13) Repeats steps 3–8.
>> 	14) Once reset adapter on Board A is completed at step 11, it
>>              detects its link partner as up.
>> 	15) Repeats steps 9–11.
>>
>>     - this cycle repeats indefinitely. To avoid this issue, IGC only uses
>>       mmsv.pmac_enabled to track whether FPE is enabled or disabled.
> 
> Not that I couldn't eventually tolerate this workaround, but I figure
> it's worth asking anyway. Isn't there a way to do an adapter reset
> without losing link in the PHY (assuming it's the PHY that loses link)?
> Is that a consequence of software design that's not careful enough, or
> of hardware design? I assume the PHY is a discrete component. Avoiding
> the need to retrigger auto-negotiation saves a few seconds of waiting,
> so it's worth pursuing if it's possible at all.
> 

I briefly checked the driver code and the i226 SW User Manual.

The code calls igc_reset_task() → igc_reset() → igc_reinit_locked() → 
igc_down() → igc_reset() → igc_power_down_phy_copper_base().

I suspect igc_power_down_phy_copper_base() contributes to the link loss, 
but there are likely other factors as well.

The SW User Manual states that a software reset (CTRL.DEV_RST) affects 
several components, including "Port Configuration Autoload from NVM, Data 
Path, On-die Memories, MAC, PCS, Auto Negotiation and other Port-related 
Logic, Function Queue Enable, Function Interrupt and Statistics registers, 
Wake-up Management Registers, and Memory Configuration Registers."

Given this, right now, I’m unsure about the feasibility of making this 
change, though I see the benefits mentioned.
Validating this would require significant exploration—i.e., investigating 
the code, running experiments, reviewing commit history, confirming 
hardware expectations from the SW manual, and consulting other hardware SMEs.

Resetting the adapter is a common mechanism in igc that relies on shared 
functions, which can be triggered in various scenarios. Modifying this 
behavior (if feasible) could introduce some risks and would likely require 
additional testing across those scenarios. Focusing on this right now might 
delay the current series, which is primarily aimed at enabling Qbu on i225/6.

Would it be alright if I explore this separately from this Qbu series?

>> Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Co-developed-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
>> Signed-off-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> ---
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index 817838677817..41cb03816f92 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> @@ -1781,6 +1782,23 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
>>   	return 0;
>>   }
>>   
>> +static int igc_ethtool_set_mm(struct net_device *netdev,
>> +			      struct ethtool_mm_cfg *cmd,
>> +			      struct netlink_ext_ack *extack)
>> +{
>> +	struct igc_adapter *adapter = netdev_priv(netdev);
>> +	struct fpe_t *fpe = &adapter->fpe;
>> +
>> +	ethtool_mmsv_set_mm(&fpe->mmsv, cmd);
>> +
>> +	if (fpe->mmsv.pmac_enabled)
>> +		static_branch_enable(&igc_fpe_enabled);
>> +	else
>> +		static_branch_disable(&igc_fpe_enabled);
> 
> I don't think the API is correctly used here. If there are 2 igc cards
> in the system and one gets an ethtool call with pmac_enabled=false, it
> will break the static branch for the other card. You need to use
> static_branch_inc() and static_branch_dec(), and react only on changes
> (old fpe->mmsv.pmac_enabled ^ cmd->pmac_enabled).
> 
Got it, thanks for the explanation, that makes sense, I'll make the change.

>> +
>> +	return igc_tsn_offload_apply(adapter);
>> +}
>> +
>>   static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>>   					  struct ethtool_link_ksettings *cmd)
>>   {
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 44e4f925491f..396410522e01 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -2618,6 +2618,15 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>>   			size -= IGC_TS_HDR_LEN;
>>   		}
>>   
>> +		if (static_branch_unlikely(&igc_fpe_enabled) &&
>> +		    igc_fpe_is_verify_or_response(rx_desc, size)) {
> 
> FWIW, the igc_fpe_enabled static branch is kernel-wide and does not
> necessarily mean that FPE is enabled on _this_ NIC (that would still be
> adapter->fpe.mmsv.pmac_enabled).
> 
> I don't think it's very safe to call ethtool_mmsv events when it doesn't
> expect them (pmac_enabled = false), at least from a maintainance perspective
> it would be easier not to do that.
> 
> I'm just ballparking this, but I think igc_fpe_is_verify_or_response() is
> also just a bit more computationally expensive than just checking
> adapter->fpe.mmsv.pmac_enabled for the "normal" case where FPE isn't
> enabled, so it might make sense to add this as an extra check anyway.
> 

Got it, will update.

>> +			igc_fpe_lp_event_status(rx_desc, &adapter->fpe.mmsv);
>> +			/* Advance the ring next-to-clean */
>> +			igc_is_non_eop(rx_ring, rx_desc);
>> +			cleaned_count++;
>> +			continue;
>> +		}
>> +
>>   		if (!skb) {
>>   			xdp_init_buff(&ctx.xdp, truesize, &rx_ring->xdp_rxq);
>>   			xdp_prepare_buff(&ctx.xdp, pktbuf - igc_rx_offset(rx_ring),
>> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> index f0213cfce07d..52ff6f324d79 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> @@ -1,10 +1,153 @@
>>   // SPDX-License-Identifier: GPL-2.0
>>   /* Copyright (c)  2019 Intel Corporation */
>>   
>> +#include <linux/kernel.h>
>>   #include "igc.h"
>> +#include "igc_base.h"
>>   #include "igc_hw.h"
>>   #include "igc_tsn.h"
>>   
>> +DEFINE_STATIC_KEY_FALSE(igc_fpe_enabled);
>> +
>> +static int igc_fpe_init_smd_frame(struct igc_ring *ring,
>> +				  struct igc_tx_buffer *buffer,
>> +				  struct sk_buff *skb)
>> +{
>> +	dma_addr_t dma = dma_map_single(ring->dev, skb->data, skb->len,
>> +					DMA_TO_DEVICE);
>> +
>> +	if (dma_mapping_error(ring->dev, dma)) {
>> +		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
>> +		return -ENOMEM;
>> +	}
>> +
>> +	buffer->skb = skb;
>> +	buffer->protocol = 0;
>> +	buffer->bytecount = skb->len;
>> +	buffer->gso_segs = 1;
>> +	buffer->time_stamp = jiffies;
>> +	dma_unmap_len_set(buffer, len, skb->len);
>> +	dma_unmap_addr_set(buffer, dma, dma);
>> +
>> +	return 0;
>> +}
>> +
>> +static int igc_fpe_init_tx_descriptor(struct igc_ring *ring,
>> +				      struct sk_buff *skb, int type)
>> +{
>> +	struct igc_tx_buffer *buffer;
>> +	union igc_adv_tx_desc *desc;
>> +	u32 cmd_type, olinfo_status;
>> +	int err;
>> +
>> +	if (!igc_desc_unused(ring))
>> +		return -EBUSY;
>> +
>> +	if (type != IGC_TXD_POPTS_SMD_V && type != IGC_TXD_POPTS_SMD_R)
>> +		return -EINVAL;
> 
> It should really be sufficient to guarantee at compile time that the argument
> is valid (it never comes from user input, so it's not hard). Error handling
> for a condition that can't be triggered shouldn't exist, except for the

Yea that error handling wasn't originally there, it was added due to some 
internal commments, even though it didn't feel right to me.

Will change according to your suggestion.

> very specific case of future proofing loosely coupled software components
> (what one would call "API", not the case here).
> 
> I guess a concern is what happens when, for any reason, you add a new
> type of packet that you can transmit, and igc_fpe_init_tx_descriptor()
> isn't updated to handle it yet. If you make "int type" a proper enum
> type, the compiler will automatically warn when an enum value isn't
> handled in the "switch (type)" block, because there's no "default" case.
> I think that's actually better than finding this out at runtime, so I
> would recommend using an enum for stronger typing.
> 
> Warning: it's still only a hint and thus not perfect, in that you
> could pass an out-of-range constant literal like "42" and the compiler
> wouldn't warn.
> 
>> +
>> +	buffer = &ring->tx_buffer_info[ring->next_to_use];
>> +	err = igc_fpe_init_smd_frame(ring, buffer, skb);
>> +	if (err)
>> +		return err;
>> +
>> +	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
>> +		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
>> +		   buffer->bytecount;
>> +	olinfo_status = buffer->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
> 
> Still some FIELD_PREP() conversions to do here?
> 
>> +
>> +	switch (type) {
>> +	case IGC_TXD_POPTS_SMD_V:
>> +		olinfo_status |= (IGC_TXD_POPTS_SMD_V << IGC_TXD_POPTS_SMD_SHIFT);
>> +		break;
>> +	case IGC_TXD_POPTS_SMD_R:
>> +		olinfo_status |= (IGC_TXD_POPTS_SMD_R << IGC_TXD_POPTS_SMD_SHIFT);
>> +		break;
>> +	}
> 
> What I just said above is a bit diluted by the fact that this doesn't
> have to be a switch/case block. It's just "olinfo_status |= type << IGC_TXD_POPTS_SMD_SHIFT"
> (also, parentheses are not necessary).
> 
> As a mere suggestion, I would write this as:
> 
> 	switch (type) { // "type" being an enum
> 	case IGC_TXD_POPTS_SMD_V:
> 	case IGC_TXD_POPTS_SMD_R:
> 		olinfo_status |= FIELD_PREP(IGC_TXD_POPTS_SMD_MASK, type);
> 		break;
> 	}
> 
>> +
>> +	desc = IGC_TX_DESC(ring, ring->next_to_use);
>> +	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
>> +	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
>> +	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(buffer, dma));
>> +
>> +	netdev_tx_sent_queue(txring_txq(ring), skb->len);
>> +
>> +	buffer->next_to_watch = desc;
>> +	ring->next_to_use = (ring->next_to_use + 1) % ring->count;
>> +
>> +	return 0;
>> +}
>> +
>> +bool igc_fpe_transmitted_smd_v(union igc_adv_tx_desc *tx_desc)
>> +{
>> +	u8 smd = FIELD_GET(IGC_TXD_POPTS_SMD_MASK, tx_desc->read.olinfo_status);
>> +
>> +	return smd == IGC_TXD_POPTS_SMD_V;
>> +}
>> +
>> +static int igc_fpe_xmit_smd_frame(struct igc_adapter *adapter, int type)
>> +{
>> +	int cpu = smp_processor_id();
>> +	struct netdev_queue *nq;
>> +	struct igc_ring *ring;
>> +	struct sk_buff *skb;
>> +	void *data;
>> +	int err;
>> +
>> +	if (!netif_running(adapter->netdev))
>> +		return -ENOTCONN;
> 
> Have you seen a code path that would require protecting the transmission
> using this conditional?
> 

I checked, I'm not sure too. I'll check with Vinicius too later, but I 
think it's not needed already since this flow is triggered by mmsv that 
already checks if (netif_running(mmsv->dev)) - as per your explanation below.

> I get the feeling that this is defensive programming when we could give
> guarantees in other ways. But maybe there are some race conditions I'm
> not seeing.
> 
> ethtool_mmsv_send_mpacket() is called from ethtool_mmsv_verify_timer()
> and from ethtool_mmsv_event_handle(event == ETHTOOL_MMSV_LP_SENT_VERIFY_MPACKET).
> 
> When called from ethtool_mmsv_verify_timer(), it means the verify timer
> has been armed, which only happens if (netif_running(mmsv->dev)). After
> netif_running() becomes false (aka __LINK_STATE_START is cleared, aka in
> ndo_stop()), you have a chance to call ethtool_mmsv_stop(), which stops
> the verification timer. I see you're not doing that. Is there a reason?
> 

I missed this - ethtool_mmsv_stop(). Sorry for that, I'll update the code, 
thanks.

