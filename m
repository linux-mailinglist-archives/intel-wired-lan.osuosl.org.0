Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD10AE6C1E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E87B9612D6;
	Tue, 24 Jun 2025 16:08:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1SVOTBHpzA1M; Tue, 24 Jun 2025 16:08:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B1D56124B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750781334;
	bh=WY8CeVnLl9pE8ZwyaPrNepgc1WZAVINyiA3X1eItW5M=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5jEEh6MvTOb3ZZIh00INNBjvma06PXyLJYb1yqnlYwQf8vBFrNRM7GGHciL3+49K4
	 NoEQCTJkjqt1ZJ2o/HXFqkYtIe0pWTLQWo0qg9xV3BBRsBOHW98bAurAP7MGf26OsH
	 IIPOFR0N3HFj38JdLs8db5xEHGqwJ/ah8xNrb0nRQX9BRL4I3RLaZ7wKTkIj1xQe9L
	 e29xDatAh7PV3MD+FR86+zsxOm3LjxDomls3cr49LViuQppEkahTkd94aRWel2DcUj
	 pRxK/nn3di8VdODeATc/n7LFXGZ/kypkTpfXNon3anOYhPE/zdsnqCkAe4sUUWloC9
	 qN7YYgkzz7sqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B1D56124B;
	Tue, 24 Jun 2025 16:08:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FB5E43F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15D1D60C22
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:08:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F6Hs4ES-DIxV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:08:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B278C61164
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B278C61164
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B278C61164
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:08:51 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-ade5b8aab41so1143750366b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 09:08:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750781329; x=1751386129;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WY8CeVnLl9pE8ZwyaPrNepgc1WZAVINyiA3X1eItW5M=;
 b=Bj//LCiRkaIjBw6AxDcncQ/BBsWc4LTBuFLT1lFNgmMznKVQKD5cK7dEzst4cP+0Y0
 dNt0D0j8sMjxtQKO4QbYpAgUsqMAntOH56yHmjo44MAt7PRqS3PB9AoS0wSnfYPKoHTU
 l/8SdZRjRAAMXumdLsIcIqCB8N41i9dgREdDINh3xFoFxvt6jtRbVydp4br46NQT/6H3
 162VuDHyo71oKr9Lb6G0AHWKe4F8LJpdGQk2/hgHNvO4vllQsIjUdKhUh0CKN+pJ4Ayn
 jSPePRGM/ZKXkJjJhckl77TBR/IXB6IpIiM18DlwbOW3jTIG0MBHMCXyGSO/QAlJxb/e
 aFbw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXCiboNQppvP3CjeLCdjpgF43ISWH0t8YoipaAfQBOT+ZpxI/D7n7CtamAmk91NdwWosj6NPYP3sQ+j65LER4o=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyuoQRrelHC+P8gZGZ8pm6zhYIRpwnZ0OYYDk6oIIGunpqW7s+x
 jviJ7ga+Azv+BcwV9gF++teqr5UUPh/zHxPMSXImFs7F2SeQEMcnFQtDHeseolL0Sw==
X-Gm-Gg: ASbGncthZgDx3Kl2W71kvaCy/mwsVTVAlEsMCugPDufnk/isLy9wweCHrpkH854AHP0
 +vnmBaDFPi2prFLHfXQncohKlgcYAyl1j7ZfUw9iPYB3R75/QhJkLSesTwWfJ8JMFSiwqNtxTQo
 gQCNrb1ByMfLPPPeQQnbR2D8JAcM4T1rRtKF6BmYDjLa+6MI86/rKybhwlcgFVSQFt/B49HUYFR
 weY043O7Iq+C/0E4XC5hc5AUtxqlGn5CGEhxyUU7NaHbjTpxys0wx39Msu5J0k9JBnR2PLa1FQt
 2Py3hayBY9kWMjIqgrWiVjPcf8EIl8QIgzhWr4TVTDjaxX0rdPdqZ/YgyFZ3q4PD
X-Google-Smtp-Source: AGHT+IH2pH0T6i3mZs7TAt1UWsCRfOAa+jl9+T0R72UNW3AbWhpd89UJ/JuJJF5f5GKRJDyujV2Y+w==
X-Received: by 2002:a17:907:9809:b0:ad8:9c97:c2eb with SMTP id
 a640c23a62f3a-ae0579c1161mr1750959466b.19.1750781328829; 
 Tue, 24 Jun 2025 09:08:48 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae053e7f949sm896228366b.34.2025.06.24.09.08.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jun 2025 09:08:48 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <b4a3ddf4-c03f-426d-868a-f6e75cda179a@jacekk.info>
Date: Tue, 24 Jun 2025 18:08:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <fe064a2c-31d6-4671-ba30-198d121782d0@jacekk.info>
 <b7856437-2c74-4e01-affa-3bbc57ce6c51@jacekk.info>
 <20250624095313.GB8266@horms.kernel.org>
 <cca5cdd3-79b3-483d-9967-8a134dd23219@jacekk.info>
 <20250624160304.GB5265@horms.kernel.org>
Content-Language: en-US
In-Reply-To: <20250624160304.GB5265@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750781329; x=1751386129; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=WY8CeVnLl9pE8ZwyaPrNepgc1WZAVINyiA3X1eItW5M=;
 b=sIAquBRSy1R3W6+MyxPzz3gT/ijOE7u2uMLIZs1t757nwSgXhoTqA/wS4ZNfA6BWgh
 /iYPr+KgrTHgsUr/YdJB556Li5uhikORFHJMTILlZCmeI93jUxYDbZK5irAgq+um/DZv
 5ruBl0u2RgGvbvoGLSeN5ZutmANVwJi2cNl714WnytkGdoB+Oz5aIBrJe7hEo5F16CU3
 AgfpPyMGL/Wy87g+DjVqGTU+zR/si5uhvsp7JNmoOfd/o+Z3w+nquuXXsGhcXcTla+NI
 Jnxa8J25a6ZYz62GxqMdg+X3lRZqISB+9zFSczaKWEh8RdAem76L4sWMiNHeWnTHfBHS
 vOig==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=sIAquBRS
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: ignore factory-default
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

>>>> +	if (hw->mac.type == e1000_pch_tgp && checksum == 
>>>> (u16)NVM_SUM_FACTORY_DEFAULT) {
>>> 
>>> I see that a similar cast is applied to NVM_SUM. But why? If 
>>> it's not necessary then I would advocate dropping it.
>> 
>> It's like that since the beginning of git history, tracing back to
>> e1000(...)
>> 
>> I'd really prefer to keep it as-is here for a moment, since 
>> similar constructs are not only here, and then clean them up 
>> separately.
> 
> Ok. But can we look into cleaning this up as a follow-up?

Sure, I'll prepare the patch and send it once this series is applied.

-- 
Best regards,
   Jacek Kowalski
