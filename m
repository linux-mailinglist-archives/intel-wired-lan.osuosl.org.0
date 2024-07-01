Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3586B91E08E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 15:23:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BD8440DCD;
	Mon,  1 Jul 2024 13:23:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NIGnNqYrJjh0; Mon,  1 Jul 2024 13:23:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2D1640C17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719840230;
	bh=nHT3ry8EJcjOYe0yR2Ydon51cBXz7pC3MvaPxENJHF8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FDpGxME/sSZSj1okh1oZtDjJct1gDcNmub7sCks7V3xKNxrPOy03X3QONzEIBAdDt
	 aviurMlurhQKntxmAkdebt6CyXZcija68APgF8L7ArRhKhuaaFZZcfB+Qjg+xDPTV4
	 nJOH4DfJ79XKZq7gxj72fkv9AUFqPQfcDfETJT2u/NaLKBFhdI7trs0s9zX0/4GaC8
	 KfDMPhEy/Lj9OZdnQgD7AzcKvdGeo/AJudyNgQ5S3GLDGGl1h5XVpqKRLhlWbj+PVU
	 +ajFGDfv9dY7M3hYgwCOr/ASlX4rOiQUY5mdFelZGw4t0DjH5ZG1UDfGcAwcYXnx+c
	 nyEUKuEAJMajQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2D1640C17;
	Mon,  1 Jul 2024 13:23:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC0851BF338
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 968A181493
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y-ngaZ4-N_bv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 13:23:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5EDCA8146D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EDCA8146D
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5EDCA8146D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:23:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D4A45CE13CE;
 Mon,  1 Jul 2024 13:23:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7B29C2BD10;
 Mon,  1 Jul 2024 13:23:38 +0000 (UTC)
Date: Mon, 1 Jul 2024 14:23:36 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240701132336.GY17134@kernel.org>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
 <20240627151127.284884-10-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240627151127.284884-10-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719840220;
 bh=FPJ8KET8/Tdqej9XMy5mfpa1pEQ4LY66OQ3EA9V60Ck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o23CYvBMKTBPIkHYDeh6ZLWtGOTOCivnIzDjtH4iFxg8odPK+lMhGcTGztAiJ5pf3
 lQkVpe3pgkARsYyKWTusrLBZ/ZN/NvLWDFmESwKhln8bjt43J35OXFtWUFOeP2IKLt
 8ltlk+27uvTC0NSgWX/zDPuCLnpk6+Xh/uT5X8oKLvwTqi5I2/4qQ9NaLOLARDcJw7
 00XLg05gjCk+cKtMfxAxg8U2p2wu3CG8B4WJLTZVbsHfGKASCxVgmBCPmkTNi9Dw+N
 Et3cjEkDQ1r1mo9i6Uops36/N1RAX+BKNrqo4/ux04BnvA4x0ySRU3kiINxb3sAKIb
 tdO1X3D8UoNqw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=o23CYvBM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/7] ice: Implement
 ice_ptp_pin_desc
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

On Thu, Jun 27, 2024 at 05:09:25PM +0200, Karol Kolacinski wrote:
> Add a new internal structure describing PTP pins.
> Use the new structure for all non-E810T products.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 271 ++++++++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_ptp.h |  65 ++++--
>  2 files changed, 229 insertions(+), 107 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c

...

> +/**
> + * ice_ptp_gpio_enable - Enable/disable ancillary features of PHC
> + * @info: The driver's PTP info structure
>   * @rq: The requested feature to change
>   * @on: Enable/disable flag
> + *
> + * Return: 0 on success, -EOPNOTSUPP when request type is not supported
>   */
> -static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
> -				    struct ptp_clock_request *rq, int on)
> +static int ice_ptp_gpio_enable(struct ptp_clock_info *info,
> +			       struct ptp_clock_request *rq, int on)
>  {
>  	struct ice_pf *pf = ptp_info_to_pf(info);
> +	int err;

nit: This appears to be resolved by a subsequent patch in this series,
     but err is unused in this function.

     Flagged by W=1 allmodconfig builds on x86_64 with gcc-13 and clang-18.

>  
>  	switch (rq->type) {
> -	case PTP_CLK_REQ_PPS:
> +	case PTP_CLK_REQ_PEROUT:
>  	{
> -		struct ice_perout_channel clk_cfg = {};
> +		struct ice_perout_channel clk_cfg;
> +		int pin_desc_idx;
> +
> +		pin_desc_idx = ice_ptp_find_pin_idx(pf, PTP_PF_PEROUT,
> +						    rq->perout.index);
> +		if (pin_desc_idx < 0)
> +			return -EIO;
> +
>  
>  		clk_cfg.flags = rq->perout.flags;
> -		clk_cfg.gpio_pin = PPS_PIN_INDEX;
> -		clk_cfg.period = NSEC_PER_SEC;
> +		clk_cfg.gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[1];
> +		clk_cfg.period = rq->perout.period.sec * NSEC_PER_SEC +
> +				 rq->perout.period.nsec;
> +		clk_cfg.start_time = rq->perout.start.sec * NSEC_PER_SEC +
> +				     rq->perout.start.nsec;
>  		clk_cfg.ena = !!on;
>  
> -		return ice_ptp_cfg_clkout(pf, PPS_CLK_GEN_CHAN, &clk_cfg, true);
> +		return ice_ptp_cfg_clkout(pf, rq->perout.index, &clk_cfg, true);
>  	}
>  	case PTP_CLK_REQ_EXTTS:
>  	{
>  		struct ice_extts_channel extts_cfg = {};
> +		int pin_desc_idx;
> +
> +		pin_desc_idx = ice_ptp_find_pin_idx(pf, PTP_PF_EXTTS,
> +						    rq->extts.index);
> +		if (pin_desc_idx < 0)
> +			return -EIO;
>  
>  		extts_cfg.flags = rq->extts.flags;
> -		extts_cfg.gpio_pin = TIME_SYNC_PIN_INDEX;
> +		extts_cfg.gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[0];
>  		extts_cfg.ena = !!on;
>  
>  		return ice_ptp_cfg_extts(pf, rq->extts.index, &extts_cfg, true);

...
