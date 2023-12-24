Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8733181DD37
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Dec 2023 00:12:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 994B781C0A;
	Sun, 24 Dec 2023 23:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 994B781C0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703459537;
	bh=AJ4mN/V6rIjvFMewCemivkf9/iaeWp2c10DKw5W2MHU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3KaKNg2o9UwtUDxOvsAUECshFSgBioOvwgJYcMx3RoFoWC7j4DcYlr8r5rw+47g6h
	 SVj5nwPe7rzv989v8AuKuGM5MigTb8FI5nvJjbPL8AiEMmAhYqTm+YChSPSuVOBRi9
	 ukdGPIF/FXKZoM3mwjzsyM321h473DU7UcJmHd4WVEAMBqs7IKWcXCHIzwQnKPOvnS
	 QQo3OpVm4frXJwsLM12hjAkgwhqZNfhtobLdVuq+vC1G01WGmn7kwjAH0rZR5WJ8QP
	 yl+zBlpdIC2Zq7A+K5QV+OnNC5elKknJJ/vVP9TM9kxDgD8AURQk7JFHWqO+/fP+fy
	 Sot7klzmkUEwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ZeAOsANkmOk; Sun, 24 Dec 2023 23:12:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67EFC81B60;
	Sun, 24 Dec 2023 23:12:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67EFC81B60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 472EB1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Dec 2023 23:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1FDDB81B60
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Dec 2023 23:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FDDB81B60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xxtV6ASM0Y40 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Dec 2023 23:12:10 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2238081B53
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Dec 2023 23:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2238081B53
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-40d4ebcc207so19231995e9.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Dec 2023 15:12:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703459528; x=1704064328;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=22pu1/6xlX+a75gXXvL3MgBrEnDW6LIOr+2SSTJfJG4=;
 b=F4G1jhxgNI5uEUSN5aFkyn54+xvdcMDwhlw3hr4qaeZNiA6bM4ySsO+8RZE6PA8qiZ
 2X+Im2O8gmXbJ/NpQRYKXIzvlC0S82enEGr8efjH6Wiqk2LuFOnyCdDz/67K7BWrIvrP
 wKZarvVMD01L0ArNif0CMDeB5hCbL3HFN9MQKkX98wAEz+pff9Kyl577DPM/02Sbm4Ng
 bODXTwP/yrN/jdrk8EwxOsJUBmhs58SOSvbYC3T5OA2IDuBwhLS5impUpg7T4DSDTHBU
 wbjIhJQOVlpZQQExeUGAg5YuiLzZwyvnZ84l8FS7Cm+zjaDhyLr1m0kMUufciwVAFa5i
 uLBQ==
X-Gm-Message-State: AOJu0Yx2SoYizFVzsFQLFuuhhXw7WhpAjyiVdvTn/YWmwLk374r4yoWz
 xNpgRDLxXRz8mEboN7tUCpw=
X-Google-Smtp-Source: AGHT+IFwUdRDwHNow4dHAf5C2Gj37jKeS8ilKlrkQ0jyN57YBTsDKGVqij2Z3hwXTnefA3AucUhDeA==
X-Received: by 2002:a05:600c:4685:b0:40d:343d:2e08 with SMTP id
 p5-20020a05600c468500b0040d343d2e08mr2596438wmo.98.1703459527758; 
 Sun, 24 Dec 2023 15:12:07 -0800 (PST)
Received: from ?IPV6:2a01:c23:bda7:ca00:b4b1:6451:f5bb:61f2?
 (dynamic-2a01-0c23-bda7-ca00-b4b1-6451-f5bb-61f2.c23.pool.telefonica.de.
 [2a01:c23:bda7:ca00:b4b1:6451:f5bb:61f2])
 by smtp.googlemail.com with ESMTPSA id
 s4-20020a1709062ec400b00a234585cc79sm4275370eji.188.2023.12.24.15.12.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Dec 2023 15:12:07 -0800 (PST)
Message-ID: <5ca7edbb-cf61-45b2-b9ba-888cb157ecbb@gmail.com>
Date: Mon, 25 Dec 2023 00:12:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marc MERLIN <marc@merlins.org>
References: <20231206113934.8d7819857574.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231206084448.53b48c49@kernel.org>
 <e6f227ee701e1ee37e8f568b1310d240a2b8935a.camel@sipsolutions.net>
 <a44865f5-3a07-d60a-c333-59c012bfa2fb@intel.com>
 <20231207094021.1419b5d0@kernel.org> <20231211045200.GC24475@merlins.org>
 <83dc80d3-1c26-405d-a08d-2db4bc318ac8@gmail.com>
 <20231215174634.GA10053@merlins.org> <20231224163043.GA6759@merlins.org>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
In-Reply-To: <20231224163043.GA6759@merlins.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1703459528; x=1704064328; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=22pu1/6xlX+a75gXXvL3MgBrEnDW6LIOr+2SSTJfJG4=;
 b=LApnRMJh+ABAY/av/kDCFR2oTduverCJa0wpYqNT6fRyjMW8R2plly/jRtvm/yXYrN
 /+h3G7YQ29YXYAsyg0904cG9RzMp6oiu7hY4K6fhQzOAc4lmdPEv5FS1JOcxpSPapCLE
 vbq4O4m227AmZm20rmpVx8JwwayuTEWMe5xUGJhvANOcgWzM9u+oM3zRPGPKFtgKfXuc
 Sf/Zy6i6iC5CPlMf5qvUvnLBq57QdKWdz/9Ms6ETE2R355mK8iD236kWlvB9u4o/HCvS
 DIAbxte+domTLjyVZtwfk4OIFOeYemkP2WR6tIeCTp0XprxuBTAeGNEAgZbMfMawKAww
 Dlpg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=LApnRMJh
Subject: Re: [Intel-wired-lan] [PATCH net v3] net: ethtool: do runtime PM
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
Cc: Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 netdev@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 24.12.2023 17:30, Marc MERLIN wrote:
> On Fri, Dec 15, 2023 at 09:46:34AM -0800, Marc MERLIN wrote:
>> On Fri, Dec 15, 2023 at 02:42:01PM +0100, Heiner Kallweit wrote:
>>> Why don't you simply disable runtime pm for the affected device as a
>>> workaround? This can be done via sysfs.
>>
>> 1) because I didn't know what the exact bug was and how to work around it :)
> 
> Mmmh, so I need to test an ubuntu kernel (6.5.0-14) because of sound
> issues in mainline TOT, and I can't boot the kernel to completion
> without hititng this hang bug. I'm not exactly sure which part of the
> boot triggers it.
> 
> I can't patch that kernel easily. How exactly do I disable runtime PM
> from the kernel command line for "that device" which I'm not even sure

Change <device>/power/control from "auto" to "on".

> which one it is.  If it's the eth device, I already removed the igc
> module to prevent it from loading, and I also removed the ethtool
> binary, but I'm still getting the hang.
> 
> On the plus side, with 6.6.8 and the old patch which I understand is not
> the ideal solution, I can confirm that I've been running problem free
> until now, so thanks again for that interim patch.
> 
> Thanks,
> Marc

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
