Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB1391E0AF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 15:27:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A76BB40DC4;
	Mon,  1 Jul 2024 13:27:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ti05HNVeyIDn; Mon,  1 Jul 2024 13:27:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 999AB40DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719840472;
	bh=gVi9usg9IhFtFqkpiyoyG+XM1fmIUAjKLMWQtaAcLMw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PTaJMPBNKDEWNhbRCeWKBnxlyYhC9FVzkh2OsLoAcMzeCOKSvRqcgYcqOuoSVn4sc
	 tBTwqbKGP/plw+IGnePh7xUeFDcmZoqNGBsTjCRL0j7mf70HNINb0ovwKP0mN1r30Y
	 pUTiL6l1PFe0RKiPAJReQ9Jy0hPE52+iVzgsFro9DkJaWpuGValOQOaaGVmxtT4VDS
	 snfbsLIIa9OkyUsDCPX80a9dlKP9695QkK6KS64L55/WcSfNVVcDNrL7ppSTyoVPW0
	 Ikbr92i+77Q2roiHvI6p8+7vyuWN7A7azTjndvaVyQgvgIDvtyjInNw3ijifO4wi7k
	 zSodIlRFTjYAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 999AB40DBF;
	Mon,  1 Jul 2024 13:27:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EB351BF338
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:27:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BF2860908
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:27:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0WgYI-nLdrvY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 13:27:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5954C608CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5954C608CE
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5954C608CE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:27:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7140161303;
 Mon,  1 Jul 2024 13:27:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FC26C116B1;
 Mon,  1 Jul 2024 13:27:46 +0000 (UTC)
Date: Mon, 1 Jul 2024 14:27:44 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240701132744.GD17134@kernel.org>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
 <20240627151127.284884-16-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240627151127.284884-16-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719840468;
 bh=Wc7mFZvn0u9+Zvext7s5db/yx1Q+Lm5Q2VfaWZq1on0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FOVcqJNo/32H30H6gANFWMvpZOXdmfDPNXdeZc/tnwO1RQvPIIIh0qvDQaGZbXa+5
 C2+zorTbrQ09SE2kRAPEKyw44SX7PVIDMSfhOD72aI0LK/oKWbDsRaB7p3MwNSQRu2
 lQPh8gyDCbCJ0kktd4Ym1fWzAvtRTd6AgSDi1sxT0E9m9FybyIUFEfqLpZotmoBHky
 KC1ClyhA7ssQigWmr3Qv3sUQWBGXFg0Xjtqe6oYzWg+3nIOksN1GNB20EqqEEZnmw9
 7fZ+S3BxHEQH4X74dT0+xcZbHocFOZaIa9Fpz/L1xr0fM20EzcaIaircLV+ifsibbI
 qKab9PdMtOhOg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=FOVcqJNo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Enable 1PPS out
 from CGU for E825C products
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 27, 2024 at 05:09:31PM +0200, Karol Kolacinski wrote:
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> 
> Implement 1PPS signal enabling/disabling in CGU. The amplitude is
> always the maximum in this implementation
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 07ecf2a86742..fa7cf8453b88 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -661,6 +661,27 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
>  	return 0;
>  }
>  
> +#define ICE_ONE_PPS_OUT_AMP_MAX 3
> +
> +/**
> + * ice_cgu_ena_pps_out - Enable/disable 1PPS output
> + * @hw: pointer to the HW struct
> + * @ena: Enable/disable 1PPS output

Please include a "Returns: " or "Return: " section in the kernel doc
for functions that have a return value.

NIPA has recently got more picky about this.
Flagged by kernel-doc -none --Warn

> + */
> +int ice_cgu_ena_pps_out(struct ice_hw *hw, bool ena)
> +{
> +	union nac_cgu_dword9 dw9;
> +	int err;
> +
> +	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
> +	if (err)
> +		return err;
> +
> +	dw9.one_pps_out_en = ena;
> +	dw9.one_pps_out_amp = ena * ICE_ONE_PPS_OUT_AMP_MAX;
> +	return ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
> +}
> +
>  /**
>   * ice_cfg_cgu_pll_dis_sticky_bits_e82x - disable TS PLL sticky bits
>   * @hw: pointer to the HW struct

...
