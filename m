Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D37817B5607
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Oct 2023 17:09:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 601E382105;
	Mon,  2 Oct 2023 15:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 601E382105
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696259378;
	bh=cnbZI7gWMeHmtDBDkl1mO8OafGn7kkwIO0KcvP2ytww=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6L7r4C/wWPUElWliUlPXzrnOwyjlF4QuQ45E9szCijxHHZltUtTqegMXAnYinKk0B
	 T03A6PIZNmvcbh7obgt9xHcBaD15QlsdBH40wI0RyxafwP5GofZxupdZONNttdqRlt
	 Kvgh/UBixEEdfoTmXb4WkXHE/Qy5s//uLq8QSDBdwRMN2Bdjb4TlAhhEq0Z9+5kOCx
	 tdJnNhevgzVEbZgD6TswGAvhZdfwlT4QufLvJTMWucfPXmFUo6GC1lClcuA5LO3CiF
	 QTLqLVfCfIFVGmeVqjAgskszgUs0qzXwLHAZ+vQ+UQ/UTc2eInzQoNv0RkfY9qcPMA
	 c7hG+D4z4GxcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z_ypUAuK_IGa; Mon,  2 Oct 2023 15:09:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BADB82036;
	Mon,  2 Oct 2023 15:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BADB82036
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B967E1BF947
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 15:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EB6382092
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 15:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EB6382092
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xPWWqxRD30sh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Oct 2023 15:09:30 +0000 (UTC)
Received: from out-204.mta0.migadu.com (out-204.mta0.migadu.com
 [91.218.175.204])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54F758204F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 15:09:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54F758204F
Message-ID: <eb019ccf-c50b-e9d7-e4e6-f6574f805b49@linux.dev>
Date: Mon, 2 Oct 2023 16:09:18 +0100
MIME-Version: 1.0
Content-Language: en-US
To: Jiri Pirko <jiri@resnulli.us>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
 <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
 <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRrb87drG7aVrxsT@nanopsycho>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <ZRrb87drG7aVrxsT@nanopsycho>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1696259366;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gGFXAbaXs8Nj2Cpg5sbO/dCRiJqdUsZgRUuUMFLuVoM=;
 b=VCub66B2s0NLBdJlQd/0EA+LIabve3M0YS4jSkZrd7Pmh4c/m8DAi6C84IDDvMioX5Pz5+
 PufnICXQtrAo8Iqb+1hTKiwkpOdpNhP3K1MbV8D+uBXnQ6LtZKWRPetQAO41GujGztGxF0
 QA/nNYVF+TKp11pwibFcRBnBzFQEdHU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=VCub66B2
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
Cc: "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 02/10/2023 16:04, Jiri Pirko wrote:
> Mon, Oct 02, 2023 at 04:32:30PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>> Sent: Wednesday, September 27, 2023 8:09 PM
>>>
>>> On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
>>>> Add callback op (get) for pin-dpll phase-offset measurment.
>>>> Add callback ops (get/set) for pin signal phase adjustment.
>>>> Add min and max phase adjustment values to pin proprties.
>>>> Invoke get callbacks when filling up the pin details to provide user
>>>> with phase related attribute values.
>>>> Invoke phase-adjust set callback when phase-adjust value is provided for
>>>> pin-set request.
>>>>
>>>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>
>>> [...]
>>>
>>>> +static int
>>>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>>>> *phase_adj_attr,
>>>> +		       struct netlink_ext_ack *extack)
>>>> +{
>>>> +	struct dpll_pin_ref *ref;
>>>> +	unsigned long i;
>>>> +	s32 phase_adj;
>>>> +	int ret;
>>>> +
>>>> +	phase_adj = nla_get_s32(phase_adj_attr);
>>>> +	if (phase_adj > pin->prop->phase_range.max ||
>>>> +	    phase_adj < pin->prop->phase_range.min) {
>>>> +		NL_SET_ERR_MSG(extack, "phase adjust value not supported");
>>>> +		return -EINVAL;
>>>> +	}
>>>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>>>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>>> +		struct dpll_device *dpll = ref->dpll;
>>>> +
>>>> +		if (!ops->phase_adjust_set)
>>>> +			return -EOPNOTSUPP;
>>>
>>> I'm thinking about this part. We can potentially have dpll devices with
>>> different expectations on phase adjustments, right? And if one of them
>>> won't be able to adjust phase (or will fail in the next line), then
>>> netlink will return EOPNOTSUPP while _some_ of the devices will be
>>> adjusted. Doesn't look great. Can we think about different way to apply
>>> the change?
>>>
>>
>> Well makes sense to me.
>>
>> Does following makes sense as a fix?
>> We would call op for all devices which has been provided with the op.
>> If device has no op -> add extack error, continue
> 
> Is it real to expect some of the device support this and others don't?
> Is it true for ice?
> If not, I would got for all-or-nothing here.
> 

But nothing blocks vendors to provide such configuration. Should we
rollback the configuration? Otherwise we can easily make it
inconsistent.

I'm more thinking of checking if all the devices returned error (or
absence of operation callback) and then return error instead of 0 with
extack filled in.

> 
>> If device fails to set -> add extack error, continue
>> Function always returns 0.
>>
>> Thank you!
>> Arkadiusz
>>
>>>
>>>> +		ret = ops->phase_adjust_set(pin,
>>>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>>>> +					    dpll, dpll_priv(dpll), phase_adj,
>>>> +					    extack);
>>>> +		if (ret)
>>>> +			return ret;
>>>> +	}
>>>> +	__dpll_pin_change_ntf(pin);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
