Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0CE43F774
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 08:47:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35290401B7;
	Fri, 29 Oct 2021 06:47:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MRIX-WLBH134; Fri, 29 Oct 2021 06:47:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CA624016C;
	Fri, 29 Oct 2021 06:47:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C763C1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 06:47:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B61E08271D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 06:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5CoVbzBaCenn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 06:47:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 00FEB8271A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 06:47:48 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef83.dynamic.kabel-deutschland.de
 [95.90.239.131])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8AB2861E64846;
 Fri, 29 Oct 2021 08:47:45 +0200 (CEST)
Message-ID: <89af2e39-fe5c-c285-7805-8c7a6a5a2e51@molgen.mpg.de>
Date: Fri, 29 Oct 2021 08:47:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Cyril Novikov <cnovikov@lynx.com>
References: <81be24c4-a7e4-0761-abf4-204f4849b6eb@lynx.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <81be24c4-a7e4-0761-abf4-204f4849b6eb@lynx.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: set X550 MDIO speed before
 talking to PHY
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
Cc: Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Cyril,


On 29.10.21 03:03, Cyril Novikov wrote:
> The MDIO bus speed must be initialized before talking to the PHY the first
> time in order to avoid talking to it using a speed that the PHY doesn't
> support.
> 
> This fixes HW initialization error -17 (IXGBE_ERR_PHY_ADDR_INVALID) on
> Denverton CPUs (a.k.a. the Atom C3000 family) on ports with a 10Gb network
> plugged in. On those devices, HLREG0[MDCSPD] resets to 1, which combined
> with the 10Gb network results in a 24MHz MDIO speed, which is apparently
> too fast for the connected PHY. PHY register reads over MDIO bus return
> garbage, leading to initialization failure.

Maybe add a Fixes tag?

> Signed-off-by: Cyril Novikov <cnovikov@lynx.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> Reproduced with Linux kernel 4.19 and 5.15-rc7. Can be reproduced using
> the following setup:
> 
> * Use an Atom C3000 family system with at least one X550 LAN on the SoC
> * Disable PXE or other BIOS network initialization if possible
>    (the interface must not be initialized before Linux boots)
> * Connect a live 10Gb Ethernet cable to an X550 port
> * Power cycle (not reset, doesn't always work) the system and boot Linux
> * Observe: ixgbe interfaces w/ 10GbE cables plugged in fail with error -17

Why not add that to the commit message?

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> index 9724ffb16518..e4b50c7781ff 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> @@ -3405,6 +3405,9 @@ static s32 ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
>   	/* flush pending Tx transactions */
>   	ixgbe_clear_tx_pending(hw);
>   
> +	/* set MDIO speed before talking to the PHY in case it's the 1st time */
> +	ixgbe_set_mdio_speed(hw);
> +
>   	/* PHY ops must be identified and initialized prior to reset */
>   	status = hw->phy.ops.init(hw);
>   	if (status == IXGBE_ERR_SFP_NOT_SUPPORTED ||
> 

Is `ixgbe_set_mdio_speed(hw)` at the end of the function then still needed?


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
