Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B9882465C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 17:38:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0CAE435FD;
	Thu,  4 Jan 2024 16:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0CAE435FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704386296;
	bh=qQXNVQgSG3EjALWOq4U9bhG2j9kzzvVfaJwYTKFChgU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xL1Vxy8uB04J4QVwQFvFbS4F7liVUXxOQcwVjEcNrc3Btu+sZtCoHQbeY3ieJcnSu
	 4U21nbkZug8rCq4ih4SNDOPKQER8JO1atbPBcIPH1lspJsvWS1BlpTKCkRVEuepOc1
	 9mQ7R9qDNKEq0ftYkNAakzUq79FGgyei2jPBSUpoGnOzIb3DNbanoXC+Zh4G2YJ1GI
	 Kpsb2NY0KDlJ1c3z/zaHVN8y+yLCR60GzyCTznqLYqX5ndx3gfXyxbn24WVV8Scyn4
	 PGqPGw7vskXQfkihi45mgcFxXD8m3ffRJLm9EWLSlKjaDrxV0oSNg7Hj8HNM+EkdKe
	 o9R4KcujJoKMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9T3SjG8TOM2e; Thu,  4 Jan 2024 16:38:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B759404F1;
	Thu,  4 Jan 2024 16:38:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B759404F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 509491BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 16:38:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 26A4B613BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 16:38:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26A4B613BE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zN4kJguetxxR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 16:38:08 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65A01613AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 16:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65A01613AD
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3A5B061E5FE04;
 Thu,  4 Jan 2024 17:35:26 +0100 (CET)
Message-ID: <719aced0-d7c2-4f9e-b1b0-ff6910edbd60@molgen.mpg.de>
Date: Thu, 4 Jan 2024 17:35:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Prasad Koya <prasad@arista.com>
References: <20240104010144.2137857-1-prasad@arista.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240104010144.2137857-1-prasad@arista.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-wired-lan] [PATCH] [iwl-net] igc: write to phy power
 management and management control registers to power up/power down the phy
 during interface up/down
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
Cc: sasha.neftin@intel.com, Naama Meir <naamax.meir@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Salam <noureddine@arista.com>,
 intel-wired-lan@lists.osuosl.org, gilligan@arista.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Prasad,


Thank you very much for your patch. Please remember if you sent an 
updated version to add the version, cf. `--reroll-count|-v` in 
git-format-patch(1). Please also add a small change-log for the patch 
revisions below the --- line.

Also, the git commit message summary (title/subject) is too long. Maybe:

Power PHY up/down on interface up/down

Am 04.01.24 um 02:01 schrieb Prasad Koya:
>   For I225/226 parts, when the interface is set down with "ip
>   link set <dev> down", interface is down but the PHY (led) continues
>   to be up. This patch makes the phy to be actually off/on during
>   interface down/up events.

Please do not indent the commit message.

Which datasheet did you use for this? Please mention it. How did you 
test it?

Sorry for these style comments.


Kind regards,

Paul


> Signed-off-by: Prasad Koya <prasad@arista.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  3 ++
>   drivers/net/ethernet/intel/igc/igc_phy.c     | 42 +++++++++++++-------
>   2 files changed, 31 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index b3037016f31d..6f60f5bd9cc7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -684,4 +684,7 @@
>   #define IGC_LTRMAXV_LSNP_REQ		0x00008000 /* LTR Snoop Requirement */
>   #define IGC_LTRMAXV_SCALE_SHIFT		10
>   
> +/* PHY Power management register */
> +#define IGC_GO_LINK_DISCONNECT		0x0020	   /* Go Link Disconnect */
> +
>   #endif /* _IGC_DEFINES_H_ */
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index 53b77c969c85..319cdf876f4e 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -107,12 +107,22 @@ s32 igc_phy_has_link(struct igc_hw *hw, u32 iterations,
>    */
>   void igc_power_up_phy_copper(struct igc_hw *hw)
>   {
> -	u16 mii_reg = 0;
> +	struct igc_phy_info *phy = &hw->phy;
> +	u32 phpm, manc;
> +
> +	if (phy->ops.acquire(hw))
> +		return;
> +
> +	manc = rd32(IGC_MANC);
> +	manc &= ~IGC_MANC_BLK_PHY_RST_ON_IDE;
> +	wr32(IGC_MANC, manc);
>   
> -	/* The PHY will retain its settings across a power down/up cycle */
> -	hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
> -	mii_reg &= ~MII_CR_POWER_DOWN;
> -	hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);
> +	phpm = rd32(IGC_I225_PHPM);
> +	phpm &= ~IGC_GO_LINK_DISCONNECT;
> +	wr32(IGC_I225_PHPM, phpm);
> +	usleep_range(100, 200);
> +
> +	hw->phy.ops.release(hw);
>   }
>   
>   /**
> @@ -124,17 +134,21 @@ void igc_power_up_phy_copper(struct igc_hw *hw)
>    */
>   void igc_power_down_phy_copper(struct igc_hw *hw)
>   {
> -	u16 mii_reg = 0;
> -
> -	/* The PHY will retain its settings across a power down/up cycle */
> -	hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
> -	mii_reg |= MII_CR_POWER_DOWN;
> +	struct igc_phy_info *phy = &hw->phy;
> +	u32 phpm, manc;
>   
> -	/* Temporary workaround - should be removed when PHY will implement
> -	 * IEEE registers as properly
> -	 */
> -	/* hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);*/
> +	if (phy->ops.acquire(hw))
> +		return;
> +	/* Set "Go Link Disconnect" bit in the PHPM register to turn off the PHY */
> +	phpm = rd32(IGC_I225_PHPM);
> +	phpm |= IGC_GO_LINK_DISCONNECT;
> +	wr32(IGC_I225_PHPM, phpm);
>   	usleep_range(1000, 2000);
> +
> +	manc = rd32(IGC_MANC);
> +	wr32(IGC_MANC, manc | IGC_MANC_BLK_PHY_RST_ON_IDE);
> +
> +	phy->ops.release(hw);
>   }
>   
>   /**
