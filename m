Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4211DACCE8C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jun 2025 23:00:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1AA28114C;
	Tue,  3 Jun 2025 21:00:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dlPimgzw5Efh; Tue,  3 Jun 2025 21:00:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A94A481153
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748984454;
	bh=+PKgRqE/agxHfUSUWE1ZX+G/aaQhrQ+OflgKrEMgMlM=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FK1RcB4LF/xDY5KN/K1qa05ODoXnUGkTSRl3fWlyYWs8l2zHHS8a9jHSN+y5oPGf4
	 KwzHik5CwUT6uE/fuGmtIah45dkPCiUc9Js7Az03R10EOTSfMxCtHrPpswBHX5rHiL
	 4pdJs4peoT3e/aYwzwDNv5u6uoN9W0oGjb/LRBWDoJVvtLKg1tupREy3a12ZfUerY4
	 jsJLXL2kbfIMu/9N2WERtvyxP98TGdF0yrHyPwXRaKWDS/ffUAXNGRK5oh0OweufMj
	 NI5aXusvFMunFa4THhD2rHT+VZ3OYSLOf3wSMv6fm3s7Fm5bzd/WW1rby+0h9TIhhW
	 S1Fb34creFWkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A94A481153;
	Tue,  3 Jun 2025 21:00:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C9451F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 21:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E7A040187
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 21:00:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ukyzQIPf32_G for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jun 2025 21:00:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52e; helo=mail-ed1-x52e.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DB3CF40166
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB3CF40166
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB3CF40166
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 21:00:50 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id
 4fb4d7f45d1cf-6020ff8d54bso11065660a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Jun 2025 14:00:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748984448; x=1749589248;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+PKgRqE/agxHfUSUWE1ZX+G/aaQhrQ+OflgKrEMgMlM=;
 b=b7a2E/hiMcfhDyTw4xpSXFlSK06mz8WljltIOi6lFpe1jMkVuDVxKMZr/xQwl1yOno
 AY0rFyeRfc8IqlaSSMkh/nW/Fbv1mniFEzQZ9iVUDtibSFfaK/8OYcTwC7kVwLvJgDFR
 c+tKkUwTGdGOFhm0Ea0hNWCj2BHyrruy6Z6Lz9BHb8oRNrzqAH7kcPXrIYqI48Q12LRc
 MIg26rP5sDgSxulFtVDEUuF5rJFxm4NfsCFuMUg9ySUw3sZ62LYzFUskhXAHlPwoqCC9
 rWSuxhnGPHwi3ThYPQzh4FXt0v/B0oLjst6I86Txlk3wb0SDX37YsAZLRmqMqEFZnHh4
 GEZg==
X-Gm-Message-State: AOJu0YwuxvKgS/uVPnk3MAnmoqOO8K6Qbki5TopsSPu752nSVyfKkRzZ
 iI7ZDFdbQVfx4V7mu6GjHvJSydJdiNmRKA1FbTZq/BMo2oYxSGlXn0XMCJL7r+rb/Q==
X-Gm-Gg: ASbGnctAC81IpGhQjsyJFvAOsOCNOSqtllR6DoJxs+4LZDtUP6iA0DSpFWWvDTO9rVl
 4IeTKNh2KD9EnK22qFda5ctjHaJjrq9unedAYxDJIj123VkghcEouaueQXDYsO97Zkh7hPalIQU
 +KfI6xQMtWHwP/+KfVt8xHB7KCzcDo3Z7/0470udCbiMqdeSEkNBmFdb2usyHcwEBhW2aKor1cu
 6GPnxJbm3W2icqAPCDvRS8IxDTI2ewbO55jYmVacKLpadC3uHIBhzXfSyrToVLcBhEbU1HQqF8x
 Cc0xW17vCHWW29afiS/bnKKGSiK9YKmriS79FPKehITJW13N1A==
X-Google-Smtp-Source: AGHT+IFE/zq55kKCpFNUP8s47xQ1VlVxdxq1nZI5gpd41ZgPDjMuxiJo036Y0yIPNM78hWufsGJ+cQ==
X-Received: by 2002:a17:907:6d0f:b0:acb:b900:2bca with SMTP id
 a640c23a62f3a-addf8a92b51mr10123066b.0.1748984448317; 
 Tue, 03 Jun 2025 14:00:48 -0700 (PDT)
Received: from [10.2.1.100] ([194.53.194.238])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ada6ad3d7ebsm1002032566b.159.2025.06.03.14.00.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Jun 2025 14:00:47 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <c0ece81e-6fee-41bb-96c9-eef36b09af37@jacekk.info>
Date: Tue, 3 Jun 2025 23:00:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, Vlad URSU <vlad@ursu.me>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <23bb365c-9d96-487f-84cc-2ca1235a97bb@ursu.me>
 <03216908-6675-4487-a7e1-4a42d169c401@intel.com>
 <47b2fe98-da85-4cef-9668-51c36ac66ce5@ursu.me>
 <8adbc5a0-782d-4a07-93d7-c64ae0e3d805@intel.com>
 <20f39efe-ba5b-44b2-bfe6-b4ca17d6b0c1@ursu.me>
 <1e92a26e-1fb9-44bb-86df-8007cf9ee711@intel.com>
Content-Language: en-US
In-Reply-To: <1e92a26e-1fb9-44bb-86df-8007cf9ee711@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1748984448; x=1749589248; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=+PKgRqE/agxHfUSUWE1ZX+G/aaQhrQ+OflgKrEMgMlM=;
 b=2NmRsm4kSo/avy7DN8VXLDB5eNw2f1sJZGiRYD/VrhuccioT4WSIklZF3aMekNJco2
 NpqRJ640jDl1RQJPcPXiZklAElj6uQJ2J7qCtQ65nOGeXw+KWSt6Lz6Hh2pVqsiJO2Fq
 ubNL/ZeY+ySvl1mSquZnWW21HQFpGrLm/X3WR8k5LyJccHM7UsbOzqwUO7Bb529ZI6yy
 +aMjwoOj+LcM1xKpac8n6OBHao55DeJVkQArkcxLwxj5chtL9wtLJ14eFoo3M/M3FR6Z
 2dbV5mwc5/5ASu0v7y5P+1rBUtdiZDYsPnK25mr83aHTi1OajD78y7AsDwbWTBPu0OaL
 yOSw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=2NmRsm4k
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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

>>> If no update is available, perhaps we can consider ignoring the 
>>> checksum on TGP systems if one of the following conditions is met:
>>> 1. SW compatibility bit is not set (current Jacek's approach)
>>> 2. The checksum word at offset 0x3F retains its factory default value 
>>> of 0xFFFF.
>>
>> I am already on the latest firmware. I have also tried downgrading to 
>> earlier versions and they have the same problem.
> 
> Ok, so in this case I think that we should go with option 2.
> 
> Jacek - can you please add this check to your patch?

Yes, I'll prepare v2 by the end of this week.

-- 
Best regards,
   Jacek Kowalski
