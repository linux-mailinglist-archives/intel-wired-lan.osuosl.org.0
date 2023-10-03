Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344F07B6F94
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 19:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5222B414C9;
	Tue,  3 Oct 2023 17:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5222B414C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696353597;
	bh=33+WXqRwPSyr2s1cGgatFrguBEdqrDD0+OIyOXwcDkk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nAPiZNmaoUGfwKMAoYyoTNVvE2uW4OFcsbFQXj6ywdwkSUueOp3TlKAZaxrmx2NXM
	 vrVvHCg/Dmi3tMVsao4QO426KDhhkQ65nBUXZvFKMQnS0uak8R8r4+3TNA3/D72++A
	 iwGoL573XeDouWl/jwkH4mG+y5P9anqIFicxlPQvl1+MfYip4+Qt1LdXlkiPl2OBy+
	 AJgsP0lZzsGrxNDfXxMLlsGKXgJ25tMtIUxs+elDaeugyrWSWcSQIVF405CRS3tdOJ
	 BsW9QTLid31vsNgdDaEQvCVc1zzlf9qkTaag5CSyowrwDXvm+HRtRsponxrJvVCF9H
	 9JP43evqIjbug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zJRBD8tuwezc; Tue,  3 Oct 2023 17:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E32BB414C2;
	Tue,  3 Oct 2023 17:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E32BB414C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01FDC1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D369F40149
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D369F40149
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s4xJ3A7g2rCY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 17:19:48 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F8D141F35
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F8D141F35
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-991c786369cso200899266b.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Oct 2023 10:19:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696353586; x=1696958386;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Nm1Co97Gzfh8Vq750T8kSdQUCIb/1ye+ULTOO7iQfz8=;
 b=nTH5M4czTk8Lwi58hbsnj8b2gu5644rLPI3sxLM07Hw+OfFXAE+E9fNSHfQM561pQo
 VC2hb65rEJfIhkq6XhZxcNV/gpBlN/gnancREZeD55V4TzTRV+oFaLEHLaD30I6UaDEo
 46dNOEoAj9lef24t67NZ3nLX39nk43dMQI+2rNIfeIwVLpW//0mCyfUh6TUA0n/3FRB0
 GZTWsChje975c1dNyzu3OzthYCRwHkUPDUna193zFCaX3YUFbfbupCtsDgiBbe5Siy1E
 HAnqapwR9kSdD03zBtu4Bs7YKhFvYTUqpE9yb5qCPzw2KXJU3hmYnf9HksALTOzqKH0D
 npjw==
X-Gm-Message-State: AOJu0Yy57+FfodQCDfoO2/PeJuCMI6bkpCp5caP7Y7EnZwuRDRN1aXON
 +4xg10ytNYIpoD26U6PWdpylBg==
X-Google-Smtp-Source: AGHT+IFL89GFPQftGrDAdWk1LB4hpVU3dne0w1ogcBIfCpwhJPO4BRAxt67OuAblcJV4cPFvVxZBvw==
X-Received: by 2002:a17:906:1350:b0:9ae:3d17:d5d0 with SMTP id
 x16-20020a170906135000b009ae3d17d5d0mr13562375ejb.31.1696353586218; 
 Tue, 03 Oct 2023 10:19:46 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 ss26-20020a170907039a00b009a5f1d15644sm1325283ejb.119.2023.10.03.10.19.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Oct 2023 10:19:45 -0700 (PDT)
Date: Tue, 3 Oct 2023 19:19:44 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZRxNML855TG7L5To@nanopsycho>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
 <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
 <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRrb87drG7aVrxsT@nanopsycho>
 <DM6PR11MB4657C61104280788DF49F0E59BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRu1cG2uglhmCdlI@nanopsycho>
 <DM6PR11MB4657B52BD09700F49799ED8C9BC4A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4657B52BD09700F49799ED8C9BC4A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696353586; x=1696958386;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Nm1Co97Gzfh8Vq750T8kSdQUCIb/1ye+ULTOO7iQfz8=;
 b=yvCzsN8FWt0xbim8mOlhfmOGPw1RzA/jekP1BIyC+XTL18lRbPBu/MCVvGEQz026Jq
 thF7MkZ0Hmw9g/vBKdxLHg86w0aB7+mKI60EaKbyH7M21I9xZk/Iqww6Ex0KbKSd4AxY
 +MvNVMgF0etD51objt293AtkjGqAjaP0ioNlY9R9yG4jc5D7Ve9Mq8hz6XGkxzisk/5m
 ESaYhIgWDLYXW6ihHh0ou0OpQjFCTtSoZneU18GbiuTp8vF5PJKXrDYMCRxzdviDCmK8
 /A0Qn6Z6w3miqAi3USVmAnvxlWmUm7mXBdtqhz2dZ3scR90+P49kaNAeblhB40QA1jSY
 t4kw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=yvCzsN8F
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
 "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Oct 03, 2023 at 04:29:43PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Tuesday, October 3, 2023 8:32 AM
>>
>>Tue, Oct 03, 2023 at 01:03:00AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>>From: Jiri Pirko <jiri@resnulli.us>
>>>>Sent: Monday, October 2, 2023 5:04 PM
>>>>
>>>>Mon, Oct 02, 2023 at 04:32:30PM CEST, arkadiusz.kubalewski@intel.com
>>>>wrote:
>>>>>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>>>>>Sent: Wednesday, September 27, 2023 8:09 PM
>>>>>>
>>>>>>On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
>>>>>>> Add callback op (get) for pin-dpll phase-offset measurment.
>>>>>>> Add callback ops (get/set) for pin signal phase adjustment.
>>>>>>> Add min and max phase adjustment values to pin proprties.
>>>>>>> Invoke get callbacks when filling up the pin details to provide user
>>>>>>> with phase related attribute values.
>>>>>>> Invoke phase-adjust set callback when phase-adjust value is provided
>>>>>>> for
>>>>>>> pin-set request.
>>>>>>>
>>>>>>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>>>>
>>>>>>[...]
>>>>>>
>>>>>>> +static int
>>>>>>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>>>>>>> *phase_adj_attr,
>>>>>>> +		       struct netlink_ext_ack *extack)
>>>>>>> +{
>>>>>>> +	struct dpll_pin_ref *ref;
>>>>>>> +	unsigned long i;
>>>>>>> +	s32 phase_adj;
>>>>>>> +	int ret;
>>>>>>> +
>>>>>>> +	phase_adj = nla_get_s32(phase_adj_attr);
>>>>>>> +	if (phase_adj > pin->prop->phase_range.max ||
>>>>>>> +	    phase_adj < pin->prop->phase_range.min) {
>>>>>>> +		NL_SET_ERR_MSG(extack, "phase adjust value not
>>>>>>> supported");
>>>>>>> +		return -EINVAL;
>>>>>>> +	}
>>>>>>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>>>>>>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>>>>>> +		struct dpll_device *dpll = ref->dpll;
>>>>>>> +
>>>>>>> +		if (!ops->phase_adjust_set)
>>>>>>> +			return -EOPNOTSUPP;
>>>>>>
>>>>>>I'm thinking about this part. We can potentially have dpll devices with
>>>>>>different expectations on phase adjustments, right? And if one of them
>>>>>>won't be able to adjust phase (or will fail in the next line), then
>>>>>>netlink will return EOPNOTSUPP while _some_ of the devices will be
>>>>>>adjusted. Doesn't look great. Can we think about different way to apply
>>>>>>the change?
>>>>>>
>>>>>
>>>>>Well makes sense to me.
>>>>>
>>>>>Does following makes sense as a fix?
>>>>>We would call op for all devices which has been provided with the op.
>>>>>If device has no op -> add extack error, continue
>>>>
>>>>Is it real to expect some of the device support this and others don't?
>>>>Is it true for ice?
>>>>If not, I would got for all-or-nothing here.
>>>>
>>>
>>>Let's step back a bit.
>>>The op itself is introduced as per pin-dpll tuple.. did this
>>>intentionally,
>>>to inform each dpll that the offset has been changed - in case dplls are
>>>controlled by separated driver/firmware instances but still sharing the
>>>pin.
>>>Same way a pin frequency is being set, from user perspective on a pin, but
>>>callback is called for each dpll the pin was registered with.
>>>Whatever we do here, it shall be probably done for frequency_set()
>>>callback as
>>>well.
>>>
>>>The answers:
>>>So far I don't know the device that might do it this way, it rather
>>>supports
>>>phase_adjust or not. In theory we allow such behavior to be implemented,
>>>i.e.
>>>pin is registered with 2 dplls, one has the callback, second not.
>>
>>If there is only theoretical device like that now, implement
>>all-or-nothing. If such theoretical device appears in real, this could
>>be changed. The UAPI would not change, no problem.
>>
>
>I can live with it :)
>
>>
>>>Current hardware of ice sets phase offset for a pin no matter on which
>>>dpll
>>>device callback was invoked.
>>>"all-or-nothing" - do you mean to check all callback returns and then
>>>decide
>>>if it was successful?
>>
>>Check if all dplls have ops and only perform the action in such case. In
>>case one of the dplls does not have the op filled, return -EOPNOTSUPP.
>>
>>
>>Regarding the successful/failed op, I think you can just return. In
>>these cases, when user performs multiaction cmd, he should be prepared
>>to deal with consequences if part of this cmd fails. We don't have
>>rollback for any other multiaction cmd in dpll, I don't see why this
>>should be treated differently.
>>
>
>We don't have it because no one have spotted it on review,
>as mentioned the frequency_set behaves the same way,
>we need one approach for all of those cases.
>I am opting for having the rollback as suggested on the other thread.

Okay, but let's do that consistently.

>
>Thank you!
>Arkadiusz
>
>>
>>>
>>>Thank you!
>>>Arkadiusz
>>>
>>>>
>>>>>If device fails to set -> add extack error, continue
>>>>>Function always returns 0.
>>>>>
>>>>>Thank you!
>>>>>Arkadiusz
>>>>>
>>>>>>
>>>>>>> +		ret = ops->phase_adjust_set(pin,
>>>>>>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>>>>>>> +					    dpll, dpll_priv(dpll), phase_adj,
>>>>>>> +					    extack);
>>>>>>> +		if (ret)
>>>>>>> +			return ret;
>>>>>>> +	}
>>>>>>> +	__dpll_pin_change_ntf(pin);
>>>>>>> +
>>>>>>> +	return 0;
>>>>>>> +}
>>>>>>> +
>>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
