Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB977B6F84
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 19:19:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 914554149D;
	Tue,  3 Oct 2023 17:19:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 914554149D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696353547;
	bh=t8rzXQedGmBXqD2NYPQp6TEmYfnKLPvV+ISFCBSj5E0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c/JYDMveA0O2f2yo8fntNYIHFx/EEXIQCOPBTsdZ13K7HctfNvkJaRc/jI3iiX6hc
	 JFUarr2LwQ7oPVNZaKAZjZQZdoCquv+6NbNTJS9pQAPrhQ53RXfv1qsMAEHfmPThQU
	 S06Hqkx2C44K+M1V69iVn1thlnF0tb5ePZctfPE9Ywv1NG1Wqimgu0+87SGqPTpfj2
	 dfJp+WwkexW5yXGA64pUOWzjTM+5xDOgbn6dAKfMrugNnHfST3168eHOAtWQfjYfrV
	 q83aXs3E40HjrzyqYy5pQXanyaO4d97i5ieM1OS62k5jUzL9IIc2JNDok4SXG8nCtL
	 DmAHdk+h+04Gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7A0LVffsXO02; Tue,  3 Oct 2023 17:19:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDDBD4148B;
	Tue,  3 Oct 2023 17:19:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDDBD4148B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 97E6F1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:19:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6EFE88227C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:19:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EFE88227C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkCW4daPjqRK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 17:19:00 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F1478227A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:18:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F1478227A
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-99c3c8adb27so224702666b.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Oct 2023 10:18:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696353537; x=1696958337;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5EnlzNRFWMQ7thQWMg/qT9DCbeAiLijmJLaD1WjKhQ4=;
 b=czzSzvlQciHalojRA4a56/5r2OA2Ch7LziZTomwwOvBYUyaIYRITk6+Zh4+nn1iDtX
 swxj4qmyavNoRAutELEnlZNObbvkgVkOZJMaDjUfCIrsHyvlWzDYQNkIEw3du2ADdQvu
 JzU6FXtxLQorGgu8O7/IYmJ0IlU8Cj5y0hFIoSwWTpLP4gb8br+nz2C0pPJLbZ2FJniP
 q3v5N1eQSK1ZVbkS3FdeI4b2rU5Iqv90G0xJU0iX/cW94YSV+zQFhbl621bJZSwPJ5Mx
 o0o2CcMCD4dwJSyVar1kItUTLQt8mO1HfAwuFQ2Iv4taT+c2Tr0Vb6miuVc6KVxOcSHI
 8fwQ==
X-Gm-Message-State: AOJu0Yx3v4/LMtiuZJLl+9X48NdJUKVSvPkdhnC+522hnqV2vRnx7TnV
 iSSsVI+smkcViz5cYrG7Ry35nQ==
X-Google-Smtp-Source: AGHT+IFZlMvMFeZ+OIrO7SCq93L8uRpsoOdhD5LXSPfy8mVx/wszOcWdFS9c324GMhaor8MVEZFISg==
X-Received: by 2002:a17:906:3cb2:b0:9ad:df85:97ae with SMTP id
 b18-20020a1709063cb200b009addf8597aemr13771395ejh.66.1696353537104; 
 Tue, 03 Oct 2023 10:18:57 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 jw21-20020a17090776b500b009786c8249d6sm1389944ejc.175.2023.10.03.10.18.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Oct 2023 10:18:56 -0700 (PDT)
Date: Tue, 3 Oct 2023 19:18:55 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZRxM/+njiiu78b9p@nanopsycho>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
 <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
 <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRrb87drG7aVrxsT@nanopsycho>
 <eb019ccf-c50b-e9d7-e4e6-f6574f805b49@linux.dev>
 <DM6PR11MB4657DB3C9BC3E1EFE6A2F3389BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRu0OlwKWSmXFOcV@nanopsycho>
 <DM6PR11MB46573DF9081298B816A215329BC4A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB46573DF9081298B816A215329BC4A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696353537; x=1696958337;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=5EnlzNRFWMQ7thQWMg/qT9DCbeAiLijmJLaD1WjKhQ4=;
 b=Kh1dQYwDRtJwVW8v4F17j/O2692/6WF6Id8kNaPdet3tMvsl2EiVtm8dRs9qYyaAnb
 4Js65i2tFu2Wo8bsTC0MuAzXvrE6bQ8h9oR8sX8zaGmgi8Iz7sACEjEtgsHWTYeCYFJH
 7zF2JKb6cvR9HrHKH3SlUy78kQn7Pty+1yMqdgSWHu+S6NSN71IT8OvsSCsv3gPxAIKM
 OYleSGtCoG99EeWagmaJZrlbsD1SSujSmw2D+i4ZhdiPrC3WMiiemrYP80UspFjja6LI
 4Ax0ZHeS/RQ3F2Uhvnj/gT/q3lX51p5eanYjFdrAavO9v1ptHtV6BocY54Vm4R9Bz/in
 zXMA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Kh1dQYwD
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

Tue, Oct 03, 2023 at 04:29:13PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Tuesday, October 3, 2023 8:27 AM
>>To: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
>>
>>Tue, Oct 03, 2023 at 01:10:39AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>>>>Vadim Fedorenko
>>>>Sent: Monday, October 2, 2023 5:09 PM
>>>>
>>>>On 02/10/2023 16:04, Jiri Pirko wrote:
>>>>> Mon, Oct 02, 2023 at 04:32:30PM CEST, arkadiusz.kubalewski@intel.com
>>>>> wrote:
>>>>>>> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>>>>>> Sent: Wednesday, September 27, 2023 8:09 PM
>>>>>>>
>>>>>>> On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
>>>>>>>> Add callback op (get) for pin-dpll phase-offset measurment.
>>>>>>>> Add callback ops (get/set) for pin signal phase adjustment.
>>>>>>>> Add min and max phase adjustment values to pin proprties.
>>>>>>>> Invoke get callbacks when filling up the pin details to provide user
>>>>>>>> with phase related attribute values.
>>>>>>>> Invoke phase-adjust set callback when phase-adjust value is provided
>>>>>>>> for
>>>>>>>> pin-set request.
>>>>>>>>
>>>>>>>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>>>>>
>>>>>>> [...]
>>>>>>>
>>>>>>>> +static int
>>>>>>>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>>>>>>>> *phase_adj_attr,
>>>>>>>> +		       struct netlink_ext_ack *extack)
>>>>>>>> +{
>>>>>>>> +	struct dpll_pin_ref *ref;
>>>>>>>> +	unsigned long i;
>>>>>>>> +	s32 phase_adj;
>>>>>>>> +	int ret;
>>>>>>>> +
>>>>>>>> +	phase_adj = nla_get_s32(phase_adj_attr);
>>>>>>>> +	if (phase_adj > pin->prop->phase_range.max ||
>>>>>>>> +	    phase_adj < pin->prop->phase_range.min) {
>>>>>>>> +		NL_SET_ERR_MSG(extack, "phase adjust value not
>>>>>>>> supported");
>>>>>>>> +		return -EINVAL;
>>>>>>>> +	}
>>>>>>>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>>>>>>>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>>>>>>> +		struct dpll_device *dpll = ref->dpll;
>>>>>>>> +
>>>>>>>> +		if (!ops->phase_adjust_set)
>>>>>>>> +			return -EOPNOTSUPP;
>>>>>>>
>>>>>>> I'm thinking about this part. We can potentially have dpll devices
>>>>>>> with
>>>>>>> different expectations on phase adjustments, right? And if one of
>>>>>>> them
>>>>>>> won't be able to adjust phase (or will fail in the next line), then
>>>>>>> netlink will return EOPNOTSUPP while _some_ of the devices will be
>>>>>>> adjusted. Doesn't look great. Can we think about different way to
>>>>>>> apply
>>>>>>> the change?
>>>>>>>
>>>>>>
>>>>>> Well makes sense to me.
>>>>>>
>>>>>> Does following makes sense as a fix?
>>>>>> We would call op for all devices which has been provided with the op.
>>>>>> If device has no op -> add extack error, continue
>>>>>
>>>>> Is it real to expect some of the device support this and others don't?
>>>>> Is it true for ice?
>>>>> If not, I would got for all-or-nothing here.
>>>>>
>>>>
>>>>But nothing blocks vendors to provide such configuration. Should we
>>>>rollback the configuration? Otherwise we can easily make it
>>>>inconsistent.
>>>
>>>Good point, in such case rollback might be required.
>>>
>>>>
>>>>I'm more thinking of checking if all the devices returned error (or
>>>>absence of operation callback) and then return error instead of 0 with
>>>>extack filled in.
>>>>
>>>
>>>Well, what if different devices would return different errors?
>>>In general we would have to keep track of the error values returned in
>>>such case.. Assuming one is different than the other - still need to error
>>>extack them out? I guess it would be easier to return common error if
>>there
>>
>>In this case, it is common to return the first error hit and bail out,
>>not trying the rest.
>>
>
>OK, so now I see it like this:
>-> check if all device implement callback, if not return EOPNOTSUPP;
>-> get old phase_adjust
>-> if new == old, return EINVAL

0 would be better, no? User has what he desired.


>-> for each device: call phase_adjust_set, if fails, rollback all previous
>   successful attempts and return the failure code

That would work.


>?
>
>Thank you!
>Arkadiusz
>
>>
>>>were only failures and let the driver fill the errors on extack, smt like:
>>>
>>>	int miss_cb_num = 0, dev_num = 0, err_num;
>>>
>>>	xa_for_each(&pin->dpll_refs, i, ref) {
>>>		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>>		struct dpll_device *dpll = ref->dpll;
>>>
>>>		dev_num++;
>>>		if (!ops->phase_adjust_set) {
>>>			miss_cb_num++;
>>>			continue;
>>>		}
>>>		ret = ops->phase_adjust_set(pin,
>>>					dpll_pin_on_dpll_priv(dpll, pin),
>>>					dpll, dpll_priv(dpll), phase_adj,
>>>					extack);
>>>		if (ret)
>>>			err_num++;
>>>	}
>>>	if (dev_num == miss_cb_num)
>>>		return -EOPNOTSUPP;
>>>	if (dev_num == err_num)
>>>		return -EINVAL;
>>>	__dpll_pin_change_ntf(pin);
>>>	return 0;
>>>
>>>??
>>>
>>>Thank you!
>>>Arkadiusz
>>>
>>>>>
>>>>>> If device fails to set -> add extack error, continue
>>>>>> Function always returns 0.
>>>>>>
>>>>>> Thank you!
>>>>>> Arkadiusz
>>>>>>
>>>>>>>
>>>>>>>> +		ret = ops->phase_adjust_set(pin,
>>>>>>>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>>>>>>>> +					    dpll, dpll_priv(dpll), phase_adj,
>>>>>>>> +					    extack);
>>>>>>>> +		if (ret)
>>>>>>>> +			return ret;
>>>>>>>> +	}
>>>>>>>> +	__dpll_pin_change_ntf(pin);
>>>>>>>> +
>>>>>>>> +	return 0;
>>>>>>>> +}
>>>>>>>> +
>>>>
>>>>_______________________________________________
>>>>Intel-wired-lan mailing list
>>>>Intel-wired-lan@osuosl.org
>>>>https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
