Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C0D82308B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 16:28:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01EEA811E8;
	Wed,  3 Jan 2024 15:28:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01EEA811E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704295727;
	bh=KXRmYLwx9sLPno2M72TqiR1PqSSMnGsG4k51Q8CcAII=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Msbt9ERTd8L+GnTrss62vYGOcaKcS5moNR9cbGsATuHvWXmU74NFLiqVOYZ+g4bTy
	 JKTsqB7F3oe3CArFbG1C8ZLvrJVJOJK91XiBKaj3NBuV85vup+pUcHrXJvPer2Hro3
	 95j4lN2i/cP99czTcAJ6baL4cx/ZteQb3a8/z1ruTYbkzXEYuqNPK3LYGB0EYXmitA
	 JyjLAJWEjWjLeddG1qc9itGBNko1oU+HtgS4FkD4kUhY9D3lA2zZtgxqHCeq1KXueO
	 2Gf76tNua6GX6Zpjob01yezb+WA/ZMiGYxS8h+fBQVo5Hfh6HWVLsbZpa7GeN2fszN
	 kD3MEDi/1eiOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0EnPRSyqeBcH; Wed,  3 Jan 2024 15:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0889480EC0;
	Wed,  3 Jan 2024 15:28:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0889480EC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D57881BF314
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 15:28:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3605608F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 15:28:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3605608F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vZZl7nC64z-q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 15:28:38 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 74F2C607A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 15:28:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74F2C607A3
Received: from [172.23.38.41] (unknown [85.119.46.9])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E3D9A61E5FE03;
 Wed,  3 Jan 2024 16:27:50 +0100 (CET)
Message-ID: <ccafbfeb-f228-4070-8425-e6d2dbf7e0d8@molgen.mpg.de>
Date: Wed, 3 Jan 2024 16:27:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20240103085044.283741-1-vitaly.lifshits@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240103085044.283741-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-wired-lan] [PATH iwl-next v1 1/1] e1000e: Minor flow
 correction in e1000_shutdown function
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
Cc: david.m.ertman@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vitaly,


Thank you for the patch.

In the commit message summary, it’d be great if you used a statement by 
adding a verb in imperative mood. Maybe:

Correct flow in e1000_shutdown()

Am 03.01.24 um 09:50 schrieb Vitaly Lifshits:
> Added a missing curly braces to avoid entering to an if statement

s/Added/Add/
s/entering to/entering/

The curly braces are not missing though.

> where it is not always required in e1000_shutdown function.
> This improves code readability and might prevent a non-deterministic
> behaviour in the future.

Looking at the diff, it’s not clear to me, how `retval` is used/set 
before. Could you please elaborate, what the problem is?

Missing Fixes tag?

> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index af5d9d97a0d6..cc8c531ec3df 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6688,14 +6688,14 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   	if (adapter->hw.phy.type == e1000_phy_igp_3) {
>   		e1000e_igp3_phy_powerdown_workaround_ich8lan(&adapter->hw);
>   	} else if (hw->mac.type >= e1000_pch_lpt) {
> -		if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC)))
> +		if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC))) {
>   			/* ULP does not support wake from unicast, multicast
>   			 * or broadcast.
>   			 */
>   			retval = e1000_enable_ulp_lpt_lp(hw, !runtime);
> -
> -		if (retval)
> -			return retval;
> +			if (retval)
> +				return retval;
> +		}
>   	}
>   
>   	/* Ensure that the appropriate bits are set in LPI_CTRL


Kind regards,

Paul
