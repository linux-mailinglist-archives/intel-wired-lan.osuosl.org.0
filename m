Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6892A7FB2E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 08:37:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 855A681D3D;
	Tue, 28 Nov 2023 07:37:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 855A681D3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701157075;
	bh=5jg0dBpVQreArgChX0MTAT1k1J3BRzyA0KW+hh1o5Hg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sW7PoMliDPOOUV79SHO2q+NY7N8Hwm6l6i8cKMQtm3N5S/BepQssUs1sMmG7NOnp3
	 npT93HO5+hpnTqsX31cGPDDY5dOevkdw/pFnqf3EldubATRhRgHedyXGSBk66Wn8pw
	 3LcgIMLMuEH8aqA1PvNYx08XtL436WUBTt1xycSzryDMRcj/P/EJz1ROz61zmi5DSu
	 DzF7gox9yqrQ6Dycx2dtQ4pjaU8+Lr6FurHBRJMvABDy42dOzSFbvEVXT9X3l8DM4P
	 oEbrzn9yLy6cVSviHqUSTLnesapGuEpnvXqKWwiCHIfAm+Pj/fmatoFumfAVhwf8xq
	 bLiARuPMToWTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w8BegAtRW_i2; Tue, 28 Nov 2023 07:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BEDD81D21;
	Tue, 28 Nov 2023 07:37:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BEDD81D21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D8BB11BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA30581D21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA30581D21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oy1wZTfmi4dI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 07:37:47 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 499CF81C0A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 499CF81C0A
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-54b0e553979so4308074a12.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 23:37:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701157065; x=1701761865;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=d6gVvfRNPtJ9hR1Q42xqDgJWHxAsSJew352v7XMd5+I=;
 b=O/uALcXQGJGDCXwroZb+g29gDZliRyIKrck0xs4Qv9AOo3TeaXgIGXaAMJSTH2zQt7
 tAvEn0NSUrkdzukaPuP/0rV6gSt1HD69Cxnou7pfD5+mI35EXY/EXuPhAt4eTXhpwYzA
 Wa2vR1Vf4PQtnPF5gRz0//zWhcdedDRHL9BrsqPVadiQRP+Cd+3X3lUkG0kOElXYW4zV
 5yBWCJ+hXR2klvLX2evi1z0r+tOQM77U+xw5BJSxvqyqn97Dz4qSBpg9iLoT/4PFhp4J
 i2WeB8kopDfh10Fuot57xWPucnB3XyZL1+mtXAagsAVme++K87O2/+AySl17H89msZWK
 qDsQ==
X-Gm-Message-State: AOJu0YxLNgBwxfbs50FdqUTbWTEtke7dR1CRFmuEA9ebdNn4m56nqa/1
 R1XHccMYgPEV2obqZOLIF17scg==
X-Google-Smtp-Source: AGHT+IHAXJUbRXBLD3Z9+JAA4mWVgQhBtMGH+eJvQK3wdq7h5OaR9WMkkAhzTxCbBp5v+qc3JaetcA==
X-Received: by 2002:a05:6402:944:b0:54b:984b:6b53 with SMTP id
 h4-20020a056402094400b0054b984b6b53mr1598682edz.17.1701157064908; 
 Mon, 27 Nov 2023 23:37:44 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 h14-20020aa7c94e000000b00548a57d4f7bsm6072332edt.36.2023.11.27.23.37.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Nov 2023 23:37:44 -0800 (PST)
Date: Tue, 28 Nov 2023 08:37:43 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: "Bahadur, Sachin" <sachin.bahadur@intel.com>
Message-ID: <ZWWYx18w2BnLyAZL@nanopsycho>
References: <20231127060512.1283336-1-sachin.bahadur@intel.com>
 <ZWRkN12fhENyN4PY@nanopsycho>
 <BY5PR11MB42574D2A64F2C4E42400213A96BDA@BY5PR11MB4257.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR11MB42574D2A64F2C4E42400213A96BDA@BY5PR11MB4257.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1701157065; x=1701761865;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=d6gVvfRNPtJ9hR1Q42xqDgJWHxAsSJew352v7XMd5+I=;
 b=fUH+aQa12C2KDrSnyXgf0L8aLdjeztwASYhLv23PwW+eZLX4tIuQ7jMi9fcsoGJczY
 yQQtMZThqBAeCIa8sZsC/Hnbss65adFLfI6tSDq/DKgtrm7qhXciQcDrz7JW4znvc52N
 s1LQ3xVL0Z4zGQx00J8NK4Dk8ER+sg8pNlfsvgiIh7tMyD2uDXdP4XxhY/ePsvMF7mws
 cafpnot3Ousjm577vFttu3jypPuBMsnNJ3pye+UAHvvs30rtDd08RJe/OZ+NWp8JiPnZ
 YCCdjoFvZfHQV9owsUuqWnchT2p13n1T4Z/tb6BcqEhgeuK+YbEjiHiPL/NVYY+n1xc4
 dN9A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=fUH+aQa1
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: Block PF reinit if
 attached to bond
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Nov 27, 2023 at 05:23:55PM CET, sachin.bahadur@intel.com wrote:
> 
>> Nack. Remove the netdev during re-init, that would solve your issue.
>> Looks like some checks are needed to be added in devlink code to make sure
>> drivers behave properly. I'm on in.
>
>Sure. This fix should apply to all drivers. Adding it in devlink makes more
>sense. I am not a devlink expert, so I hope you or someone else can
>help with it.

No, you misunderstood. I'll just add a check-warn in devlink for case
when port exists during reload. You need to fix it in your driver.

>
>> 
>> 
>> >+			return -EBUSY;
>> >+		}
>> > 		ice_unload(pf);
>> > 		return 0;
>> > 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
>> >--
>> >2.25.1
>> >
>> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
