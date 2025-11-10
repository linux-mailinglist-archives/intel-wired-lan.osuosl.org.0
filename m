Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E5EC46C44
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 14:06:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C559540547;
	Mon, 10 Nov 2025 13:06:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W_8fd7DVvzSq; Mon, 10 Nov 2025 13:06:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45BEE40552
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762779965;
	bh=4YDJ2IN0Zya8uyamUgknQHfjkE1b693NA6xUsZI23zo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hjO2u8o07ZKeJF/4ib1d8Itk7Yto7+EAcw6GvAWsgf7Lom4s3zSKQe0MP0JQrUc/V
	 k8D/g+b46owxHoYIAkgWEyufJbxrzfZMw79cqEW3QH0qmshuKE6mg9hwjB76w/Ikf+
	 QGlSRapf/PSyFO39BkOznVc6BXc8zSeR7YfOXaMXuhSn3yn8T9T7zGEHcX7+k+Pw90
	 /y9UORsDJU66+YU1DM37BxW+F2SJdysM2aZ+yBtWLytcilKOBZGlSzRPFuENFAvtKD
	 MBCgZTNkaAKd1+5ujriPUvGxn7H6yHQtlDYhL6mH+Il5tENzEahq7F8n+tIsq1kDLg
	 7YiJbpo2tGKbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45BEE40552;
	Mon, 10 Nov 2025 13:06:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C27D25D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 13:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25E2C404DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 13:06:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gy2n1Op9l_I4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 13:06:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::731; helo=mail-qk1-x731.google.com;
 envelope-from=daniel.zahka@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B8CDB40378
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8CDB40378
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B8CDB40378
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 13:06:01 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id
 af79cd13be357-8af121588d9so432216985a.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 05:06:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762779960; x=1763384760;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4YDJ2IN0Zya8uyamUgknQHfjkE1b693NA6xUsZI23zo=;
 b=jMGChNXQM49ImzP7d8atjdxV3pk3O4X5M6m8vhjGpDxCGMcwVSb5kbsw46q3pqeSoz
 GawpcMVCR9kb+dO8UWxUDIcFBmw233MSLreMt40/dV+R/nd0DjW8KqsUWaXkcIFCHn9u
 vtC0cgXG3wWdvsaHjWaAgC1K85mZ8BMIPtD0VgrQD50GBXRB5GroiKfxZWra0rZ6nBio
 O+/eFrFbEKs1c3ftnBJAmVwrP1nSBSBeAexq0LCTYyDgZwcU7KOVsZmKoPZeH9qC4GGn
 abJ2zCX7bkdeUNrFTzyXzSTpgI9SYCkhLpLn3oTpjWBERUxYwJmcYhMZNLmXisji6QLj
 dj5g==
X-Forwarded-Encrypted: i=1;
 AJvYcCV5qR7qRKzQdATwtGylg3KeNduAjNLf2IFl/EqFpML+pMJLGdPSjkW3cphg1W81E67kreo25VHA8GDZ4/TVJS0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzpZKzaFQVHkdT1XA0H0+vN7xlOfZgjngAV+h3jUbmoAxi2jKEL
 h3lHaXkL79xuMA/ss/efC5wJjTYHuGFOuuMyHiiwUmST690gNT5dK0tT
X-Gm-Gg: ASbGncvKl3Geso2RLu+90RxetmDVG6q5tAQLYaqpr1tXbopL+VceG238Uc1j0Pujm9O
 8yGHl3gGeEidMYGNl1gU8jRxlbo6GA7wamXkLHuSYUiJz12EkZRruFnkd0s0Xy8Tj4Nxa/L3tYQ
 6Uz4/d077ITYcZ9vaLjXx6jFM3nr9nXpUmcryxzhEpIQ1IZalFDCbuwVfYy24Tlepb54+p6oq8y
 MZInlM/DM+ouEl7qbd9Aupzn8/4colHrWgNXLD131uh5N89wfbpMqcY4gp6HXe4rK+Ch7jEvo8I
 z3OMw6xqA5RWHbRu7CXA5wp68sZkfP1ABSTW6ta6Jrkhafwc5PgeqBdyC8DWJq2CWaRfndsF0nn
 g3D0zRtwhTNVqiv0cwIQneNdOdfw2MKRrhHr24TQr7myz42iHiomsfA64JVP5f9UepB022zvdGC
 R0BMuqohjDe4PGrWeQMDue6Pu90GQH7Q==
X-Google-Smtp-Source: AGHT+IHItn4s7icuGrWLzo0GYDNZ1tLgQrToLgg9q7HDTX1ld16PDLwn6BncR/yAsJAAE+zCLju5jQ==
X-Received: by 2002:a05:620a:31a5:b0:88d:125f:8b5c with SMTP id
 af79cd13be357-8b257f76fd0mr1053956585a.88.1762779960211; 
 Mon, 10 Nov 2025 05:06:00 -0800 (PST)
Received: from ?IPV6:2a03:83e0:1145:4:d8fa:5eb:c3a1:9f16?
 ([2620:10d:c091:500::4:ad9]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8b2355c20cfsm1010519285a.3.2025.11.10.05.05.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Nov 2025 05:05:59 -0800 (PST)
Message-ID: <25ebaf18-f009-45de-a3e4-fe440c42ef19@gmail.com>
Date: Mon, 10 Nov 2025 08:05:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
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
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <mfuluoi4nebyc4avj52gkfs4nqikn6uwhqnkf4o6xfswtpceuq@zhpokcx6bb6l>
Content-Language: en-US
From: Daniel Zahka <daniel.zahka@gmail.com>
In-Reply-To: <mfuluoi4nebyc4avj52gkfs4nqikn6uwhqnkf4o6xfswtpceuq@zhpokcx6bb6l>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762779960; x=1763384760; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4YDJ2IN0Zya8uyamUgknQHfjkE1b693NA6xUsZI23zo=;
 b=a+UrXZFnT4jO1ienOZXj6cnuoLiXOdyRaHend/e5RPc10JHPkjWH5EzVRvjCQvy0MG
 RhiDPXt2EyrjPGajI2fe+XlrLDn2i1GXiJkAIYQnl+d4Kr7CUn5X79u27oj3xEXfQrSI
 ZdYBN2zi0u1hqDnzkMO10t30Ce8oPMUV0jDBRf5fIvK0sZBIDXkTsIAqdwIY3z853x4P
 shcNKPTugDOtckHQdBp/8Qa98/H8jjfCotxkl4VjStouet/x3sLE+PBDJFefgLvlDJwA
 29bFQ6s8KkJJMuar82B2kobzJ1Rkt+QlNFiz1o1sWlPZ3l/DqyaBV2T85RVNzRFN5J4q
 h7Nw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=a+UrXZFn
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



On 11/9/25 5:39 AM, Jiri Pirko wrote:
> Daniel, I asked twice if this could be a non-driver param. Jakub asked
> for clearer definition of this know in that context.
>
> Not sure why you are ignoring this :/
>

My apologies. I think there was a miscommunication. I assumed Jakub's 
question was directed towards you. I have no objection to making it a 
generic param; I will do so in v4. It sounded to me like Jakub was 
wanting more information on what exactly this setting does beyond what I 
was able to provide in the commit message and mlx5 devlink 
documentation. My understanding is that this setting pertains to tx 
csums and how the device expects the driver to prepare partial csums 
when doing tx cso. I don't really know more than that. Especially not 
something like what the FW's role in implementing this is.
