Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C998BA6A7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2024 07:34:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5734283252;
	Fri,  3 May 2024 05:34:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zibxxIpu42GV; Fri,  3 May 2024 05:34:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFA4B83260
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714714489;
	bh=WclDYAEexkPXYCd3/Ug566JqLFY3qsFYGgYqSpNguwU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8CitodPAb5uDWkyMwyQNm/evjCZpmhjGiAoeR0tWFkywMfY5Qi6eRJOV04x4fAnWj
	 xRSBWJuyDPsON6jq4/FElWvvm9YuuBzhWpTU6wRiPctWVOZlYNZSzsHJViOuVTlOLd
	 Y56qXAYVhu4/5SItCnANXt/ND5qI1RKDz1d4qIlkk3cMWXHSwX6sSR7DxzzuDpA/ic
	 zsyDllxkhzVB1W7VuWxFUVi0mCRoXXDdeErg7pjEt4yeEj+K1KIrmhObA6nmNKOChU
	 elKmz1mI/hmO2Q5k9Ts/kLij8GLqOgsNrjiwBxAhUODXkHCqNZExHK+hfYeN2Z4IEM
	 Xq/rkO6agu53Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFA4B83260;
	Fri,  3 May 2024 05:34:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F00BB1BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 05:34:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1B688321B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 05:34:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WVls_i0PE8J5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2024 05:34:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 551A6831DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 551A6831DA
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 551A6831DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 05:34:42 +0000 (UTC)
Received: from [10.50.1.206] (unknown [89.187.201.15])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EAB1361E5FE35;
 Fri,  3 May 2024 07:34:02 +0200 (CEST)
Message-ID: <4bd85100-0f3d-4e38-973c-e6938f304dde@molgen.mpg.de>
Date: Fri, 3 May 2024 07:33:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ricky Wu <en-wei.wu@canonical.com>
References: <20240502091215.13068-1-en-wei.wu@canonical.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240502091215.13068-1-en-wei.wu@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: fix link fluctuations problem
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
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[Fix address jesse.brandeburg@intel.co*m*]


Dear Ricky,


Thank you for your patch.


Am 02.05.24 um 11:12 schrieb Ricky Wu:
> As described in https://bugzilla.kernel.org/show_bug.cgi?id=218642,
> some e1000e NIC reports link up -> link down -> link up when hog-plugging

Do you mean ho*t*-plugging?

> the Ethernet cable.
> 
> The problem is because the unstable behavior of Link Status bit in
> PHY Status Register of some e1000e NIC. When we re-plug the cable,
> the e1000e_phy_has_link_generic() (called after the Link-Status-Changed
> interrupt) has read this bit with 1->0->1 (1=link up, 0=link down)
> and e1000e reports it to net device layer respectively.

Wow. I guess this was “fun” to debug. Could you please document, what 
NICs you saw this, and if it is documented in any datasheet/errata?

> This patch solves the problem by passing polling delays on
> e1000e_phy_has_link_generic() so that it will not get the unstable
> states of Link Status bit.

Does this have any downsides on systems with non-buggy hardware?

> Also, the sleep codes in e1000e_phy_has_link_generic() only take
> effect when error occurs reading the MII register. Moving these codes
> forward to the beginning of the loop so that the polling delays passed
> into this function can take effect on any situation.

Could you please split this hunk into a separate patch?

Should it Fixes: tag be added?

Are there any other  public bug reports and discussions you could reference?

Link: https://bugzilla.kernel.org/show_bug.cgi?id=218642

> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c |  5 ++++-
>   drivers/net/ethernet/intel/e1000e/phy.c     | 10 ++++++----
>   2 files changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index f9e94be36e97..c462aa6e6dee 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1427,8 +1427,11 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
>   	/* First we want to see if the MII Status Register reports
>   	 * link.  If so, then we want to get the current speed/duplex
>   	 * of the PHY.
> +	 * Some PHYs have link fluctuations with the instability of
> +	 * Link Status bit (BMSR_LSTATUS) in MII Status Register.
> +	 * Increase the iteration times and delay solves the problem.

Increas*ing*?

>   	 */
> -	ret_val = e1000e_phy_has_link_generic(hw, 1, 0, &link);
> +	ret_val = e1000e_phy_has_link_generic(hw, COPPER_LINK_UP_LIMIT, 100000, &link);

Could you please document how 100000 was chosen?

>   	if (ret_val)
>   		goto out;
>   
> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> index 93544f1cc2a5..ef056363d721 100644
> --- a/drivers/net/ethernet/intel/e1000e/phy.c
> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> @@ -1776,7 +1776,13 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
>   	u16 i, phy_status;
>   
>   	*success = false;
> +
>   	for (i = 0; i < iterations; i++) {
> +		if (usec_interval >= 1000)
> +			msleep(usec_interval / 1000);
> +		else
> +			udelay(usec_interval);
> +
>   		/* Some PHYs require the MII_BMSR register to be read
>   		 * twice due to the link bit being sticky.  No harm doing
>   		 * it across the board.
> @@ -1799,10 +1805,6 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
>   			*success = true;
>   			break;
>   		}
> -		if (usec_interval >= 1000)
> -			msleep(usec_interval / 1000);
> -		else
> -			udelay(usec_interval);
>   	}
>   
>   	return ret_val;
