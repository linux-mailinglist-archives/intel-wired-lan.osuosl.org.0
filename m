Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1972C7B0BA0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 20:09:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A46EC41970;
	Wed, 27 Sep 2023 18:09:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A46EC41970
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695838163;
	bh=u2B7JLqMs0uwVUo3nys0WjiBJtajVsT+r4jwN/6z3mU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rvn/mw1qe6LrP7QojY0FQqJkqiApCLgLVzysVrxmK+9WlwwATAf8EP5uLcVdsqLYy
	 82WxldjpSUYGNqRFgeR6eKeBOf2aYqfMmh+kh2bY9nUH3Lv9bpOb9R9WlkMD/EPyUE
	 p40ykBsHQZxiubr0nU8uSx1g/51PjSN0JxyQaA2pZLgRsIU8gwwMt3V5kS2pzxJ9Xk
	 UFDjzF+a047ns6EeOC5LmE1OzS2am0vwMeQ77Hf7tSfMuWr+sRhGA1psf3MgiUfUg3
	 dQ+MxRI+jcIQxkShmRlZyYsxqjf9hZwPQMafPReOeA1l7s76nJrV/sEKgaRJu40O+5
	 JnMMEkCAExBBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RxlB_INfGF9f; Wed, 27 Sep 2023 18:09:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57B43403EA;
	Wed, 27 Sep 2023 18:09:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57B43403EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B94831BF489
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 18:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A0E180BA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 18:09:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A0E180BA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id phV5_xRbSNPH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 18:09:15 +0000 (UTC)
Received: from out-199.mta1.migadu.com (out-199.mta1.migadu.com
 [IPv6:2001:41d0:203:375::c7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46AE580B34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 18:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46AE580B34
Message-ID: <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
Date: Wed, 27 Sep 2023 19:09:07 +0100
MIME-Version: 1.0
Content-Language: en-US
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 netdev@vger.kernel.org
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1695838151;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G57rpo1++Zl3if+NiAqrdipXpzXF4O8DuKQxu1acs6Y=;
 b=UGSLpovy39IQoNTjV00vQzdXtByKcO1708I/wTtTwg0OrqG2knrgm8aQAaFR+aRxapBNZD
 vxMcXn3hDzXXlL8hTEK+Mtk75UQDk6uk+QSSlqrcLOVdxsH9/Ntr3E0wWIfM7+LXPCVLDC
 fFu9aRtEQyDi2wMZo8tyiSksRgcGiaA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=UGSLpovy
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
Cc: jiri@resnulli.us, corbet@lwn.net, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
> Add callback op (get) for pin-dpll phase-offset measurment.
> Add callback ops (get/set) for pin signal phase adjustment.
> Add min and max phase adjustment values to pin proprties.
> Invoke get callbacks when filling up the pin details to provide user
> with phase related attribute values.
> Invoke phase-adjust set callback when phase-adjust value is provided for
> pin-set request.
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

[...]

> +static int
> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr *phase_adj_attr,
> +		       struct netlink_ext_ack *extack)
> +{
> +	struct dpll_pin_ref *ref;
> +	unsigned long i;
> +	s32 phase_adj;
> +	int ret;
> +
> +	phase_adj = nla_get_s32(phase_adj_attr);
> +	if (phase_adj > pin->prop->phase_range.max ||
> +	    phase_adj < pin->prop->phase_range.min) {
> +		NL_SET_ERR_MSG(extack, "phase adjust value not supported");
> +		return -EINVAL;
> +	}
> +	xa_for_each(&pin->dpll_refs, i, ref) {
> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
> +		struct dpll_device *dpll = ref->dpll;
> +
> +		if (!ops->phase_adjust_set)
> +			return -EOPNOTSUPP;

I'm thinking about this part. We can potentially have dpll devices with
different expectations on phase adjustments, right? And if one of them
won't be able to adjust phase (or will fail in the next line), then
netlink will return EOPNOTSUPP while _some_ of the devices will be
adjusted. Doesn't look great. Can we think about different way to apply
the change?


> +		ret = ops->phase_adjust_set(pin,
> +					    dpll_pin_on_dpll_priv(dpll, pin),
> +					    dpll, dpll_priv(dpll), phase_adj,
> +					    extack);
> +		if (ret)
> +			return ret;
> +	}
> +	__dpll_pin_change_ntf(pin);
> +
> +	return 0;
> +}
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
