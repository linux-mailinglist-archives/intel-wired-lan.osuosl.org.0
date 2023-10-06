Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E16377BB7FE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 14:41:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64EDB6141D;
	Fri,  6 Oct 2023 12:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64EDB6141D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696596112;
	bh=XCRXrdSuqyGLyTWUNTKzWi1R/AFUq6C4ho3nds4kPq8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0KlTkY8Fp9ByTFO926QwvE411nQUJfnUnPfkdjqJeD4MnVliTBk96Ss146wT3KzZ0
	 ozzgKl0EJLRhcKPTZmvoPWpKj9gmJuw+5GaiSewBLUyrce0ezEgRIu7deR9DVa2Jh8
	 0FPNBT9cRLyOjNdMCiLJn1kfQk9gjGoh1VG22TW2ALwyewJBSTB2msXlbI5oyybr06
	 hQx70FTQxZRl7ERWVje/5/0e9ySfRREhvhBIR7WoY4/EA5VpADt6h8/2kIa4oIklw/
	 Iio8+a45gnSHFmLFx2SKeXpyCK4c6lhtT7LwvUbsgm221PoaolQf+6PKZQg97CLNJY
	 Vt9xzV7jHvZbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QCxcJk8jnkUn; Fri,  6 Oct 2023 12:41:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CD24613CB;
	Fri,  6 Oct 2023 12:41:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CD24613CB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 020C81BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC289405D2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:41:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC289405D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pui59uNJC5qv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 12:41:44 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B9894013B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:41:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B9894013B
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-991c786369cso355548566b.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Oct 2023 05:41:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696596102; x=1697200902;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mW5SVktj2xUWf9LqoXpgBXu7K2ICps52XbOnVUo46IM=;
 b=IwtTiVxYZKJmqd3q3td7vKJ9GoLCRtsg9YuYbt+iItR12Q87SCMvLv6S2HDdnWMRjW
 cP36tRRIa7aDcpc+l8MUchQy4RCshTbB5tZWf4yGyvXnVKbgwPO8c3HYROmg7E98wfss
 VOrLG/u5eAzglMQUpJX3VE5a0JNqYfcBfuiPCIoLM5+73yTuDXeC5B/VjDLIMeEWorey
 WfU4BUaJS1DDugPJKOhQZUkOeq2vdTfH9N095sUyyRiy6exrVBmrHB47Y2Lb+NLE1Ha2
 3vRu4VMd7YwXqrXc88qeDUx8kixIq/sFDD0TDzzVZ0c4YimQtzEbNk/yUih6Y3ziTfKD
 g+Kg==
X-Gm-Message-State: AOJu0YyVgAA5ktXfT4WEdDXENEAGMInkQmWpYhbMKXHAKJ682ZzOwc9A
 0te5iTsR1ebAOZKGYAHwX8Bghw==
X-Google-Smtp-Source: AGHT+IGDzND6oeHj41td9dY/OmMaIkCdkLJphE1fmDDVPuSEB4VwAnf7dRKhLynRWUzgKd6WFcyYhw==
X-Received: by 2002:a17:907:b10:b0:9aa:e08:9fb7 with SMTP id
 h16-20020a1709070b1000b009aa0e089fb7mr6240513ejl.76.1696596102024; 
 Fri, 06 Oct 2023 05:41:42 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 oz10-20020a170906cd0a00b009ad8acac02asm2849794ejb.172.2023.10.06.05.41.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Oct 2023 05:41:41 -0700 (PDT)
Date: Fri, 6 Oct 2023 14:41:39 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Simon Horman <horms@kernel.org>
Message-ID: <ZSAAg39SzlDS55Kn@nanopsycho>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
 <20231006114101.1608796-5-arkadiusz.kubalewski@intel.com>
 <ZR/+noRCdnsy6QJo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZR/+noRCdnsy6QJo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696596102; x=1697200902;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=mW5SVktj2xUWf9LqoXpgBXu7K2ICps52XbOnVUo46IM=;
 b=Rco7dGBupe9Qh0nT9+Jild0irqWIf5Yx/f9MPG67q9cFqL4GdQBfClIfCaJR9UuA/I
 GSKxkxOzx8ZhTHFEN6cRu75n5azmEhklav0ZRCqZronpF1t9RU+aN6G2eN7KD7Iv/EGN
 9x12HveFRWLiCxo79F9r6O22HjaIaoAfSrrV5cxv3ahASP2uyjbldWHKfAiMH0H0Void
 SR/q9YpoWZvantfM3oFvnlCbpXWzAm+EaOYD1G9ZskwKf9j97Tl+Sb+quvhj76GXL7Yu
 zvEB0zT6VKAa7WoZEWSJlFEfxEhsQAJLsIrtNsDZywXWRZOFX3B2Fc8Dxx3ebNbN07s+
 xuuw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Rco7dGBu
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/5] ice: dpll: implement
 phase related callbacks
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
Cc: vadim.fedorenko@linux.dev, corbet@lwn.net, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Oct 06, 2023 at 02:33:34PM CEST, horms@kernel.org wrote:
>On Fri, Oct 06, 2023 at 01:41:00PM +0200, Arkadiusz Kubalewski wrote:
>> Implement new callback ops related to measurment and adjustment of
>> signal phase for pin-dpll in ice driver.
>> 
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>
>Hi Arkadiusz,
>
>some minor feedback from my side.
>
>If you do end up re-spinning the series, please consider
>running checkpatch.pl --codespell.
>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_dpll.c | 224 +++++++++++++++++++++-
>>  drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
>>  2 files changed, 230 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
>
>...
>
>> +/**
>> + * ice_dpll_phase_offset_get - callback for get dpll phase shift value
>> + * @pin: pointer to a pin
>> + * @pin_priv: private data pointer passed on pin registration
>> + * @dpll: registered dpll pointer
>> + * @dpll_priv: private data pointer passed on dpll registration
>> + * @phase_adjust: on success holds pin phase_adjust value
>
>nit: The parameter is called phase_offset, not phase_adjust in the code below

Yeah, the non-sense static function docs and how buggy they are. Nobody
reads them anyway. Same old story for ice I guess....


>
>> + * @extack: error reporting
>> + *
>> + * Dpll subsystem callback. Handler for getting phase shift value between
>> + * dpll's input and output.
>> + *
>> + * Context: Acquires pf->dplls.lock
>> + * Return:
>> + * * 0 - success
>> + * * negative - error
>> + */
>> +static int
>> +ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
>> +			  const struct dpll_device *dpll, void *dpll_priv,
>> +			  s64 *phase_offset, struct netlink_ext_ack *extack)
>> +{
>> +	struct ice_dpll *d = dpll_priv;
>> +	struct ice_pf *pf = d->pf;
>> +
>> +	mutex_lock(&pf->dplls.lock);
>> +	if (d->active_input == pin)
>> +		*phase_offset = d->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
>> +	else
>> +		*phase_offset = 0;
>> +	mutex_unlock(&pf->dplls.lock);
>> +
>> +	return 0;
>> +}
>> +
>>  /**
>>   * ice_dpll_rclk_state_on_pin_set - set a state on rclk pin
>>   * @pin: pointer to a pin
>
>...
>
>> @@ -1656,6 +1867,15 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
>>  				return ret;
>>  			pins[i].prop.capabilities |=
>>  				DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE;
>> +			pins[i].prop.phase_range.min =
>> +				pf->dplls.input_phase_adj_max;
>> +			pins[i].prop.phase_range.max =
>> +				-pf->dplls.input_phase_adj_max;
>> +		} else {
>> +			pins[i].prop.phase_range.min =
>> +				pf->dplls.output_phase_adj_max,
>
>nit: It probably doesn't make any difference, but perhaps ',' should be ';'.
>
>As flagged by clang-16 with -Wcomma
>
>> +			pins[i].prop.phase_range.max =
>> +				-pf->dplls.output_phase_adj_max;
>>  		}
>>  		pins[i].prop.capabilities |=
>>  			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
>
>...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
