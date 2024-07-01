Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC34691E0AA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 15:27:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57D4840DC4;
	Mon,  1 Jul 2024 13:27:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uB7jP4xccdC0; Mon,  1 Jul 2024 13:27:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B4E440DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719840448;
	bh=bYFzt42DbuZMAxK4IWQD65zpTruQFaVVpGpS+1POniQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AM1WlS+f8a0SD4CFYjO9dn24nhGoVoJAUSRtScXkRpM33xoyBfjngtWtvhAe7RwIW
	 ZSqdNEAn5g2VL2T4FvkVn/7UCeKLDQ2FKFYwPTs19vvEBJHxuGTnL3XIX8YwDmMnm9
	 ozApYSZbWH33Xggi7GzIfI/7zgVlGrk1eFy3W/+l0yLSrV/OXU0wvZbhwd7t1gUP/6
	 n049mWPFLd5/eE1KcVX2LdJ9iJIM4UfjqkX3N9znSH4kYcMY1khFrSgWchR3+let4N
	 ij3B7fE6PZVvoLwjHIsOnkSw0ebryTAEg4IL4NYqEOYQLzbE2i9W7FRIUD/8SAzsHC
	 znQfvzC40lIzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B4E440DBF;
	Mon,  1 Jul 2024 13:27:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15A461BF338
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0163540495
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:27:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 49Q5O0TRZeQm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 13:27:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3D66740275
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D66740275
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D66740275
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:27:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 719C361306;
 Mon,  1 Jul 2024 13:27:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8229C116B1;
 Mon,  1 Jul 2024 13:27:23 +0000 (UTC)
Date: Mon, 1 Jul 2024 14:27:21 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240701132721.GC17134@kernel.org>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
 <20240627151127.284884-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240627151127.284884-14-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719840445;
 bh=MdY5UR7M3EZd1PTsJ/zmuKA5VFeW4CLRWVUQwWBfnfI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lb0hRoG5GGtI3lhF1K5o0YaA2wh6E1r7ygMb6vX8v8TIs5/c4q+WZZx7sEP6oCPIC
 qtt7Ub8lWO9j8pTpjZ95poUZc/Lc+3V5Gj6n1984zBhfmEbAinV/JrX1zlbGaqgk5V
 h0Kj1M6g5TkXvSj8DLw5A4o5A1MUXkuuyUpg3MJ0Xc5/tUt2ej7zyLTE4yt/dVtcQt
 xh8ttW1nUVZZxEufWYXFvAyDmeYZQtn5z2nCAWW4dqbG9C07r8t9XUj2dthHrKIy2R
 aFmAwP8Cs1fyZF/Tow9xXHdxXBI7tGjFkw56NGOLdfUmojFWV4XfRIXeP6DHbmCr6L
 01E6e+6YgogRA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lb0hRoG5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/7] ice: Disable shared pin
 on E810 on setfunc
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 27, 2024 at 05:09:29PM +0200, Karol Kolacinski wrote:
> When setting a new supported function for a pin on E810, disable other
> enabled pin that shares the same GPIO.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 65 ++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c

...

> @@ -1885,6 +1942,14 @@ static int ice_verify_pin(struct ptp_clock_info *info, unsigned int pin,
>  		return -EOPNOTSUPP;
>  	}
>  
> +	/* On adapters with SMA_CTRL disable other pins that share same GPIO */
> +	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
> +		ice_ptp_disable_shared_pin(pf, pin, func);
> +		pf->ptp.pin_desc[pin].func = func;
> +		pf->ptp.pin_desc[pin].chan = chan;
> +		return ice_ptp_set_sma_cfg_e810t(pf);

This appears to be resolved in the following patch by calling
ice_ptp_set_sma_cfg_() instead, but this fails to build because
ice_ptp_set_sma_cfg_e810t() does not exits.

> +	}
> +
>  	return 0;
>  }
>  
> -- 
> 2.45.2
> 
> 
