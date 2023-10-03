Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E27437B60C4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 08:27:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 130DC60EB6;
	Tue,  3 Oct 2023 06:27:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 130DC60EB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696314440;
	bh=6F1MKVhIsFTXdtfET8jkuHrBctcQzJbRB642wp7LHOM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zyf2M+rM+vsVYXTHzyKxC/u6tzmPiMaeDke1u/hhfyx825JLTjzly/kjRucDk42GS
	 j4KYYcKzUFcfODd0HbEkaqKDg16+x+kkz7jbD7/zH4+rcKoOPQOYQb9K7kUSi90nH0
	 cOqFUTJrTH6lAjQdL/PmbX7OvXY7ipGO9/Tt1DaPKsN40s8GEy/lGGkG8xyCYMKQHe
	 UPr1QEvLZcCgCCurMHfN73tF4xXTXD9629TcRZB6MZyNYeCpfENXpYz8arpwI0mqs9
	 hAC+FSS2DYw06WDN/STdKHexJqD/ptfkyCCAQpls+SB9Z/rfu3jNgRvxkGhrEL0Ah3
	 PR+2PS3cywkNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wGU3x18hN-r7; Tue,  3 Oct 2023 06:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1BA760C11;
	Tue,  3 Oct 2023 06:27:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1BA760C11
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAB131BF393
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 06:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B270740140
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 06:27:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B270740140
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y7n7IlnTj82e for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 06:27:10 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5ED6E4004A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 06:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5ED6E4004A
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-5347e657a11so764930a12.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Oct 2023 23:27:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696314428; x=1696919228;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nasBPIo/xHcUBNpodGyPU6trXTolky3DJWsttEP7pMQ=;
 b=opPrEHkMqMtOQmrMzwXqWTQmg/zfZqx9z69cpZtXNUiO1eIpoSFWIlUXCxM31yzfdf
 WsToIpFrdPMN4KwMNPE/yGDpzE6XA8z7r7XZw0YlaYPcdWlATu1Riynac0i283kzCTKf
 k/Y6lbTB/GtFXylDKIGA11x4mhmVsyGJiEsW1X35/3gtfxeuVbrqo400YZBXM/s56SQa
 wZjemRIbQMFKwO2ZRnepJliU9z3keKbLsUjwv6/OCqEoIv1GmFH+MLOCcId1G0aIkcqJ
 krjUmxTuESTD/XyoWsQa0hhVs7aBkApYP+HpB+bRDFQJLw7LlZU5m2rquweZPO3PfsG/
 bZLg==
X-Gm-Message-State: AOJu0Yw31xCXRAJ27S6z2SJOC9keUPP1b9NcQXxRU4y25nILy4pU5EIr
 wyOTjBzpRqyC7jfPmaI2qc15hg==
X-Google-Smtp-Source: AGHT+IGktzEJPQwQ4FrIOHaSByngUhSzABrutCkp7xAGo5V5R4BfWDuJKH4B8vDl7eGG7nhBjMIC2g==
X-Received: by 2002:a50:ec89:0:b0:533:3d2b:7473 with SMTP id
 e9-20020a50ec89000000b005333d2b7473mr11167966edr.12.1696314427737; 
 Mon, 02 Oct 2023 23:27:07 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 b20-20020aa7c914000000b0053331f9094dsm323417edt.52.2023.10.02.23.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 23:27:07 -0700 (PDT)
Date: Tue, 3 Oct 2023 08:27:06 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZRu0OlwKWSmXFOcV@nanopsycho>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
 <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
 <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRrb87drG7aVrxsT@nanopsycho>
 <eb019ccf-c50b-e9d7-e4e6-f6574f805b49@linux.dev>
 <DM6PR11MB4657DB3C9BC3E1EFE6A2F3389BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4657DB3C9BC3E1EFE6A2F3389BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696314428; x=1696919228;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=nasBPIo/xHcUBNpodGyPU6trXTolky3DJWsttEP7pMQ=;
 b=PTQKYNiEdmV5bfJbKcDA7RAcaUukGVW/9FLLCMPbnJXNECm1VndJrcq1fN4GLUoe1h
 lShOQohfOZ2DVeHcDeMulQIbp28A/HsOm5MAD/EVQ9JImiGDy3CC94Csv4ggfH4mpGJP
 DGQqvyUtQooEu9c+OqGqVk6mRiYWYtaTQnng7jEIsMSCfCnM/17H2zEmeXRmmA2qSquv
 hOb8ZHdcbnmkjJ0bdscw0GJeIcUW1WAf8PvLEeNcYg7jE5gu7D2s16X94KW1hSWMSSGJ
 fObwIhQKtmmc5AYbzBPpSGmkaq/37L83IrwwBS51l2+vu07+z+SlGUI89O2P6nID3DGG
 3DSQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=PTQKYNiE
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
 support for pin-dpll signal phase offset/adjust
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Oct 03, 2023 at 01:10:39AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>>Vadim Fedorenko
>>Sent: Monday, October 2, 2023 5:09 PM
>>
>>On 02/10/2023 16:04, Jiri Pirko wrote:
>>> Mon, Oct 02, 2023 at 04:32:30PM CEST, arkadiusz.kubalewski@intel.com
>>> wrote:
>>>>> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>>>> Sent: Wednesday, September 27, 2023 8:09 PM
>>>>>
>>>>> On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
>>>>>> Add callback op (get) for pin-dpll phase-offset measurment.
>>>>>> Add callback ops (get/set) for pin signal phase adjustment.
>>>>>> Add min and max phase adjustment values to pin proprties.
>>>>>> Invoke get callbacks when filling up the pin details to provide user
>>>>>> with phase related attribute values.
>>>>>> Invoke phase-adjust set callback when phase-adjust value is provided
>>>>>> for
>>>>>> pin-set request.
>>>>>>
>>>>>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>>>
>>>>> [...]
>>>>>
>>>>>> +static int
>>>>>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>>>>>> *phase_adj_attr,
>>>>>> +		       struct netlink_ext_ack *extack)
>>>>>> +{
>>>>>> +	struct dpll_pin_ref *ref;
>>>>>> +	unsigned long i;
>>>>>> +	s32 phase_adj;
>>>>>> +	int ret;
>>>>>> +
>>>>>> +	phase_adj = nla_get_s32(phase_adj_attr);
>>>>>> +	if (phase_adj > pin->prop->phase_range.max ||
>>>>>> +	    phase_adj < pin->prop->phase_range.min) {
>>>>>> +		NL_SET_ERR_MSG(extack, "phase adjust value not supported");
>>>>>> +		return -EINVAL;
>>>>>> +	}
>>>>>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>>>>>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>>>>> +		struct dpll_device *dpll = ref->dpll;
>>>>>> +
>>>>>> +		if (!ops->phase_adjust_set)
>>>>>> +			return -EOPNOTSUPP;
>>>>>
>>>>> I'm thinking about this part. We can potentially have dpll devices with
>>>>> different expectations on phase adjustments, right? And if one of them
>>>>> won't be able to adjust phase (or will fail in the next line), then
>>>>> netlink will return EOPNOTSUPP while _some_ of the devices will be
>>>>> adjusted. Doesn't look great. Can we think about different way to apply
>>>>> the change?
>>>>>
>>>>
>>>> Well makes sense to me.
>>>>
>>>> Does following makes sense as a fix?
>>>> We would call op for all devices which has been provided with the op.
>>>> If device has no op -> add extack error, continue
>>>
>>> Is it real to expect some of the device support this and others don't?
>>> Is it true for ice?
>>> If not, I would got for all-or-nothing here.
>>>
>>
>>But nothing blocks vendors to provide such configuration. Should we
>>rollback the configuration? Otherwise we can easily make it
>>inconsistent.
>
>Good point, in such case rollback might be required.
>
>>
>>I'm more thinking of checking if all the devices returned error (or
>>absence of operation callback) and then return error instead of 0 with
>>extack filled in.
>>
>
>Well, what if different devices would return different errors?
>In general we would have to keep track of the error values returned in
>such case.. Assuming one is different than the other - still need to error
>extack them out? I guess it would be easier to return common error if there

In this case, it is common to return the first error hit and bail out,
not trying the rest.


>were only failures and let the driver fill the errors on extack, smt like:
>
>	int miss_cb_num = 0, dev_num = 0, err_num;
>
>	xa_for_each(&pin->dpll_refs, i, ref) {
>		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>		struct dpll_device *dpll = ref->dpll;
>
>		dev_num++;
>		if (!ops->phase_adjust_set) {
>			miss_cb_num++;
>			continue;
>		}
>		ret = ops->phase_adjust_set(pin,
>					dpll_pin_on_dpll_priv(dpll, pin),
>					dpll, dpll_priv(dpll), phase_adj,
>					extack);
>		if (ret)
>			err_num++;
>	}
>	if (dev_num == miss_cb_num)
>		return -EOPNOTSUPP;
>	if (dev_num == err_num)
>		return -EINVAL;
>	__dpll_pin_change_ntf(pin);
>	return 0;
>
>??
>
>Thank you!
>Arkadiusz
>
>>>
>>>> If device fails to set -> add extack error, continue
>>>> Function always returns 0.
>>>>
>>>> Thank you!
>>>> Arkadiusz
>>>>
>>>>>
>>>>>> +		ret = ops->phase_adjust_set(pin,
>>>>>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>>>>>> +					    dpll, dpll_priv(dpll), phase_adj,
>>>>>> +					    extack);
>>>>>> +		if (ret)
>>>>>> +			return ret;
>>>>>> +	}
>>>>>> +	__dpll_pin_change_ntf(pin);
>>>>>> +
>>>>>> +	return 0;
>>>>>> +}
>>>>>> +
>>
>>_______________________________________________
>>Intel-wired-lan mailing list
>>Intel-wired-lan@osuosl.org
>>https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
