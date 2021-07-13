Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F713C6B08
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jul 2021 09:13:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24BE540393;
	Tue, 13 Jul 2021 07:13:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hvb-cFy-5CmF; Tue, 13 Jul 2021 07:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0F4B405C2;
	Tue, 13 Jul 2021 07:13:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9EA411BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 07:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D2A38355C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 07:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wg7ZXy6XpYXv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jul 2021 07:13:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D697833A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 07:13:02 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aeb78.dynamic.kabel-deutschland.de
 [95.90.235.120])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3582061E30BCC;
 Tue, 13 Jul 2021 09:13:00 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20210624081908.568757-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <b144efbc-9dbd-dd7c-b8df-a504a757bded@molgen.mpg.de>
Date: Tue, 13 Jul 2021 09:12:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624081908.568757-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 3/3] e1000e: Additional PHY power
 saving in s0ix
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
Cc: michael.edri@intel.com, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sasha, dear Dima,


Am 24.06.21 um 10:19 schrieb Sasha Neftin:

Could you please use a statement in the commit message summary? Maybe:

> Disable additional PHY features(?) in S0ix

> After transferring the MAC-PHY interface to the SMBus the PHY
> will save power in S0ix low power idle mode.

I do not understand this. Please rewrite, and mention the three PHY 
features(?) you change.

Please document how you tested this, and exactly how much power is saved.

> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 6e6e2e685e9d..c4f3e5ca7294 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6380,10 +6380,16 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
>   		ew32(CTRL_EXT, mac_data);
>   
>   		/* DFT control: PHY bit: page769_20[0] = 1
> +		 * page769_20[7] - PHY PLL stop
> +		 * page769_20[8] - PHY go to the electrical idle
> +		 * page769_20[9] - PHY serdes disable
>   		 * Gate PPW via EXTCNF_CTRL - set 0x0F00[7] = 1
>   		 */
>   		e1e_rphy(hw, I82579_DFT_CTRL, &phy_data);
>   		phy_data |= BIT(0);
> +		phy_data |= BIT(7);
> +		phy_data |= BIT(8);
> +		phy_data |= BIT(9);
>   		e1e_wphy(hw, I82579_DFT_CTRL, phy_data);
>   
>   		mac_data = er32(EXTCNF_CTRL);
> 


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
