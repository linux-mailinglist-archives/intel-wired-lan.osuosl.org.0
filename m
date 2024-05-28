Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2F68D18D3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 12:44:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A83E440BF3;
	Tue, 28 May 2024 10:44:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id USYInRRPiHdU; Tue, 28 May 2024 10:44:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 131F1401D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716893045;
	bh=3faOPifPRG9dKAVE7mUuA5lPJ+JvcjysQfIytj1tAfM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OXtAgSgBe0B29TlY3hNc7JzpywmuFZlPxfpAG3K4EtS4E9kSkRCJZM1SqxLXLhG3K
	 d2Pjxc9witHjMJCjDDrm/Dmge974QqfEFDpqyNOS9Docol90XXPNsWklhmEk6ZKomD
	 VDX/mKYDAstV49sWjZx0CXCvdbvWGU8WXaZcMJDfsErVyTZ2rBxNORpEOAEBEkgKG4
	 mp5ykWu1JRC18SQoD4QCc7wmMAS7lfASxQgamW+nQvH4fIM4PRxE4OKRkQ3aQr1ifU
	 FW3OeuMTjx0nmoLnh0N8mPX5Ewvfz6UTe+lFvTpxMV63B5A/YahHi4cgWyQQcvMjVe
	 ufmSznmTtFYSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 131F1401D2;
	Tue, 28 May 2024 10:44:05 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A22DF1D26AA
 for <intel-wired-lan@osuosl.org>; Tue, 28 May 2024 10:44:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E7DA405A3
 for <intel-wired-lan@osuosl.org>; Tue, 28 May 2024 10:44:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UbNKvLsfV4ON for <intel-wired-lan@osuosl.org>;
 Tue, 28 May 2024 10:44:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7EC3C405A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EC3C405A0
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EC3C405A0
 for <intel-wired-lan@osuosl.org>; Tue, 28 May 2024 10:43:59 +0000 (UTC)
Received: from [141.14.13.3] (g258.RadioFreeInternet.molgen.mpg.de
 [141.14.13.3])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 06C3061E5FE01;
 Tue, 28 May 2024 12:43:40 +0200 (CEST)
Message-ID: <9ca46bff-e118-436f-81c7-4d2c53556a42@molgen.mpg.de>
Date: Tue, 28 May 2024 12:43:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20240528103329.784584-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240528103329.784584-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: Fix S0ix
 residency on Meteor Lake corporate systems
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
Cc: intel-wired-lan@osuosl.org, Dima Ruinskiy <dima.ruinskiy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vitaly,


Thank you for the patch.

Am 28.05.24 um 12:33 schrieb Vitaly Lifshits:
> From: Dima Ruinskiy <dima.ruinskiy@intel.com>
> 
> On vPro systems,the  configuration of the I219-LM to achieve power

s/,the  /, the /

> gating and S0ix residency is split between the driver and the CSME FW.
> It was discovered that in some scenarios, where the network cable is
> connected and then disconnected, S0ix residency is not always reached.

Disconnected at any point, or just during suspend?

Any URL to the reports?

> This was root-caused to a subset of I219-LM register writes that are not
> performed by the CSME FW. Therefore, the driver should perform these
> register writes on corporate setups, regardless of the CSME FW state.

Is that documented somewhere?

Please add more information about the affected systems, and the test 
environment (firmware versions, …).

> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Vitaly.Lifshits <vitaly.lifshits@intel.com>

The line above with the dot can be removed.

> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 132 ++++++++++-----------
>   1 file changed, 66 insertions(+), 66 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index da5c59daf8ba..3cd161c6672b 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6363,49 +6363,49 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
>   		mac_data |= E1000_EXTCNF_CTRL_GATE_PHY_CFG;
>   		ew32(EXTCNF_CTRL, mac_data);
>   
> -		/* Enable the Dynamic Power Gating in the MAC */
> -		mac_data = er32(FEXTNVM7);
> -		mac_data |= BIT(22);
> -		ew32(FEXTNVM7, mac_data);
> -
>   		/* Disable disconnected cable conditioning for Power Gating */
>   		mac_data = er32(DPGFR);
>   		mac_data |= BIT(2);
>   		ew32(DPGFR, mac_data);
>   
> -		/* Don't wake from dynamic Power Gating with clock request */
> -		mac_data = er32(FEXTNVM12);
> -		mac_data |= BIT(12);
> -		ew32(FEXTNVM12, mac_data);
> -
> -		/* Ungate PGCB clock */
> -		mac_data = er32(FEXTNVM9);
> -		mac_data &= ~BIT(28);
> -		ew32(FEXTNVM9, mac_data);
> -
> -		/* Enable K1 off to enable mPHY Power Gating */
> -		mac_data = er32(FEXTNVM6);
> -		mac_data |= BIT(31);
> -		ew32(FEXTNVM6, mac_data);
> -
> -		/* Enable mPHY power gating for any link and speed */
> -		mac_data = er32(FEXTNVM8);
> -		mac_data |= BIT(9);
> -		ew32(FEXTNVM8, mac_data);
> -
>   		/* Enable the Dynamic Clock Gating in the DMA and MAC */
>   		mac_data = er32(CTRL_EXT);
>   		mac_data |= E1000_CTRL_EXT_DMA_DYN_CLK_EN;
>   		ew32(CTRL_EXT, mac_data);
> -
> -		/* No MAC DPG gating SLP_S0 in modern standby
> -		 * Switch the logic of the lanphypc to use PMC counter
> -		 */
> -		mac_data = er32(FEXTNVM5);
> -		mac_data |= BIT(7);
> -		ew32(FEXTNVM5, mac_data);
>   	}
>   
> +	/* Enable the Dynamic Power Gating in the MAC */
> +	mac_data = er32(FEXTNVM7);
> +	mac_data |= BIT(22);
> +	ew32(FEXTNVM7, mac_data);
> +
> +	/* Don't wake from dynamic Power Gating with clock request */
> +	mac_data = er32(FEXTNVM12);
> +	mac_data |= BIT(12);
> +	ew32(FEXTNVM12, mac_data);
> +
> +	/* Ungate PGCB clock */
> +	mac_data = er32(FEXTNVM9);
> +	mac_data &= ~BIT(28);
> +	ew32(FEXTNVM9, mac_data);
> +
> +	/* Enable K1 off to enable mPHY Power Gating */
> +	mac_data = er32(FEXTNVM6);
> +	mac_data |= BIT(31);
> +	ew32(FEXTNVM6, mac_data);
> +
> +	/* Enable mPHY power gating for any link and speed */
> +	mac_data = er32(FEXTNVM8);
> +	mac_data |= BIT(9);
> +	ew32(FEXTNVM8, mac_data);
> +
> +	/* No MAC DPG gating SLP_S0 in modern standby
> +	 * Switch the logic of the lanphypc to use PMC counter
> +	 */
> +	mac_data = er32(FEXTNVM5);
> +	mac_data |= BIT(7);
> +	ew32(FEXTNVM5, mac_data);
> +
>   	/* Disable the time synchronization clock */
>   	mac_data = er32(FEXTNVM7);
>   	mac_data |= BIT(31);
> @@ -6498,33 +6498,6 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
>   	} else {
>   		/* Request driver unconfigure the device from S0ix */
>   
> -		/* Disable the Dynamic Power Gating in the MAC */
> -		mac_data = er32(FEXTNVM7);
> -		mac_data &= 0xFFBFFFFF;
> -		ew32(FEXTNVM7, mac_data);
> -
> -		/* Disable mPHY power gating for any link and speed */
> -		mac_data = er32(FEXTNVM8);
> -		mac_data &= ~BIT(9);
> -		ew32(FEXTNVM8, mac_data);
> -
> -		/* Disable K1 off */
> -		mac_data = er32(FEXTNVM6);
> -		mac_data &= ~BIT(31);
> -		ew32(FEXTNVM6, mac_data);
> -
> -		/* Disable Ungate PGCB clock */
> -		mac_data = er32(FEXTNVM9);
> -		mac_data |= BIT(28);
> -		ew32(FEXTNVM9, mac_data);
> -
> -		/* Cancel not waking from dynamic
> -		 * Power Gating with clock request
> -		 */
> -		mac_data = er32(FEXTNVM12);
> -		mac_data &= ~BIT(12);
> -		ew32(FEXTNVM12, mac_data);
> -
>   		/* Cancel disable disconnected cable conditioning
>   		 * for Power Gating
>   		 */
> @@ -6537,13 +6510,6 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
>   		mac_data &= 0xFFF7FFFF;
>   		ew32(CTRL_EXT, mac_data);
>   
> -		/* Revert the lanphypc logic to use the internal Gbe counter
> -		 * and not the PMC counter
> -		 */
> -		mac_data = er32(FEXTNVM5);
> -		mac_data &= 0xFFFFFF7F;
> -		ew32(FEXTNVM5, mac_data);
> -
>   		/* Enable the periodic inband message,
>   		 * Request PCIe clock in K1 page770_17[10:9] =01b
>   		 */
> @@ -6581,6 +6547,40 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
>   	mac_data &= ~BIT(31);
>   	mac_data |= BIT(0);
>   	ew32(FEXTNVM7, mac_data);
> +
> +	/* Disable the Dynamic Power Gating in the MAC */
> +	mac_data = er32(FEXTNVM7);
> +	mac_data &= 0xFFBFFFFF;
> +	ew32(FEXTNVM7, mac_data);
> +
> +	/* Disable mPHY power gating for any link and speed */
> +	mac_data = er32(FEXTNVM8);
> +	mac_data &= ~BIT(9);
> +	ew32(FEXTNVM8, mac_data);
> +
> +	/* Disable K1 off */
> +	mac_data = er32(FEXTNVM6);
> +	mac_data &= ~BIT(31);
> +	ew32(FEXTNVM6, mac_data);
> +
> +	/* Disable Ungate PGCB clock */
> +	mac_data = er32(FEXTNVM9);
> +	mac_data |= BIT(28);
> +	ew32(FEXTNVM9, mac_data);
> +
> +	/* Cancel not waking from dynamic
> +	 * Power Gating with clock request
> +	 */
> +	mac_data = er32(FEXTNVM12);
> +	mac_data &= ~BIT(12);
> +	ew32(FEXTNVM12, mac_data);
> +
> +	/* Revert the lanphypc logic to use the internal Gbe counter
> +	 * and not the PMC counter
> +	 */
> +	mac_data = er32(FEXTNVM5);
> +	mac_data &= 0xFFFFFF7F;
> +	ew32(FEXTNVM5, mac_data);
>   }
>   
>   static int e1000e_pm_freeze(struct device *dev)

Doesn’t moving this out of the branch and running it unconditionally 
affect a lot more systems than Meteor Lake?


Kind regards,

Paul
