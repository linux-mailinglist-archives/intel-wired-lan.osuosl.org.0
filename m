Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F09D7B55FC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Oct 2023 17:04:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 494F081FCD;
	Mon,  2 Oct 2023 15:04:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 494F081FCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696259071;
	bh=xfVpcoy+zhUyzDHr7N+xjPp5R9a8/M8J82xUosT02hs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XADodE25BMWw++ybQrmK24kVlke2UldATH0v+fqnMS11Gp+bwj4Ds747u36DXGonp
	 Hsmbo1ndxb0BW7iOXyrb6Rw7IHWVngRT4o2NGdL2Lf8ejt8IxZFUhvPdCFOR1QHDst
	 TC62SCFAuKR6TMA3zwgRPBCFgw0zORRr4tEa5kVTnjiVTwmF6vn8A8wz25iWjDGI5e
	 +pu1An/NfKVJmQKEy09XP5B4zjQNuLpP3fM7KTYtS6o6P4Uj8r6A04nMFOFA9o4XS3
	 sxUKcOpDXjHpfGPkWFBCekauHfZzrzgGpVwxSJwDEEpjkFwH0MzzrJw/pLPQ8MuCIW
	 8gwR0dBualaVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZS-IF_nohweo; Mon,  2 Oct 2023 15:04:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4E7581E4D;
	Mon,  2 Oct 2023 15:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4E7581E4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FEF91BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 15:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9D8C414C5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 15:04:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9D8C414C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7qzniiEJf_o for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Oct 2023 15:04:23 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67F2C41174
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 15:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67F2C41174
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-9b2cee40de8so717096666b.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Oct 2023 08:04:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696259061; x=1696863861;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QvJNZIXntn7YAjmySz9d+Qe4GmC8D4FRYo7VLjmUagg=;
 b=Ay1HJz7FS4azk733QyNhBXz0gLreHHYFAkWv3efPdID6MPF5KC1cL/KshCIUZyGz0X
 JWeuZ0KQQqAfwKKh+E7JJnRnS8bOc9ShUim1NXI03lJWvmJqYLQfK4XWCWMerFppbLju
 dd+ffuBKVm6jxdo03iB82yIGz+KqHgUGpMUIw7w78YOszQUsILczvicqGPb5OrD/5QbI
 59cq7LuWsSoatZZcKbySUP9JgFbzi/oZL5AqFwnZrTiMPSzcW/YvceAY6CmeEYDfdCjh
 KtqGHpO1MqP9Sb/U97buJuZ9g0vh2WgKR2tU20in8Opei2mq8LGDHEO/HsYfrtLvFgIc
 q+NQ==
X-Gm-Message-State: AOJu0YwMtt52EdCcEk7Ms7n8ZtA5oC+NTxl/eXE+oens++xTaxHPZCKU
 Ek2OKWsHw987eHwVxhOcDY762g==
X-Google-Smtp-Source: AGHT+IFqh9NllzilyvM7mFV52YUwfOckVeUvhQSKiDUSgq1yDje1H5h8BEDhUqmgu0imlejHcXw1yQ==
X-Received: by 2002:a17:907:948b:b0:9a5:aa43:1c7c with SMTP id
 dm11-20020a170907948b00b009a5aa431c7cmr11678072ejc.26.1696259061042; 
 Mon, 02 Oct 2023 08:04:21 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 lz1-20020a170906fb0100b0099b5a71b0bfsm17185248ejb.94.2023.10.02.08.04.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 08:04:20 -0700 (PDT)
Date: Mon, 2 Oct 2023 17:04:19 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZRrb87drG7aVrxsT@nanopsycho>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
 <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
 <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696259061; x=1696863861;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=QvJNZIXntn7YAjmySz9d+Qe4GmC8D4FRYo7VLjmUagg=;
 b=JmoP/NctLC1z0c3PJ5tdmzReKb1Z4OJWehgvng4kyheqrultAr2US6rbVp9wcZGZ/L
 ZisgA1YRAcgHTio69MXlwxzJxncPJ2t6ltfAVFcCGSSFe2nV4Z5I10K4wWC5/3opKzfQ
 TEci34eA/wgNAYKTt/9FSxHTGaK/QcIYrB+9EyZvSKoh0sk17zxq+H2XjjQtr/Rf/Hqb
 Y1UN3efDilgjSye60XqH45fsOaGlXnWUCuE/qkezEXJyb5yCki44EvMYvpjcy9MzJfgR
 2bXQUv8mRw1t5pnSfUSSpDISsJsqoefWUcvesH3OtVBuu+V9odH1dEiZ1fXtWHtpfTaw
 NWzA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=JmoP/Nct
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

Mon, Oct 02, 2023 at 04:32:30PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>Sent: Wednesday, September 27, 2023 8:09 PM
>>
>>On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
>>> Add callback op (get) for pin-dpll phase-offset measurment.
>>> Add callback ops (get/set) for pin signal phase adjustment.
>>> Add min and max phase adjustment values to pin proprties.
>>> Invoke get callbacks when filling up the pin details to provide user
>>> with phase related attribute values.
>>> Invoke phase-adjust set callback when phase-adjust value is provided for
>>> pin-set request.
>>>
>>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>
>>[...]
>>
>>> +static int
>>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>>> *phase_adj_attr,
>>> +		       struct netlink_ext_ack *extack)
>>> +{
>>> +	struct dpll_pin_ref *ref;
>>> +	unsigned long i;
>>> +	s32 phase_adj;
>>> +	int ret;
>>> +
>>> +	phase_adj = nla_get_s32(phase_adj_attr);
>>> +	if (phase_adj > pin->prop->phase_range.max ||
>>> +	    phase_adj < pin->prop->phase_range.min) {
>>> +		NL_SET_ERR_MSG(extack, "phase adjust value not supported");
>>> +		return -EINVAL;
>>> +	}
>>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>> +		struct dpll_device *dpll = ref->dpll;
>>> +
>>> +		if (!ops->phase_adjust_set)
>>> +			return -EOPNOTSUPP;
>>
>>I'm thinking about this part. We can potentially have dpll devices with
>>different expectations on phase adjustments, right? And if one of them
>>won't be able to adjust phase (or will fail in the next line), then
>>netlink will return EOPNOTSUPP while _some_ of the devices will be
>>adjusted. Doesn't look great. Can we think about different way to apply
>>the change?
>>
>
>Well makes sense to me.
>
>Does following makes sense as a fix?
>We would call op for all devices which has been provided with the op.
>If device has no op -> add extack error, continue

Is it real to expect some of the device support this and others don't?
Is it true for ice?
If not, I would got for all-or-nothing here.


>If device fails to set -> add extack error, continue
>Function always returns 0.
>
>Thank you!
>Arkadiusz
>
>>
>>> +		ret = ops->phase_adjust_set(pin,
>>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>>> +					    dpll, dpll_priv(dpll), phase_adj,
>>> +					    extack);
>>> +		if (ret)
>>> +			return ret;
>>> +	}
>>> +	__dpll_pin_change_ntf(pin);
>>> +
>>> +	return 0;
>>> +}
>>> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
