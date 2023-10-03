Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7B77B60D0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 08:32:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C5A460ECA;
	Tue,  3 Oct 2023 06:32:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C5A460ECA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696314749;
	bh=jfKVjNhvgVawBkemIJY/X+7bakiEgfCPB0pXn9ieqow=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IjxBVzUjvyxNOaI9MvsgXtAH2tbG+z+bodJKAN6gvNOejgEgse8sByull4b5lr+2I
	 L0PtfYbrue5zCM2loD/KGDZ6y11BMieo2ffzEwDrAdTk9aeJ8j9hZAJyn6uVskTcRC
	 IfRYZjsm28+ziuX+NhzW5mxdPbrRaQ7OdhPuQ/sREvPcF7Zls8dU7Fyo0glF8Pjo6+
	 0pElRqqU1sNZhSk/EhzfDH0ugGaNFQQ5yUK8IpvdUghRP72GJBHmoo8NT3Su6Uoubg
	 ZsI1cBvpJ5J4q7Tjqn43oWPSHI5qBCJShySE0iO5B4lrb66++f9ccKnGvM2RmjW5EY
	 HQgpE1VpZqbCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xf_PHYAhCnhf; Tue,  3 Oct 2023 06:32:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B7E160B8C;
	Tue,  3 Oct 2023 06:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B7E160B8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 610B91BF393
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 06:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BE3940221
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 06:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BE3940221
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZtX7X2TULI8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 06:32:20 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 877A040210
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 06:32:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 877A040210
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-9a9d82d73f9so83424366b.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Oct 2023 23:32:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696314738; x=1696919538;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FWmqyqJeTEvaHR8Lmkdp/KbmlUpGqPBWa9X1iRjNIUQ=;
 b=fKUNvvqMW4ZSo+QFeYSbwRqtuUSIQWJDIdqCijhuC/arRz48PysL5rcgSZsplMl6gj
 wVfbPHzjCPVAFrqqdRIlo8pS+uD3etR5ijKSTZE4F5Z5vENFZcKYIUxeX26QXVYl0Pxx
 m7Kru2jtlrPmw5GAMpgYYXvc72Hhza07aLwyGRnrsNV48BXL9We8zTsZ1YD/TS6q09Qh
 mmePkE3Aps+RD3md7A5wbwKn8PR/Mih335wNYuAGXCGesOnlgBtVU9a7E/WqkZhSlXhr
 iZWCoE41jxyB6UNQSvQD5hBsYk9IAj1/VjFyVop47ho6a+yAlWxL+W4Q8a+PZ+6IPUPY
 GMRA==
X-Gm-Message-State: AOJu0YxnGjkfp6XMddEIqh+HyJuL9gL5nPncAaYQ5wYGdUHu0XdX/MeN
 kHumFERpOD6KYBSP5423dBly3g==
X-Google-Smtp-Source: AGHT+IF4PzMMEUwwkb7PbO5lVgCUiTIjKrcfk9g70VH7YQKDMKsb+ZV8H5NG7n1iNYEdIOgtTG/ONQ==
X-Received: by 2002:a17:906:3150:b0:9a1:f5b1:c864 with SMTP id
 e16-20020a170906315000b009a1f5b1c864mr11705405eje.10.1696314738381; 
 Mon, 02 Oct 2023 23:32:18 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 a22-20020a1709064a5600b0099293cdbc98sm496181ejv.145.2023.10.02.23.32.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 23:32:17 -0700 (PDT)
Date: Tue, 3 Oct 2023 08:32:16 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZRu1cG2uglhmCdlI@nanopsycho>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
 <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
 <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRrb87drG7aVrxsT@nanopsycho>
 <DM6PR11MB4657C61104280788DF49F0E59BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4657C61104280788DF49F0E59BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696314738; x=1696919538;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FWmqyqJeTEvaHR8Lmkdp/KbmlUpGqPBWa9X1iRjNIUQ=;
 b=Qha9QnmPB5Qaex+8K8ABL84oUpXZDNgUlbOqV8mapZHKBKMsFDGDTJnsqqH+By5YwH
 seBxpnH9xl2oELmBz/plTIckMVDxIpKnwY56DupurIRzncwuV5TztGR7T+xS+R+JVIsx
 xAH8VQ6NdISqR36LWr9vUbV4OwbXTwcZCdEzBRYEOXEe1VKFNI0GKYnSHy+R4qClJ0yG
 m4BG8p+7sW/LPMuFLQGm9VIlXEbnX9Nb3xlLuDRsKzLfKtSzUpkW0O/cymnNkrXNh8cd
 HvC7dUYT0Q3dBO8b2U8OsaRRrDOOh/V2KuO4OKfy/Qyn/KUKhNn+E3M63ttCJj0ynysG
 jhoQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Qha9QnmP
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

Tue, Oct 03, 2023 at 01:03:00AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Monday, October 2, 2023 5:04 PM
>>
>>Mon, Oct 02, 2023 at 04:32:30PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>>>Sent: Wednesday, September 27, 2023 8:09 PM
>>>>
>>>>On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
>>>>> Add callback op (get) for pin-dpll phase-offset measurment.
>>>>> Add callback ops (get/set) for pin signal phase adjustment.
>>>>> Add min and max phase adjustment values to pin proprties.
>>>>> Invoke get callbacks when filling up the pin details to provide user
>>>>> with phase related attribute values.
>>>>> Invoke phase-adjust set callback when phase-adjust value is provided
>>>>> for
>>>>> pin-set request.
>>>>>
>>>>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>>
>>>>[...]
>>>>
>>>>> +static int
>>>>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>>>>> *phase_adj_attr,
>>>>> +		       struct netlink_ext_ack *extack)
>>>>> +{
>>>>> +	struct dpll_pin_ref *ref;
>>>>> +	unsigned long i;
>>>>> +	s32 phase_adj;
>>>>> +	int ret;
>>>>> +
>>>>> +	phase_adj = nla_get_s32(phase_adj_attr);
>>>>> +	if (phase_adj > pin->prop->phase_range.max ||
>>>>> +	    phase_adj < pin->prop->phase_range.min) {
>>>>> +		NL_SET_ERR_MSG(extack, "phase adjust value not supported");
>>>>> +		return -EINVAL;
>>>>> +	}
>>>>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>>>>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>>>> +		struct dpll_device *dpll = ref->dpll;
>>>>> +
>>>>> +		if (!ops->phase_adjust_set)
>>>>> +			return -EOPNOTSUPP;
>>>>
>>>>I'm thinking about this part. We can potentially have dpll devices with
>>>>different expectations on phase adjustments, right? And if one of them
>>>>won't be able to adjust phase (or will fail in the next line), then
>>>>netlink will return EOPNOTSUPP while _some_ of the devices will be
>>>>adjusted. Doesn't look great. Can we think about different way to apply
>>>>the change?
>>>>
>>>
>>>Well makes sense to me.
>>>
>>>Does following makes sense as a fix?
>>>We would call op for all devices which has been provided with the op.
>>>If device has no op -> add extack error, continue
>>
>>Is it real to expect some of the device support this and others don't?
>>Is it true for ice?
>>If not, I would got for all-or-nothing here.
>>
>
>Let's step back a bit.
>The op itself is introduced as per pin-dpll tuple.. did this intentionally,
>to inform each dpll that the offset has been changed - in case dplls are
>controlled by separated driver/firmware instances but still sharing the pin.
>Same way a pin frequency is being set, from user perspective on a pin, but
>callback is called for each dpll the pin was registered with.
>Whatever we do here, it shall be probably done for frequency_set() callback as
>well.
>
>The answers:
>So far I don't know the device that might do it this way, it rather supports
>phase_adjust or not. In theory we allow such behavior to be implemented, i.e.
>pin is registered with 2 dplls, one has the callback, second not.

If there is only theoretical device like that now, implement
all-or-nothing. If such theoretical device appears in real, this could
be changed. The UAPI would not change, no problem.


>Current hardware of ice sets phase offset for a pin no matter on which dpll
>device callback was invoked.
>"all-or-nothing" - do you mean to check all callback returns and then decide
>if it was successful?

Check if all dplls have ops and only perform the action in such case. In
case one of the dplls does not have the op filled, return -EOPNOTSUPP.


Regarding the successful/failed op, I think you can just return. In
these cases, when user performs multiaction cmd, he should be prepared
to deal with consequences if part of this cmd fails. We don't have
rollback for any other multiaction cmd in dpll, I don't see why this
should be treated differently.


>
>Thank you!
>Arkadiusz
>
>>
>>>If device fails to set -> add extack error, continue
>>>Function always returns 0.
>>>
>>>Thank you!
>>>Arkadiusz
>>>
>>>>
>>>>> +		ret = ops->phase_adjust_set(pin,
>>>>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>>>>> +					    dpll, dpll_priv(dpll), phase_adj,
>>>>> +					    extack);
>>>>> +		if (ret)
>>>>> +			return ret;
>>>>> +	}
>>>>> +	__dpll_pin_change_ntf(pin);
>>>>> +
>>>>> +	return 0;
>>>>> +}
>>>>> +
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
