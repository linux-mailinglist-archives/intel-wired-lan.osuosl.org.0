Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AE6806F4F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 12:59:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38E314365F;
	Wed,  6 Dec 2023 11:59:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38E314365F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701863959;
	bh=gkK6MSd7aXZTzYO+x0JEoARoKmpQkSqC0jNx+7tbtZ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fRNd/TKafFO6aH8uqIdG6+wu/gLolTeWHoJjedCzRdTZ1SA/tCWonPG0njJd1vHFh
	 8LNQ3uT+wr3PIewhZBKDOhaM7zp7gb5u7JbJnQZy3a4h2jIX0S1C2LH4dDjD19g5k7
	 +wSY6hLkJ0vJPTopYue0jUV8QqhMHSLxYQDxPqIExUZCWB9QwuHMmggPyvVfE6vCQg
	 2T3WgQ/Oc5HBoK8+HiUNIhfH/4Fnx6FVFoPyA0/40DJAA7HLWSwTptY1x34qSmmWvl
	 f+jCFi5q2U5Lp8tUbcc9w1eb+phYPSlcZkQB4f0lydom+NmSDv+v0shIw9T3uynH22
	 UYPntyfv2lL3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y6V6c-9SwJfc; Wed,  6 Dec 2023 11:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABB9A4362F;
	Wed,  6 Dec 2023 11:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABB9A4362F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C9161BF277
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 11:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1AA6D82F57
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 11:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AA6D82F57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MDXP0TheBGqE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 11:59:10 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9ADF78143F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 11:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9ADF78143F
Received: by mail-ej1-x631.google.com with SMTP id
 a640c23a62f3a-a1b68ae40f0so68532166b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Dec 2023 03:59:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701863948; x=1702468748;
 h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
 :to:content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oddPicFMX3Ji/ZDdq1O9JaW0GQIavg3PAw7TMll9Brs=;
 b=KAEJGuenld9xIuTnGxtk9B/yJ1tigl75adeb130Lr3F7eAvcdzBeMcqwc7l/ew+RSM
 AUtdfEE9qzY7KJ7L/MvXGwL31FLEQg4B4BikHwKE/2hGXYdGE34mQ9XKYZM8tk0EWlCT
 g75xesAM9AgZ6m2wWiT35xfrX/57DyzJa06nEVhVrkbZl5tZ1yfAKE2VR50J+rQ+RF1s
 E0QZVfDNEQCCeXAbu70B+dzdzxvPXx/hnznDmJlktksVLIQDPHT9KJwgoZ04qSqCPs3n
 5esUFgi1rWsJ9XKc7ac3UF4NepE83JoX1xBo/DeHasNDhgXjQp1ZWa9RSg6JQExi8Acn
 ovPg==
X-Gm-Message-State: AOJu0YxVxq0LZWBEN49mD85eEQaxxXs02Pcc5jT/8fMTXHjJIztD9fBt
 BxpQm8CytJrJK5ATg79EAI4=
X-Google-Smtp-Source: AGHT+IF2pjR/wC+QGAULRvgBinrqiMMR4PVQL6BJVE5D9GwZKz4dIibyNHUqeVqJhgrtyB4BgvkJeQ==
X-Received: by 2002:a17:906:d786:b0:a0c:fd56:c30 with SMTP id
 pj6-20020a170906d78600b00a0cfd560c30mr613922ejb.70.1701863948350; 
 Wed, 06 Dec 2023 03:59:08 -0800 (PST)
Received: from ?IPV6:2a01:c23:c486:e400:94df:9494:ce6f:5fa4?
 (dynamic-2a01-0c23-c486-e400-94df-9494-ce6f-5fa4.c23.pool.telefonica.de.
 [2a01:c23:c486:e400:94df:9494:ce6f:5fa4])
 by smtp.googlemail.com with ESMTPSA id
 r18-20020a17090609d200b00a015eac52dcsm8197862eje.108.2023.12.06.03.59.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Dec 2023 03:59:07 -0800 (PST)
Message-ID: <64684afc-3dbb-453e-9c90-bf2a86e70c50@gmail.com>
Date: Wed, 6 Dec 2023 12:59:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Johannes Berg <johannes@sipsolutions.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <d0fc7d04-e3c9-47c0-487e-666cb2a4e3bc@intel.com>
 <709eff7500f2da223df9905ce49c026a881cb0e0.camel@sipsolutions.net>
 <3e7ae1f5-77e3-a561-2d6b-377026b1fd26@intel.com>
 <c1189a1982630f71dd106c3963e0fa71fa6c8a76.camel@sipsolutions.net>
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
In-Reply-To: <c1189a1982630f71dd106c3963e0fa71fa6c8a76.camel@sipsolutions.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701863948; x=1702468748; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
 :to:content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=oddPicFMX3Ji/ZDdq1O9JaW0GQIavg3PAw7TMll9Brs=;
 b=jZHJuNDR+bHVAdJFMuLxOZba88PU6y1CNoRqpArDTsnVQ9UZzev9sd6gxwyD/oboce
 fjCnffsHfUHBV2bA3Dses4+lq/dDNtQzQw+jdVLtLgVHKPoF/wvM+wsqOOWkUW5HgQ6H
 sGlzYIpAhMz/7GDKwN7otQEZJFY31gGMeEiFS4a1gNTmnFnyeulJfHNSZMv3tY4NYFFm
 TS4fNe+EJIOPc96CrJc9tOsDz51Wa+IXR0K0iSeHxsqi4p9Rqj/gnhAzgSqjDAh1x5hz
 +saJtGn5988suE8k1drJ0eKuHj73YgDgKd702lGJrFjU6Qf8GXYFwj8a4RpcyrNZuIJW
 bkZQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=jZHJuNDR
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, Marc MERLIN <marc@merlins.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06.12.2023 10:37, Johannes Berg wrote:
> On Wed, 2023-12-06 at 09:46 +0100, Przemek Kitszel wrote:
>>
>> That sounds right too; one could argue if your fix is orthogonal to that
>> or not. I would say that your fix makes core net code more robust
>> against drivers from past millennia. :)
>> igc folks are notified, no idea how much time it would take to propose
>> a fix.
> 
> Maybe it should be on whoever added runtime pm to ethtool ;-)
> 
> Heiner, the igc driver was already doing this when you added
> pm_runtime_get_sync() ops, was there a discussion at the time, or just
> missed?
> 
I think it went unnoticed at that time that igc is acquiring RTNL
in runtime-resume. I'm just astonished that this pops up only now,
considering that the change was done more than 2 yrs ago.

Note: In __dev_open() there's a similar scenario where the
runtime-resume callback may be executed under RTNL.

> I really don't know any of this ...
> 
>>> Well, according to the checks, the patch really should use
>>> netdev_get_by_name() and netdev_put()? But I don't know how to do that
>>> on short-term stack thing ... maybe it doesn't have to?
>>
>> Nice to have such checks :)
>> You need some &netdevice_tracker, perhaps one added into struct net
>> or other place that would allow to track it at ethtool level.
> 
> Yeah but that's dynamic? Seems weird to add something to allocations for
> something released in the same function ...
> 
>> "short term stack thing" does not relieve us from good coding practices,
>> but perhaps "you just replaced __dev_get_by_name() call by
>> dev_get_by_name()" to fix a bug would ;) - with transition to tracked
>> alloc as a next series to be promised :)
> 
> All I want is to know how ;)
> but I guess I can try to find examples.
> 
>> anyway, I'm fresh here, and would love to know what others think about
> 
> Not me, but me too ;-)
> 
> johannes

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
