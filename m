Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE13BAE839E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 15:05:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EADF760F2C;
	Wed, 25 Jun 2025 13:05:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J3FhqtC9BGqK; Wed, 25 Jun 2025 13:05:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5727F614D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750856711;
	bh=NSJW3n5WDshYJ48Euz3P/Df3ZQsxS6XzFo5zNuEInuk=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IcQmZwFydfEibvknSVyuMsICcqaGl6H5Lo4AkgYqzXNKwfTahHxDKOO3KX3/mzOmO
	 NA/KOGOZayynWALpd3Fy16DxqgsTWt+VXnRJn7kzd0I5PiCrNZQ1tu9wdifpwSg+3Z
	 jEnKcxS+DSbEW5FFiubRo5LnIbPLtMGQrnOsTleehc5mE6NrfOSR4ne9Mjb0EYIuqG
	 uPE17rDHR1DxxIi1E4u6NN66DSBAO9BlSoLH0SkrBE8tR8/Ep+aRKGamXFy+BrvdhS
	 qU8s6KrenmJsVYj7hOKIIpZvi4ylBxC1HnBnf/6Yctb+XZa4OPrprUF3S7FTYdTD8V
	 bNoYhuZl7pJ1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5727F614D1;
	Wed, 25 Jun 2025 13:05:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B3D3154
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 13:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D044614C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 13:05:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id koiXcP4KNSIC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 13:05:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D6B04614C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6B04614C0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D6B04614C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 13:05:08 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-ae0c571f137so121104966b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 06:05:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750856707; x=1751461507;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NSJW3n5WDshYJ48Euz3P/Df3ZQsxS6XzFo5zNuEInuk=;
 b=rrPqNYBLby85c4optwSzpiDkj31hIwreAYzOAv9LtWDmRWtd40v1oYG0IMj0KqKOTx
 vVyhmSytCfH/jYQeHLswHx+Jvj9KK+M8h55wuLFRGOpD5mLO77fJ7OpssRd/chvOHjZR
 fuwHJH3WkrQy/6yjBnctaXTsYCBYjQ738Vt4Qm7aGJdTSOeaU5BiwP1XjKE3TuToayDc
 HCXGqjbWG8z4Exk0jOeJYXw4gL8UNmEWCRysGDBeLg2+gUYxOem7fQt+TDZKpzGa4taK
 Z1nWe8LvfAAGLFT9rpKCawCMSrStsrsTxNwKI4tw5vay/2bpKHepNLXUpD4Z7ZU0fSLD
 FMvA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXWIeSqKqI8Q15vsjUsDFiQakuV2ziB6RorDI+FMIQEPiP5EZagiZo4VPwRAPFVAaPtWVgkqHYGwuZ4ifpFZHI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwC/echoqsnZ/Bo/jmCP0HBx7qodI3NJ79jT35U5ZfEufx/aodv
 RHF8P2Pi49BV18KiZ0ZFSdPkdYVmVamXUDA277fn6NgqZTUEtLhAM8OdgATfMXAc4A==
X-Gm-Gg: ASbGncu7+Yy4lxF014yVYGRxmXLyChmUTEilmiNhkRH4TTq2Mq+aVvBYnSiRj5lqAtl
 zkwxJ8dYnCkaV3D+VjaXm79u3ZmLjvXi2/sYgH3gk34ewxit6ZWaWUML0hEekr8Q9a4H9mzPTbv
 Zb0zvvVmKcIckLSQlVzSaavwoQaiQbS+HtnmeDKwud/5VLKPVaa693j2kt8Qjg49bWf7390n10z
 umMFDeSRTAuFyq9oe0mb6s3zyTui2uYyfJp+qv1V5J7Xj1YvmTQHIEb8EDyaoFg1f1FolM2U2dG
 Qflx7U6nHYC20bF5AHgmU1kvX7PZvWdzlKaY2b7K8fi/IVnuRbpcVJ6BsQrIlEHo
X-Google-Smtp-Source: AGHT+IEC2nKPUdk50WFpUghJX26BtPFp6JEJuxNyGydhjELLPNt5ycVNb0kOu3HHnkCcdxhTWPz2uQ==
X-Received: by 2002:a17:907:fd01:b0:ad8:a04e:dbd9 with SMTP id
 a640c23a62f3a-ae0bf154a67mr288967966b.31.1750856706457; 
 Wed, 25 Jun 2025 06:05:06 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae0c0a824a0sm127853766b.36.2025.06.25.06.05.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Jun 2025 06:05:03 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <613026c7-319c-480f-83da-ffc85faaf42b@jacekk.info>
Date: Wed, 25 Jun 2025 15:05:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vlad URSU <vlad@ursu.me>
References: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
 <5c75ef9b-12f5-4923-aef8-01d6c998f0af@jacekk.info>
 <20250624194237.GI1562@horms.kernel.org>
 <0407b67d-e63f-4a85-b3b4-1563335607dc@jacekk.info>
 <20250625094411.GM1562@horms.kernel.org>
Content-Language: en-US
In-Reply-To: <20250625094411.GM1562@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750856707; x=1751461507; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=NSJW3n5WDshYJ48Euz3P/Df3ZQsxS6XzFo5zNuEInuk=;
 b=pLdiFSP+VjL95CPB1GUFOutALQZzCZew91mKnejpnBzJAMIehmJk3VjPT52po1W3hb
 dnwYJWFuKH3YheavMJlp0kz6AJPg7SbRvewcJOopF3NCvKyaD3rD2LEwc0dYS94k/6AG
 3jL8+NBndkPgpO7e3Alkax2TxdGnNHq9nfxfLl7EqXQ3lcLWn/Y2rbl0CqroKpMA+OLG
 0sQcFf3UujwXfEAUSCXZ1ul6w/FElSQoufFiQ0jufYYX0wqxzyWDI7Bm3PCyG0R47TMH
 7WUmmPWaaqlUFYVomxJXqIEArv1bF6kX3hpTZtbg14UIG84i9xZmlo8KlspOu4ymRnF6
 D/EQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=pLdiFSP+
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

>>>> +#define NVM_CHECKSUM_FACTORY_DEFAULT 0xFFFF
>>>
>>> Perhaps it is too long, but I liked Vlad's suggestion of naming this
>>> NVM_CHECKSUM_WORD_FACTORY_DEFAULT.

So the proposals are:

1. NVM_CHECKSUM_WORD_FACTORY_DEFAULT
2. NVM_CHECKSUM_FACTORY_DEFAULT
3. NVM_CHECKSUM_INVALID
4. NVM_CHECKSUM_MISSING
5. NVM_CHECKSUM_EMPTY
6. NVM_NO_CHECKSUM

Any other contenders?

-- 
Best regards,
  Jacek Kowalski

