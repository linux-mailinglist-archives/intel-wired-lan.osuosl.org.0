Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A04C52567
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 13:56:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47CA740312;
	Wed, 12 Nov 2025 12:56:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SdzjRJ8INniX; Wed, 12 Nov 2025 12:56:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97704401E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762952168;
	bh=A80WAQe3AW2nzkVsGi+KVpzdPKIqa6v/ng1l0VNgHGY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=apdUF4NVtS0RNcArCCTMb5LNtSccNjOuLP8XRKR/e0yMHMeYRQxNIO0ZuLFTZHWoC
	 qTwBIoFq3ACZ/WvDrVMLsxnrc+0WL/0RyDZSrk5LGDN0EjsyXlu7KEwsN7c91X6qjn
	 whJseluc5ItzQFiywv2QGW3iuNydv2f/bbC9NyCH3mJCVRVeHWWUiKgZs3IJK8HGIY
	 0OE2Fyj0usMWAOt2peIlHsw2BKpkUjBEuAB06woZsNXy9Duk3DsoXuNF+FyfzBLozS
	 Q/4M9GllWvM8shpAJqaQNPPuraQPsVJhOXafKHf/UCtUlt+A179m9GPbUHVSbHZ7Yr
	 HTT4/xB9CaxnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97704401E4;
	Wed, 12 Nov 2025 12:56:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 408B21C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 12:56:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2AAB240514
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 12:56:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k3PCid-WwIPv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 12:56:01 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 14329404D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14329404D1
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14329404D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 12:55:59 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-477632d45c9so5905175e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 04:55:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762952157; x=1763556957;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=A80WAQe3AW2nzkVsGi+KVpzdPKIqa6v/ng1l0VNgHGY=;
 b=VKx+HLYVrLJZsH7Ihy37QlnAqf9fdsRUID+al8um8wZVkfzqVmsECdqoaM6ZK1KAti
 3wHcZp55L87j2XPH9Bpz8CYfj1/DsBGSClrzHV1v4eBmR1mxY6EiQsN84OQbDc+EU9rC
 cJjxYnV+FeX1nvGqioZAK4KSovBMT2w5CSJs8ihTTYIPVtHmz6z7WLfv7G4hpoFoTBhx
 Ahv91lqB5QXc3zAKqb34cKTMJqMbmBK7o1N1XdljQHNzgMbf0OTEMBn8E1f4v3t01d62
 48gPXWE4tpZorYnONiQAUeHVtInjsOmKuR6mFzy1xLFvOcBQOIAQcRNDxVnaIvv0/XuC
 Ir9Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXjgdP3l0Udd37UtRzjHATQKi0lmUsf9JmBXkqdVEvpe+HJf8qrtwtIrR/uD9URs5tF5e/ea8em5EpVxiul8c8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzDkZyaoYeyjy2DblMDdKsISlJCSFkPCw2fps6+MXIcw9esgiDJ
 pZK/crQLxxUX1Bf64PqoCwmJJ96owQPBaDLVYqmYXzc2w6s8gxr1ffIADH/IDxS4OmE=
X-Gm-Gg: ASbGncuY3VHslE/0Yy5tLu9nW4rwbXm77Hgcm07sc43HQSEP4rXv98+GLO14hv9x28+
 ZvxNLXJQR3D0xNQHCpLFOU0bsKPnGUbmsb7uhHYm7TMX7ZtNKoyvj1f4tJ2fiXuOEgOSAPHjHKI
 KAaH2/8noG8wKmla+OIa4XzBLg4cJ3e/HqRENMT99UHado03OWBHu9lQxNF8BOgLhoyyBwXeM85
 zUtGTmfU5R1LIcZTTbjJ/3PLOdkGJMBdwS6EO+8rj81dx7hwJZj2ZGUrq0Tt4DMnvPLCrZI/xaf
 TsTNAiEhsBi0JXx/rU5jl6fFx604T5327y435Bve3Lh3Wr6erY9u37W8iGaj/q5jS2XaruojFjV
 jiaTfvWQ+R4S5lALBTY3FMI9qU+thqhqGq9n4d7bLYERPg9e1I/dY8MTMqcp7fKab6ltV1sDgsO
 3EAGrNtt97GI/rePHJUYZXhkOPEh9bpssh
X-Google-Smtp-Source: AGHT+IGvn5MnDKrsdjSlOwaf4VLanh206hYMee2HJIoWYve/+AkIQGjBhZo9ebky2LIV8M51IDP3QA==
X-Received: by 2002:a05:600c:4593:b0:475:dd7f:f6cd with SMTP id
 5b1f17b1804b1-477870b92f6mr27315285e9.35.1762952156890; 
 Wed, 12 Nov 2025 04:55:56 -0800 (PST)
Received: from jiri-mlt.client.nvidia.com ([140.209.217.211])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-477894d53dcsm10809695e9.14.2025.11.12.04.55.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Nov 2025 04:55:56 -0800 (PST)
Date: Wed, 12 Nov 2025 13:55:52 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Saeed Mahameed <saeed@kernel.org>, 
 Daniel Zahka <daniel.zahka@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Srujana Challa <schalla@marvell.com>, 
 Bharat Bhushan <bbhushan2@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Brett Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, 
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, 
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>, 
 Tariq Toukan <tariqt@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>, 
 Leon Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>, 
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>, 
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Message-ID: <rkyncpnstlsg4lt7hl47dly2ps7hbbj344wernpkekyruyo3yh@kpys6k5rmhbp>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <aQ7f1T1ZFUKRLQRh@x130>
 <jhmdihtp63rblcjiy2pibhnz2sikvbm6bhnkclq3l2ndxgbqbb@e3t23x2x2r46>
 <20251110154643.66d15800@kernel.org> <aRKs6jXqSvC3G_R0@x130>
 <cgg6fxjjf6zq6yyzx4njhjmetrlhjgor4lzktwe6nls6rgqd6s@c3abd3ehlzvr>
 <20251111074857.7fdb7e88@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251111074857.7fdb7e88@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1762952157; x=1763556957;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=A80WAQe3AW2nzkVsGi+KVpzdPKIqa6v/ng1l0VNgHGY=;
 b=FS9Hlc5Y7EnwyHXQzneUxJw1nSFxUPc/PR141XOx1GE9uKEV4m+wHmCztQh8f3XABS
 5eorRcxjqehKlCY2OEXqb/YNxJEuF5/2u3El41wj8eVMrCLwjsKO52rqZLLV6ygoOZDJ
 hyPCe2g9CplsR5lxhvB/jfmXr1v2HIPhxlufXx0kTVS7owjzX+B9SDBdJHBIoy4lm/er
 pTczMGbJvd2EvU7nNaQji9YPNX9tNYDmmnLkNW6zsG2p6lG9aU+nVJ7wNJ9JkG9c/9cJ
 efJ22Fjg9eF7mwkHlQL0qomwoRuPQRuNZOhEEED+ZgY6KA9viGPxa4KK4L7e5mAXXZEq
 qwJQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=FS9Hlc5Y
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net/mlx5: implement
 swp_l4_csum_mode via devlink params
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

Tue, Nov 11, 2025 at 04:48:57PM +0100, kuba@kernel.org wrote:
>[stripping some of the bouncy CCs.]
>
>On Tue, 11 Nov 2025 15:39:03 +0100 Jiri Pirko wrote:
>> Tue, Nov 11, 2025 at 04:26:34AM +0100, saeed@kernel.org wrote:
>> >On 10 Nov 15:46, Jakub Kicinski wrote:  
>> >> On Sun, 9 Nov 2025 11:46:37 +0100 Jiri Pirko wrote:  
>> >> > >So, I checked a couple of flows internally, and it seems this allows
>> >> > >some flexibility in the FW to decide later on which mode to pick,
>> >> > >based on other parameters, which practically means
>> >> > >"user has no preference on this param". Driver can only find out
>> >> > >after boot, when it reads the runtime capabilities, but still
>> >> > >this is a bug, by the time the driver reads this (in devlink), the
>> >> > >default value should've already been determined by FW, so FW must
>> >> > >return the actual runtime value. Which can only be one of the following  
>> >> > 
>> >> > I don't think it is correct to expose the "default" as a value.
>> >> > 
>> >> > On read, user should see the configured value, either "full_csum" or
>> >> > "l4_only". Reporting "default" to the user does not make any sense.
>> >> > On write, user should pass either "full_csum" or "l4_only". Why we would
>> >> > ever want to pass "default"?  
>> >> 
>> >> FWIW I agree that this feels a bit odd. Should the default be a flag
>> >> attr? On get flag being present means the value is the FW default (no
>> >> override present). On set passing the flag means user wants to reset
>> >> to FW default (remove override)?
>
>Y'all did not respond to this part, should we assume that what 
>I described is clear and makes sense? I think we should make that
>part of the series, unlike the pending indication.

I agree. The "default" flag sounds good to me.


>
>> >> > Regardless this patch, since this is param to be reflected on fw reboot
>> >> > (permanent cmode), I think it would be nice to expose indication if
>> >> > param value passed to user currently affects the fw, or if it is going
>> >> > to be applied after fw reboot. Perhaps a simple bool attr would do?  
>> >> 
>> >> IIUC we're basically talking about user having no information that
>> >> the update is pending? Could this be done by the core? Core can do
>> >> a ->get prior to calling ->set and if the ->set succeeds and
>> >> cmode != runtime record that the update is pending?
>> >>   
>> >
>> >Could work if on GET driver reads 'current' value from FW, then it should
>> >be simpler if GET != SET then 'pending', one problem though is if SET was
>> >done by external tool or value wasn't applied after reboot, then we loose
>> >that information, but do we care? I think we shouldn't.
>> >  
>> >> That feels very separate from the series tho, there are 3 permanent
>> >> params in mlx5, already. Is there something that makes this one special?  
>> 
>> Agreed. That is why I wrote "regardless this patch". But I think the
>> pending indication is definitelly nice to have.
>
>Yes, I've been wondering why it's missing since the day devlink params
>were added :)

Puzzles me. Nobody probably cared that much :/


>
>> >In mlx5 they all have the same behavior, devlink sets 'next' value, devlink
>> >reads 'next' value. The only special thing about the new param
>> >is that it has a 'device_default' value and when you read that from 'next' it
>> >will always show 'device_default' as the actual value is only
>> >known at run time ,e.g. 'next boot'.
>> >
>> >I think the only valid solution for permanent and drv_init params is to
>> >have 'next' and 'current' values reported by driver on read. Or maybe go just
>> >with  'set' != 'get' then 'pending' as discussed above ?  
>> 
>> Hmm, is it possible to rebind the driver without fw going through
>> next-boot phase? I'm wondering if it wouldn't be safer to have this
>> pending flag set to be responsibility of the driver...
>
>The downside is that drivers may either have bugs or not implement 
>the new feature. So when there's no indication of pending change
>the user will have no idea whether its because there's none or the
>driver simply does not report both. 
>
>My experience implementing the pending FW version in a couple of
>products is that it takes a lot of "discussions" to get FW people 
>to implement this sort of a thing right. mlx5 already has the right 
>FW APIs so we should allow their full use. But I don't think the 
>"what if user change the setting with fwctl", "what if user reloaded
>the driver" corner cases should stop us from trying to get the core
>to implement 99% of the cases right.
>
>FTR I'm not aware of any Meta-internal products having permanent knobs.
>I just don't think we can depend on the random people that submit
>drivers these days to get this right. And devlink users will assume
>that it's Linux that sucks if it doesn't work right, not vendor X.
>
>Long story short I think we can add the reporting of both values via GET
>but I'd definitely still like to see the core trying to do the tracking
>automatically.

I agree with tracking in core, allowing driver to opt-in with pending
flag value if it knows better overriding the core value.

