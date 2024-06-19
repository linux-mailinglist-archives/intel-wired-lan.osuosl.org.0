Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C91990F459
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2024 18:43:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D143413E4;
	Wed, 19 Jun 2024 16:43:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ITsc7IDTKpB; Wed, 19 Jun 2024 16:43:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CA5541463
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718815379;
	bh=flOkWb5d2/WzEzU6OYA2rHi+kmvrGIGrflW9K277+sQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BOECaEL3VJmIZfGdqk4O8Fi14CqyNAt0r/uP9YMmQwif0AIFviaZY78EPo4kv2CmK
	 dhpMtIeZbFQb4XYnklR6AuWNKnQJKEq+/1HNWEDJ1B9VmPlkAJXBDrTpvYAhQWhnDC
	 IvBvVNPHuWnHY9a5CKIbBxkVEmKfm5DaaLlNTWZjKguGfXglP0ONigQ93o0TqSE5lS
	 oQlRXJ//RM+lYbj5qvdi5vTriHy986+P3rRn3uWLaxEK+p7gArm2IQBImRkgS2M0dP
	 5Vp0ceDgydgu7hSb5TXf9+HCvyMmeLkzrBi/sRszbgtLrFMfLhk3sH3RHSbbxHadzy
	 MUBi9gTISkFlg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CA5541463;
	Wed, 19 Jun 2024 16:42:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD9951BF370
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 16:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 978668426E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 16:42:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IfhDVt-NnBTZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2024 16:42:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A48D842D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A48D842D3
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A48D842D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 16:42:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5D7FBCE1DC3;
 Wed, 19 Jun 2024 16:42:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28027C2BBFC;
 Wed, 19 Jun 2024 16:42:49 +0000 (UTC)
Date: Wed, 19 Jun 2024 17:42:47 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240619164247.GK690967@kernel.org>
References: <20240618104310.1429515-1-karol.kolacinski@intel.com>
 <20240618104310.1429515-2-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618104310.1429515-2-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718815371;
 bh=Prisqet5/3qScXbJ+8JlF2VLayZ0w3KdlQsw2CiQZjs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RlBsEfYCPsU8qD2KyFDb7wpkDzsrH08IFZKavp7ta2Dg3D4ff6avaxGPQXYWHT3zx
 f0RKQEhMUzHp+iofray7A+kRVOfhNFpT8DmDC/1KsgL0+QrmpvT+W7nklrbLyfHnUq
 2IIl1XxAFJoCyPRONUw/GkN73j9mWO6RuVzPQXGEWJ12P+8HqellBcBWTAFfwDnLGN
 PiehNDnuyDKDSTtsDzJxCek4YY6s2NpJM00ts1FVKdFUa0ZCTgoULjTKPZzL0IhC/I
 xc6D4jPCKNhbWw7aLZJ2kph+4scuRQ6YTTUwoRzR+c9+4iyWyIFXSXYYePnC4eoLG/
 GEYlbPc0ukTQg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=RlBsEfYC
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: Fix improper extts
 handling
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
 przemyslaw.kitszel@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Milena Olech <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2024 at 12:41:36PM +0200, Karol Kolacinski wrote:
> From: Milena Olech <milena.olech@intel.com>
> 
> Extts events are disabled and enabled by the application ts2phc.
> However, in case where the driver is removed when the application is
> running, channel remains enabled. As a result, in the next run of the
> app, two channels are enabled and the information "extts on unexpected
> channel" is printed to the user.
> 
> To avoid that, extts events shall be disabled when PTP is released.
> 
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

Hi Milena and Karol,

Some feedback from my side.

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 0f17fc1181d2..30f1f910e6d9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1584,27 +1584,24 @@ void ice_ptp_extts_event(struct ice_pf *pf)
>  /**
>   * ice_ptp_cfg_extts - Configure EXTTS pin and channel
>   * @pf: Board private structure
> - * @ena: true to enable; false to disable
>   * @chan: GPIO channel (0-3)
> - * @gpio_pin: GPIO pin
> - * @extts_flags: request flags from the ptp_extts_request.flags
> - */
> -static int
> -ice_ptp_cfg_extts(struct ice_pf *pf, bool ena, unsigned int chan, u32 gpio_pin,
> -		  unsigned int extts_flags)
> + * @config: desired EXTTS configuration.
> + * @store: If set to true, the values will be stored
> + *
> + * Configure an external timestamp event on the requested channel.
> +  */

nit: There is an extra leading space on the line above.

     Also, although not strictly related to this change,
     please consider adding a Returns: section to this kernel doc.

> +static void ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
> +			      struct ice_extts_channel *config, bool store)

...

> @@ -1869,21 +1915,31 @@ static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
>  				    struct ptp_clock_request *rq, int on)
>  {
>  	struct ice_pf *pf = ptp_info_to_pf(info);
> -	struct ice_perout_channel clk_cfg = {0};
>  	int err;
>  
>  	switch (rq->type) {
>  	case PTP_CLK_REQ_PPS:
> +	{
> +		struct ice_perout_channel clk_cfg = {};
> +
>  		clk_cfg.gpio_pin = PPS_PIN_INDEX;
>  		clk_cfg.period = NSEC_PER_SEC;
>  		clk_cfg.ena = !!on;
>  
>  		err = ice_ptp_cfg_clkout(pf, PPS_CLK_GEN_CHAN, &clk_cfg, true);
>  		break;
> +	}
>  	case PTP_CLK_REQ_EXTTS:
> -		err = ice_ptp_cfg_extts(pf, !!on, rq->extts.index,
> -					TIME_SYNC_PIN_INDEX, rq->extts.flags);
> +	{
> +		struct ice_extts_channel extts_cfg = {};
> +
> +		extts_cfg.flags = rq->extts.flags;
> +		extts_cfg.gpio_pin = TIME_SYNC_PIN_INDEX;
> +		extts_cfg.ena = !!on;
> +
> +		ice_ptp_cfg_extts(pf, rq->extts.index, &extts_cfg, true);
>  		break;

This function returns err.
But with this patch err is uninitialised here.

Perhaps err be set to the return value of ice_ptp_cfg_extts()
as it was before this patch?

Flagged by allmodconfig W=1 builds with gcc-13 and clang-18, and Smatch.

> +	}
>  	default:
>  		return -EOPNOTSUPP;
>  	}

...
