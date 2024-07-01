Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4533791E093
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 15:25:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A3E340DD4;
	Mon,  1 Jul 2024 13:25:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M7YvJyYjKTFm; Mon,  1 Jul 2024 13:25:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BD5740DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719840313;
	bh=zB2SvMoqNufq32y+7+S8ciYBTCaynthO2jF+5FS0wKA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ETkkz2epKReUVO+ymUzbhdzwcWVY+oE1oURAPacXqigho5KajhoXIJr+vOYi06Utt
	 2+nDJ2jyfQqCzhgqHIuoD3Mfu5cow7xFLu8lJAxXuTiIVPnMmTvJruQoO/URaraoTh
	 QxA/4Ken/Jnscn9Gwr6PaFaBvdNJTdYNA6IjR3vA8Lixpt5BI7cZyI10ZtZiJJoyGE
	 JmrGmCIgMiIbPZgw0fScArmtQH8jiKHVws2Ziwwow4V5CeoFi620q/gLizqnt0pFwZ
	 lQ8fLw6PNzIOLotpVp9WdXEWOOR7SlAeP+K1pgoX6HIspKEU/pj4HLPIBpadqTWbJy
	 Tfi9WXKsRlSqw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5BD5740DBF;
	Mon,  1 Jul 2024 13:25:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9BC31BF338
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B240C40495
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:25:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bFud9GefXJwa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 13:25:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C408740275
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C408740275
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C408740275
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:25:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A5ECD61312;
 Mon,  1 Jul 2024 13:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03A2DC32786;
 Mon,  1 Jul 2024 13:25:07 +0000 (UTC)
Date: Mon, 1 Jul 2024 14:25:05 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240701132505.GZ17134@kernel.org>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
 <20240627151127.284884-11-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240627151127.284884-11-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719840309;
 bh=D0/CEWGuvJGscf/vD5LTGqz5DliN0mtBJpu5nzWNAZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LNrE6wytoUV/09ibIITG72zc0LjbS/U4Ce3PCRFa4hs3ruq04Tuob6Z3LgP4NfnRr
 9/3cayn5GqkOhXGsj9A+Rq8mvyrHB3ZIFS2yNW/aeHSHJkg0myOfyYtuIuiCs7b+ME
 S2RsVJjpf8cOZpTADp8t7y+NysoMQETRTywj7zfVrLJUKK3UEs6ORM/o6ywRNWwRpz
 eEeuvUzFP3MqaVgW38WFLip9VVxVRSD+1ix9shY1TeOAJZnyW6YlMfmu8DHbmIfZIM
 JwoDeeUhMtebl+GsJYjYG76VB/B6sLCgbf6/+yfTChlhIlf3Cku+5MP2ATUfgiwixf
 LjqjEQ0gZSI/A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=LNrE6wyt
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/7] ice: Add SDPs support
 for E825C
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

On Thu, Jun 27, 2024 at 05:09:26PM +0200, Karol Kolacinski wrote:
> Add support of PTP SDPs (Software Definable Pins) for E825C products.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> @@ -2623,9 +2633,13 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
>  		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp_e82x;
>  
>  #endif /* CONFIG_ICE_HWTS */
> -	pf->ptp.info.enable = ice_ptp_gpio_enable;
> -	pf->ptp.info.verify = ice_verify_pin;
> -	pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
> +	if (ice_is_e825c(&pf->hw)) {
> +		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
> +		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
> +	} else {
> +		pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
> +		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
> +	}
>  	pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);

Hi Karol,

Maybe I'm reading it wrong, but should the line immediately
above be remove to avoid overwriting the value for pf->ptp.info.n_pins
set in the new if/else condition above?

>  	ice_ptp_setup_pin_cfg(pf);
>  }
> @@ -2673,6 +2687,8 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
>  	info->settime64 = ice_ptp_settime64;
>  	info->n_per_out = GLTSYN_TGT_H_IDX_MAX;
>  	info->n_ext_ts = GLTSYN_EVNT_H_IDX_MAX;
> +	info->enable = ice_ptp_gpio_enable;
> +	info->verify = ice_verify_pin;
>  
>  	if (ice_is_e810(&pf->hw))
>  		ice_ptp_set_funcs_e810(pf, info);

Moving these assignments seems unnecessary, but ok.
