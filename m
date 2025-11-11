Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AA8C4EC04
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 16:20:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CB3580BB8;
	Tue, 11 Nov 2025 15:19:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7a7EuQ_sPfJj; Tue, 11 Nov 2025 15:19:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E68680B84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762874398;
	bh=A5SVOaFDlCV2uNNJy3v3HZSAyck/afp0AOlD6vgrWKk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mtY+a6xvqR/YfIdQa7uB6XHpbCinxZmsjXaB5Ly0WKoxqNeg4DNosbCkfB7/Z77QT
	 cWee53Cod8AUP7DL7EDulSs4g2ED/59aXyopc7Gi1rSgYRcdXn5oKyXBER+08wV9Nc
	 m5bqR3sJcRoqrSckNvngbCWLrsE3RiIf8qZuAK85Le1LlCuxyY88nO5H/AI9XFxgk6
	 XVCmiK0P4+8pwXm2JlHE+2r1+RzNADx11P56sD+8iQ/6/IvCLnfyZ+n1JbZsVvrw5d
	 iah/OB7IxPCffs9Fz6UuFAIMnz+b7lz2aS4Uy+H+XyAG4Av6Rxc+ze/BhTI9/xJs09
	 Kldz7Xfmhq/uQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E68680B84;
	Tue, 11 Nov 2025 15:19:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 382E431C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A994407FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:19:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lMFe8pz9LU5u for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 15:19:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f2e; helo=mail-qv1-xf2e.google.com;
 envelope-from=daniel.zahka@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 52236401AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52236401AD
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com
 [IPv6:2607:f8b0:4864:20::f2e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 52236401AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:19:56 +0000 (UTC)
Received: by mail-qv1-xf2e.google.com with SMTP id
 6a1803df08f44-8823dfa84c5so34953646d6.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 07:19:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762874395; x=1763479195;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=A5SVOaFDlCV2uNNJy3v3HZSAyck/afp0AOlD6vgrWKk=;
 b=Fa3reHVJFdHN2bWJYn3xBmB31q/ogXaA1xJ9S3eYyoPHjDVojd91MJsuaaTegp3Dvk
 qPDYDjbHp8alWcLUfhvkTAF8Yaj0AgyuwZCorDwnRVtB/le9ZcDtqO8NQxWZrwYP9jWd
 BDFAds/P9Ax35XQ+AelTQyyNK2paoGK2L3mi2BZZImMIrUF0BMeEDIohcvyPHrKZ0Je3
 cSKU/FM3SygubMrF4nUhLoFOYHk/9SuB6PLfVtJCq+qoY4gr/xt6IMczANTbSXYEoQHW
 KNLhsSMLv+QatzTs+CwTwWnZJbrsYPOo54UbSOY788vBzI+Agljh2Fj+wGnJZ5CznfCI
 0CDw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWPND6puLg1EoY2P9sMceB0aZBLyBoT6D3bvZ1TGrCGNUNij4VdEEDJ3WNtnRn9fhKnC1c7K+WiOo2Xl1nZJmc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzRgtNfQcIrDUCYsnMaE9LKOFjystLKIxAKNcfdyvmDoLgcFobL
 m5vPANi/rRUNjB/LEgWE5WDmGM+eV9DP25g81t4t8VG34lxT+T+JGaKo
X-Gm-Gg: ASbGnctTpxb7gowsMh6FKHtz1C68hJKntmCzwccgJM/+VWN3+Qei9GrMWiLZ1atcv5n
 W8oKxlBLm2FMq8dsvl7wHZDaidLPOrG6jHzwFJCfjDtsulOJ9GltwRDsPQOgDRRZvQo4P2Ily6h
 sRpF18Snl4O9UDf/n2ofMD8yDCf7jeFfVJQwHNCdaAQL2TX8yloYRds4rxcnTrz7PfD3TPvZf2/
 FE9a3CFn/dTkCDVG50M1QTxeK1lt8F7UL4tkKW9SNuRdTXSKGthOqEd81om0+IIHHebY+gEtmQV
 P/OrurRIYCvFHMb0Qy886cOfoj7JBYRWqAZHlkrY0gRKul63YHOYa5JTV+Jl5RH/BSXvj1/UGHL
 c1TzGttaeOx5cb/VV+QRB4YBdFe6sVMGEpjNGFO3DGzCNm24C3BqUNHDRJo8MVfaClNBMZ899X3
 gTCyOO9waTxpGYiCXAmzvTj3hp
X-Google-Smtp-Source: AGHT+IFAbbyQhephY+AI/cqoiVmNsBG/fPVAb6kdOEXVVnWOQfxDiV/20VWcE/IFvlGD21yeGrFzgA==
X-Received: by 2002:a05:6214:21c4:b0:880:5636:6241 with SMTP id
 6a1803df08f44-88238769402mr175766236d6.65.1762874394765; 
 Tue, 11 Nov 2025 07:19:54 -0800 (PST)
Received: from ?IPV6:2620:10d:c0a8:11d1::1065? ([2620:10d:c091:400::5:ddc])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-88238b4c3c0sm72793516d6.33.2025.11.11.07.19.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Nov 2025 07:19:54 -0800 (PST)
Message-ID: <9fed6ab9-e748-4a78-b45b-5e6b3cc58006@gmail.com>
Date: Tue, 11 Nov 2025 10:19:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Saeed Mahameed <saeed@kernel.org>, Jakub Kicinski <kuba@kernel.org>
Cc: Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Srujana Challa <schalla@marvell.com>, Bharat Bhushan
 <bbhushan2@marvell.com>, Herbert Xu <herbert@gondor.apana.org.au>,
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
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Manish Chopra <manishc@marvell.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com> <aQ7f1T1ZFUKRLQRh@x130>
 <jhmdihtp63rblcjiy2pibhnz2sikvbm6bhnkclq3l2ndxgbqbb@e3t23x2x2r46>
 <20251110154643.66d15800@kernel.org> <aRKs6jXqSvC3G_R0@x130>
Content-Language: en-US
From: Daniel Zahka <daniel.zahka@gmail.com>
In-Reply-To: <aRKs6jXqSvC3G_R0@x130>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762874395; x=1763479195; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=A5SVOaFDlCV2uNNJy3v3HZSAyck/afp0AOlD6vgrWKk=;
 b=QT1akEIDhW6eodh+XYI3sF5ezZ4I3536Mkzw+MpApBaj5R+7r68KVLPaJ6rYcApmJ5
 iV4J+rkn5OgrAkcpVnAEr8JuCC3KYbUuUwYTV8eeSpGSEol2yAIgAa+2GD6PG+puyDky
 K+1jKQMXPTO1Y3CzMuugrnfLXDNimGtyIAlbhpDFZ23HA61f52o9RLChpLOn+RlGXxl8
 N8VegtzD0adKbZVqaonLjgq/jiSAdDF5PxseuwD0V0NJyZf35BG6OyNYTXc9LcB4d77E
 vaR8dZRTGfO8zvD+e0rRqY+cps82BD0CpjmYxCLO09aDv/deR509dJXmbTUG3Py60Oll
 mIWg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=QT1akEID
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



On 11/10/25 10:26 PM, Saeed Mahameed wrote:
> On 10 Nov 15:46, Jakub Kicinski wrote:
>> On Sun, 9 Nov 2025 11:46:37 +0100 Jiri Pirko wrote:
>>> >So, I checked a couple of flows internally, and it seems this allows
>>> >some flexibility in the FW to decide later on which mode to pick,
>>> >based on other parameters, which practically means
>>> >"user has no preference on this param". Driver can only find out
>>> >after boot, when it reads the runtime capabilities, but still
>>> >this is a bug, by the time the driver reads this (in devlink), the
>>> >default value should've already been determined by FW, so FW must
>>> >return the actual runtime value. Which can only be one of the 
>>> following
>>>
>>> I don't think it is correct to expose the "default" as a value.
>>>
>>> On read, user should see the configured value, either "full_csum" or
>>> "l4_only". Reporting "default" to the user does not make any sense.
>>> On write, user should pass either "full_csum" or "l4_only". Why we 
>>> would
>>> ever want to pass "default"?
>>
>> FWIW I agree that this feels a bit odd. Should the default be a flag
>> attr? On get flag being present means the value is the FW default (no
>> override present). On set passing the flag means user wants to reset
>> to FW default (remove override)?
>>
>>> Regardless this patch, since this is param to be reflected on fw reboot
>>> (permanent cmode), I think it would be nice to expose indication if
>>> param value passed to user currently affects the fw, or if it is going
>>> to be applied after fw reboot. Perhaps a simple bool attr would do?
>>
>> IIUC we're basically talking about user having no information that
>> the update is pending? Could this be done by the core? Core can do
>> a ->get prior to calling ->set and if the ->set succeeds and
>> cmode != runtime record that the update is pending?
>>
>
> Could work if on GET driver reads 'current' value from FW, then it should
> be simpler if GET != SET then 'pending', one problem though is if SET was
> done by external tool or value wasn't applied after reboot, then we loose
> that information, but do we care? I think we shouldn't.
>
>> That feels very separate from the series tho, there are 3 permanent
>> params in mlx5, already. Is there something that makes this one special?
>
> In mlx5 they all have the same behavior, devlink sets 'next' value, 
> devlink reads 'next' value. The only special thing about the new param
> is that it has a 'device_default' value and when you read that from 
> 'next' it will always show 'device_default' as the actual value is only
> known at run time ,e.g. 'next boot'.
>
> I think the only valid solution for permanent and drv_init params is to
> have 'next' and 'current' values reported by driver on read. Or maybe 
> go just with  'set' != 'get' then 'pending' as discussed above ?
>

The driver reporting 'current' and 'next' makes the most sense to me. 
'pending' would just be implied then. The 'set' != 'get' then 'pending' 
approach would not work on my multi host CX7 system, where rebooting the 
hosts individually does not trigger a fw reset.

To be clear, are we willing to go forward with treating swp_l4_csum_mode 
like other permanent params in nv_param.c in this series, and then defer 
the 'pending' solution to another series?

