Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCE194DBE5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Aug 2024 11:17:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B69541364;
	Sat, 10 Aug 2024 09:17:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WNpet6YHncwV; Sat, 10 Aug 2024 09:17:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8468B413EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723281432;
	bh=3v/n3JqOBAvIq24uALiZ1bgDO2jLFaKsMRo8YuRgeFU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4yt9US4GawS0sj0LpTwn82imOTvur4o9X/Ql4fdOTit6mXJaWmhFNfTJ95mnugeYE
	 2VtlVWamK/0Z3lHdvrrG7iFdBKKAmrdHL/5w3iyXCD6dnnFM6wrtJKRZgYov7lDvBj
	 NnJiSMtH43lMXF+P9KbFL8Yub3bDEy2dio7lkbWHusTKx3uN8vCA019ZDzZsvBPQMU
	 6h/G+kyJGh4JQBaWBnXlEVFql8RGoRA+pdnda4jMbLR5ic5Mjl8ZLm7mvPL2iyxAbc
	 gnFXYET/mHKPKedV5d2NRtDUO097geueQqcvjT6K9JkJQYwRZF15Pr9zzOk43wpiP8
	 isOfisI79Fqag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8468B413EB;
	Sat, 10 Aug 2024 09:17:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0AE51BF85D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 09:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C2CE40162
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 09:17:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ILZHtjZa97tE for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Aug 2024 09:17:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 963CF400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 963CF400D0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 963CF400D0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 09:17:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 66BF06090B;
 Sat, 10 Aug 2024 09:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB139C32781;
 Sat, 10 Aug 2024 09:17:05 +0000 (UTC)
Date: Sat, 10 Aug 2024 10:17:03 +0100
From: Simon Horman <horms@kernel.org>
To: Gui-Dong Han <hanguidong02@outlook.com>
Message-ID: <20240810091703.GG1951@kernel.org>
References: <SY8P300MB0460FB85729319189B40576FC0BA2@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SY8P300MB0460FB85729319189B40576FC0BA2@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1723281428;
 bh=zb4bAQPkC8PuI8iRT17mPKYwOYBQem3QeLvrxpTiEH4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Oiqi1YA4ZgNRWmOpHCOBWeHgy3LzYP5gWGnHlWVvFn0ZEKtMIdQ6+YGJ2A38JzEgq
 9Oo5aofLeP+A2OBgb2PGtnjzGc7/ts/0oszaEAba+/RwKfEcBpaWRk9d5HLqUDnc5B
 cpjL0lw8DMBdvuuZSfxtVF4qu+4AipMwdqCrvVCHPb1JlqRYm9JMTyxQNfcvwOe4n5
 Cft8ouLSki2/L6FZS/DTD613X48gbeBms6hkNeX3wqzIrIjPHy9u/9jo16Difkoqa6
 ZRHl6qkq7D5iM2eo/vGMMdS71s4i5SWU+IEmIV0/nB9UuCvJ8yx297YpnWsgXMmxKq
 dIBOq5VaW3snw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Oiqi1YA4
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix improper handling of
 refcount in ice_dpll_init_rclk_pins()
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
Cc: przemyslaw.kitszel@intel.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 baijiaju1990@gmail.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 09, 2024 at 01:02:15PM +0800, Gui-Dong Han wrote:
> This patch addresses a reference count handling issue in the
> ice_dpll_init_rclk_pins() function. The function calls ice_dpll_get_pins(),
> which increments the reference count of the relevant resources. However,
> if the condition WARN_ON((!vsi || !vsi->netdev)) is met, the function
> currently returns an error without properly releasing the resources
> acquired by ice_dpll_get_pins(), leading to a reference count leak.
> 
> To resolve this, the patch introduces a goto unregister_pins; statement
> when the condition is met, ensuring that the resources are correctly
> released and the reference count is decremented before returning the error.
> This change prevents potential memory leaks and ensures proper resource
>  management within the function.
> 
> This bug was identified by an experimental static analysis tool developed
> by our team. The tool specializes in analyzing reference count operations
> and detecting potential issues where resources are not properly managed.
> In this case, the tool flagged the missing release operation as a
> potential problem, which led to the development of this patch.
> 
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Cc: stable@vger.kernel.org
> Signed-off-by: Gui-Dong Han <hanguidong02@outlook.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index e92be6f130a3..f3f204cae093 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -1641,8 +1641,10 @@ ice_dpll_init_rclk_pins(struct ice_pf *pf, struct ice_dpll_pin *pin,
>  		if (ret)
>  			goto unregister_pins;
>  	}
> -	if (WARN_ON((!vsi || !vsi->netdev)))
> -		return -EINVAL;
> +	if (WARN_ON((!vsi || !vsi->netdev))) {
> +		ret = -EINVAL;
> +		goto unregister_pins;
> +	}

Hi,

I wonder if it would make sense to move the check to the
top of the function. It seems to be more of a verification
of state at the time the function is run than anything else.

Doing so would avoid the need to handle unwind in this case.

>  	dpll_netdev_pin_set(vsi->netdev, pf->dplls.rclk.pin);
>  
>  	return 0;
> -- 
> 2.25.1
> 
> 
