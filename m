Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 014EF955BF7
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Aug 2024 10:35:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5908E80B42;
	Sun, 18 Aug 2024 08:35:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6YP-FZxsrnZR; Sun, 18 Aug 2024 08:35:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7442780B47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723970129;
	bh=tcln36Q9FhFJdHyvi7cD3eyfcrBMN1cd+RA5w4iAQdI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=deMbEN2IFwgy0Zk61x3lF9F9lSz889y9lwlrbFJRGEgsrkAjaBuuaPtlid3QzBbjV
	 w4JFt07TYj7q8tHLddoWHyodK35c3fxHUldehR41gPQ7o8MgOOcXtdNhhT2snMvYW5
	 PdSgwLRtAnxR/hMvy6U4APUCQFVHw+7p26M0n+y3GhlslUuutbJJEHJnsmdSMXv5g4
	 iVxLYIoIEZWO91ORNc+UwP0AoGxtMRjeMOYiL/yWT7Lot4ct/ueKiPWfvumNuUgerm
	 BKOZJRq4AzOFYIcxOZNdWLF1XgU3ZVTZ/BIdS7k1PG1YfecI4JmfdBfv7MGzcJCK9L
	 z24J2PLEpKWoQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7442780B47;
	Sun, 18 Aug 2024 08:35:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF6BA1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 08:35:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A05D80B3F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 08:35:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8XXFZKxYrLhc for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Aug 2024 08:35:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C46180B32
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C46180B32
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C46180B32
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 08:35:24 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aee14.dynamic.kabel-deutschland.de
 [95.90.238.20])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EC3E161E64862;
 Sun, 18 Aug 2024 10:35:06 +0200 (CEST)
Message-ID: <85888f3d-b8f7-4e95-a827-5cfb84b0fab4@molgen.mpg.de>
Date: Sun, 18 Aug 2024 10:35:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20240818083250.3153977-1-sasha.neftin@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240818083250.3153977-1-sasha.neftin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/1] igc: Move the MULTI GBT AN
 Control Register to _regs file
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sasha,


Thank you for the patch.

Am 18.08.24 um 10:32 schrieb Sasha Neftin:
> MULTI GBT AN Control Register is IEEE Standard Register 7.32 (not a mask).
> The right place should be in igc_reg.h file. In accordance with the
> registers naming convention added IGC_' prefix.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
>   drivers/net/ethernet/intel/igc/igc_phy.c     | 4 ++--
>   drivers/net/ethernet/intel/igc/igc_regs.h    | 3 +++
>   3 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 6d6717ba4ffd..8e449904aa7d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -178,7 +178,6 @@
>   
>   /* PHY GPY 211 registers */
>   #define STANDARD_AN_REG_MASK	0x0007 /* MMD */
> -#define ANEG_MULTIGBT_AN_CTRL	0x0020 /* MULTI GBT AN Control Register */
>   #define MMD_DEVADDR_SHIFT	16     /* Shift MMD to higher bits */
>   #define CR_2500T_FD_CAPS	0x0080 /* Advertise 2500T FD capability */
>   
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index 861f37076861..2801e5f24df9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -240,7 +240,7 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
>   		/* Read the MULTI GBT AN Control Register - reg 7.32 */
>   		ret_val = phy->ops.read_reg(hw, (STANDARD_AN_REG_MASK <<
>   					    MMD_DEVADDR_SHIFT) |
> -					    ANEG_MULTIGBT_AN_CTRL,
> +					    IGC_ANEG_MULTIGBT_AN_CTRL,
>   					    &aneg_multigbt_an_ctrl);
>   
>   		if (ret_val)
> @@ -380,7 +380,7 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
>   		ret_val = phy->ops.write_reg(hw,
>   					     (STANDARD_AN_REG_MASK <<
>   					     MMD_DEVADDR_SHIFT) |
> -					     ANEG_MULTIGBT_AN_CTRL,
> +					     IGC_ANEG_MULTIGBT_AN_CTRL,
>   					     aneg_multigbt_an_ctrl);
>   
>   	return ret_val;
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
> index bb6f37f5d3a5..12ddc5793651 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -310,6 +310,9 @@
>   #define IGC_IPCNFG	0x0E38 /* Internal PHY Configuration */
>   #define IGC_EEE_SU	0x0E34 /* EEE Setup */
>   
> +/* MULTI GBT AN Control Register - reg. 7.32 */
> +#define IGC_ANEG_MULTIGBT_AN_CTRL	0x0020
> +
>   /* EEE ANeg Advertisement Register - reg 7.60 and reg 7.62 */
>   #define IGC_ANEG_EEE_AB1	0x003c
>   #define IGC_ANEG_EEE_AB2	0x003e

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
