Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9390BA3E59F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 21:11:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0570540E59;
	Thu, 20 Feb 2025 20:11:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dC1ithLVAoa9; Thu, 20 Feb 2025 20:11:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F173141293
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740082302;
	bh=zct5Vk3LNZ8BlnYp1F0mDJppPEtKXhOy/ZJQtMqEf0g=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WKgTMn2Cu216bzvw0+x5r0q6O+Ge69/UQhmN9Go0+ZAgC+PvfQkIqQ4UcaCKF2Gxa
	 hSm7FraH59sOyU0H9f/ABiPlTiEuldegi8YZJBqV8CBIplZjvco4XOhdZy1QQL6uhZ
	 uopqNH3G6SRhSBqY9q4JNmHd8ZOowYBj89VazTCwcD7sdBwK57UeKMZRrZwLK0G9np
	 R3CbEG9qmqK3SA6x5FmZ0X+kjqpKwA8C14FyeU6LzG/sAnZzWsCroS+zGPqDpZzMjN
	 /YUMmo/oErOx++Yo8aRum8T5Fi78/78+m1hN8ERTPV0V+ixB7cz3ylmr5rKlGkgquc
	 bi7QYh7Y8gmMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F173141293;
	Thu, 20 Feb 2025 20:11:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A26C8D92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 20:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 866C140E3E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 20:11:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uCvtsuyCEUiu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 20:11:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 212C840815
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 212C840815
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 212C840815
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 20:11:36 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af4e3.dynamic.kabel-deutschland.de
 [95.90.244.227])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6F3D461E6479C;
 Thu, 20 Feb 2025 21:11:02 +0100 (CET)
Message-ID: <eb5e8d47-30ba-4b95-9b34-ba2de829e131@molgen.mpg.de>
Date: Thu, 20 Feb 2025 21:11:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250220150438.352642-3-martyna.szapar-mudlaw@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250220150438.352642-3-martyna.szapar-mudlaw@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix fwlog after driver
 reinit
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Martyna,


Thank you for your patch.

Am 20.02.25 um 16:04 schrieb Martyna Szapar-Mudlaw:
> Fix an issue when firmware logging stops after devlink reload action
> driver_reinit or driver reset. Fix it by restoring fw logging when

Maybe elaborate, why/how driver reinit or reset disables fwlog.

> it was previously registered before these events.

I’d add a blank line between paragraphs.

> Restoring fw logging in these cases was faultily removed with new
> debugfs fw logging implementation.
> Failure to init fw logging is not a critical error so it is safely
> ignored.

How can this be tested?

> Fixes: 73671c3162c8 ("ice: enable FW logging")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++++++++++++
>   1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a03e1819e6d5..6d6873003bcb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5151,6 +5151,13 @@ int ice_load(struct ice_pf *pf)
>   
>   	devl_assert_locked(priv_to_devlink(pf));
>   
> +	if (pf->hw.fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
> +		err = ice_fwlog_register(&pf->hw);
> +		if (err)
> +			pf->hw.fwlog_cfg.options &=
> +				~ICE_FWLOG_OPTION_IS_REGISTERED;

Should an error be logged in the failure case?

> +	}
> +
>   	vsi = ice_get_main_vsi(pf);
>   
>   	/* init channel list */
> @@ -7701,6 +7708,13 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>   		goto err_init_ctrlq;
>   	}
>   
> +	if (hw->fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
> +		err = ice_fwlog_register(hw);
> +		if (err)
> +			hw->fwlog_cfg.options &=
> +				~ICE_FWLOG_OPTION_IS_REGISTERED;
> +	}

Ditto.

> +
>   	/* if DDP was previously loaded successfully */
>   	if (!ice_is_safe_mode(pf)) {
>   		/* reload the SW DB of filter tables */


Kind regards,

Paul
