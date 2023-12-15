Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17690814982
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 14:42:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E949D43812;
	Fri, 15 Dec 2023 13:42:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E949D43812
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702647735;
	bh=kQr+tJShsIjpayAFqe6v8TPU/qY+LH2XOaZgj9dV5Gc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bnWnKcOhFWX1xZ+CCyJIx4qXgGBegUl3cE7dh8fBuWv31PEPBol7haDKt9A2UEWuh
	 CXignC8sfVnOl9szHPhvq/BWGFzLcZxGuZmWVUiPPfqK7o+KYaADhulB66zjrDsOfe
	 arzaWwwQsiBjb/FqVC613oQPowgRWgkUpMp7pDnQSSzfjJnSTz1af8WAZBMqDGsRo/
	 aoAtA2ya2okH9SN1rM3UpY4N1aT63lWNsfoSmO3kwYA13Xmhc1xwv70V90QkiMULsY
	 aVwURT5Vv839T+4Qo+ebWM99Tg0FTId6xv2Hlx0aVzaQqmt3IfylmvVvfEe3qoPIfR
	 SffhTAaYT7WBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bMUNb2p1iNB8; Fri, 15 Dec 2023 13:42:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A2FF437FD;
	Fri, 15 Dec 2023 13:42:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A2FF437FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60AC51BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 13:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F6636F55E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 13:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F6636F55E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nwvYG6Le0Y2W for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 13:42:05 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E9656F67E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 13:42:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E9656F67E
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-54dcfca54e0so914903a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 05:42:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702647723; x=1703252523;
 h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
 :to:content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JWyY+1ZRwB7JSCluGmdigCtNxrtlYQpVrbJS1gPGz5w=;
 b=SiMBTt41i2wEt32RYAKVt/XMmFLaDGl5LA0tCpz6ohXGV3Z+ysJYIzOUMLvxsqJvHE
 Mgo7pHnmVIZyShhzemMOMRIpogPDzvJdgyCwbB11l754mmDzCs+dP39saAfXZt9A/p8T
 JpcSBPN+4xZ4f5filvw+oVL+OzNVT2J/wxzXud3Nnx3Y4O9WyLkloiCmKNKHSVwhN8aS
 O8zkQ8jh2o0LmvpMPP6HJ7rQQAbeVQODW3Zx/19+FA1epeRks2liFxeKLZFHpKdDp5Cp
 fUyLMO912yjH/yZAuFhRasHeDTXfGJ8PlR2PGhYmrHDleQzlY54vjbKRH1U638qnLEVo
 wWxQ==
X-Gm-Message-State: AOJu0YwL3B/fGeJc35au9hqWTUYepiflhDCBJiNAoBkq07f/KuM11W1e
 VisPFThHlzuv6exgyQlzUsU=
X-Google-Smtp-Source: AGHT+IF25RzXmMk4vfMp7QaNzOQ98zw63IElqtHzdXCgyMKhef498DDQK2jhu9O5AH8nenEjjEm11w==
X-Received: by 2002:a17:907:7d8c:b0:a1d:58ff:df2b with SMTP id
 oz12-20020a1709077d8c00b00a1d58ffdf2bmr7117987ejc.17.1702647722883; 
 Fri, 15 Dec 2023 05:42:02 -0800 (PST)
Received: from ?IPV6:2a01:c23:c4af:da00:753e:3071:8b26:92a4?
 (dynamic-2a01-0c23-c4af-da00-753e-3071-8b26-92a4.c23.pool.telefonica.de.
 [2a01:c23:c4af:da00:753e:3071:8b26:92a4])
 by smtp.googlemail.com with ESMTPSA id
 cw15-20020a170907160f00b00a1937153bddsm10673996ejd.20.2023.12.15.05.42.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Dec 2023 05:42:02 -0800 (PST)
Message-ID: <83dc80d3-1c26-405d-a08d-2db4bc318ac8@gmail.com>
Date: Fri, 15 Dec 2023 14:42:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marc MERLIN <marc@merlins.org>, Jakub Kicinski <kuba@kernel.org>
References: <20231206113934.8d7819857574.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231206084448.53b48c49@kernel.org>
 <e6f227ee701e1ee37e8f568b1310d240a2b8935a.camel@sipsolutions.net>
 <a44865f5-3a07-d60a-c333-59c012bfa2fb@intel.com>
 <20231207094021.1419b5d0@kernel.org> <20231211045200.GC24475@merlins.org>
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
In-Reply-To: <20231211045200.GC24475@merlins.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702647723; x=1703252523; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
 :to:content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JWyY+1ZRwB7JSCluGmdigCtNxrtlYQpVrbJS1gPGz5w=;
 b=j0geitJJ3FZA9uy+W4g1ZxivzhOZDk+Ukjlugm6Ue5LTjX4AqcJ2wC/1EOxj0Qp5zM
 IrU91/P6AVYTI9aOhmTZhOJ9kn7nerjTGBgXV0jEFBhW8k51MY2t9Tr+02eqYQxIuYhj
 bOHGl5s0jubZtNh0n1cPK1W6XMAwf0aXoGgLDsoWik96QSYQ/Pfm1x7ls77VEu0SG9Tm
 TPexWflzotTww3rOTs/gZFazVHIVyOz/smsgIEJKFDmnW8jdwVrMvwnxN/gUnkMQw3mk
 Lt+W3P9hTSOcueROb1rM5GqTHREau5R6NSKa4P73kgzD3x95VT7EcdwK6cLacU+4BCDS
 xNkQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=j0geitJJ
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11.12.2023 05:52, Marc MERLIN wrote:
> On Thu, Dec 07, 2023 at 09:40:21AM -0800, Jakub Kicinski wrote:
>> On Thu, 7 Dec 2023 11:16:10 +0100 Przemek Kitszel wrote:
>>> I have let know our igc TL, architect, and anybody that could be
>>> interested via cc: IWL. And I'm happy that this could be done at
>>> relaxed pace thanks to Johannes
>>
>> I think you may be expecting us to take Johannes's patch.
>> It's still on the table, but to make things clear -
>> upstream we prefer to wait for the "real fix", so if we agree
>> that fixing igb/igc is a better way (as Heiner pointed out on previous
>> version PM functions are called by the stack under rtnl elsewhere too,
>> just not while device is open) - we'll wait for that. Especially
>> that I'm 80% I complained about the PM in those drivers in
>> the past and nobody seemed to care. It's a constant source of rtnl
>> deadlocks.
> 
> For whatever it's worth, I want to be clear that all stock kernels
> are 100% unusable on lenovo P17gen2 because of this deadlock and that
> without the temporary patch, my laptop would be usuable.
> It was also a risk of data loss due to repeated deadlocks and unclean
> shutdowns.
> 
Why don't you simply disable runtime pm for the affected device as a
workaround? This can be done via sysfs.

> I cannot say what the correct fix is, but I am definitely hoping you
> will accept some solution for the next stable kernel.
> 
> Thank you
> Marc

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
