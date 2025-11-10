Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEAFC48E63
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 20:09:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0661C40580;
	Mon, 10 Nov 2025 19:09:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UiYx8oZDI_zL; Mon, 10 Nov 2025 19:09:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 809AA405AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762801778;
	bh=Kh/pfFXNphB5J8FM7JSKHKBWUvUQumq6jmykYXtU/Fk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KSD6nwOdrKmVips4oBsA8X/j9sj0zXWpqi9lZ52E9bMx9LKYDG6n0bAW7RxMkQFWS
	 NahMj3wYHcmwB3TSuoSf9wO3vO5NbkvVE7idGnSejSkLFqWrrgIPxN7l+LmQnSOIvP
	 4CHbvWMZY2ZYPbP3gGJmV/F8CtnAAP6EX0iHUocYcU/5GIvMT6a6JjJ7YeG/b5yZ/i
	 /ZlW1DYWFnlh/xtMKuoRUtk6lqsXpU2xsoOeVeddYWuhteCy19vlPOqKsbYpy9+Tfc
	 VPsCaz8QsXLjUEBmCxdVzNhSjmpYzDy9NEwAeXcUkNXnQ6GAV1IfRxOiMfaQBdf5Xc
	 u6Qg8DGCz2cnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 809AA405AF;
	Mon, 10 Nov 2025 19:09:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BDBD6FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 19:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A452840580
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 19:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S-2CrYbjFO2E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 19:09:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::730; helo=mail-qk1-x730.google.com;
 envelope-from=daniel.zahka@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E84F64057B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E84F64057B
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E84F64057B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 19:09:35 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id
 af79cd13be357-8a3eac7ca30so214916185a.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 11:09:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762801774; x=1763406574;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Kh/pfFXNphB5J8FM7JSKHKBWUvUQumq6jmykYXtU/Fk=;
 b=FZypiMXje+8TEseg/r1oIVClWhYxARLBIsE5KBk/rYSH7OKPdLydbOivCll7W1Paxv
 vgsYhLAIa9FWWSv8lkpXnxQyh7IKKJhb5W2JDCywV+lNBVTPq2DSQ9PCYsftvUbXlD5w
 fU0JAJ0wZPZeTlJk1+7We5qWfZTCredlZw2DLWelnmgjJ4xKLLktSiEpnOs85OWhzd43
 9pEIHtnRFMbVX7xSiYTgHMjdaAcYoO+4HllojS26UOuWeqwupVxrBL6FW8dOYGellfqh
 QeqTRoCEzR57vYGO7ZLKgxKkqZT8JRBrc4O7Q/vYpsX0E/6X445Fi6vS21Kjie30oAZj
 PcWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWbHkJ6zRvgVtSb4pfh8Pl8Ua+ois5RNhK9FEgLNBumwh4pDQYLIpHNmxPWKOD2QsGo5Hgb22zlR6sAC26GNqE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwIv03dRD21Ain5orr7CyY0XrmVfqN0/dJ846+gku5GY7j7bNU8
 iHY1VlxnD+RDqNQWYtO9pVoNZ+8Se6jj3nxGIW1Pb7dJIJrEi024fgNp
X-Gm-Gg: ASbGncsJIBmNEKYm5cW1JU/V6uTtnrtQj5rijidrvQwW4JNe9X5GFNTlbAvuZiNTFDk
 SYg2quaCEnfdCdOiRYbbhC2qTQ7cMfVM0T6iSeCXaFNUZDlsQVhIaxM4S091BivZPyYFjtYdTBc
 5Q7qiLrX0mNwGwA9Z82k1S8ClVX857fOat4OHhsdRSCZFPPSIl5jFTpheSkzCkj8E7zLFhURhQh
 Y7JMZgGitWEGGFk2hv3gmS6C/tsgI3bnxJvdhkMNzhxT2jGt6DLsWmeJVpch1KTMXYkxfqCturc
 cIIDDbKJlRRSmfv2UnIFB9TDd0xTCZWBMH732XRn75ehZyPdXpKcWbHlDBnxI1QGGiXqp8kLaxo
 9YFAIemt1nFnqnlUZRqPddk8h8BifdFRPzDQDN0KrbW0W8ovY2Doz3bugmnTuJTd0wow5RWjvT1
 dWH6JV2nlPgLRWWeqGxun17mKkdA/sM48=
X-Google-Smtp-Source: AGHT+IERCXMjJNRnt0BFVnvUSTvP7ZvwPBkw2ba4rSGkzoC1mJwG61sqECbRHnlBF54bJjOGFPQBbg==
X-Received: by 2002:a05:620a:c41:b0:8b2:1568:82e8 with SMTP id
 af79cd13be357-8b257f05374mr1272565485a.35.1762801774300; 
 Mon, 10 Nov 2025 11:09:34 -0800 (PST)
Received: from ?IPV6:2a03:83e0:1145:4:3280:a85f:e61:4547?
 ([2620:10d:c091:500::5:432b]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8b23582b0c9sm1066092985a.55.2025.11.10.11.09.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Nov 2025 11:09:33 -0800 (PST)
Message-ID: <61e1b43c-e8cf-491d-83b0-22ec46784a88@gmail.com>
Date: Mon, 10 Nov 2025 14:09:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>, Saeed Mahameed <saeed@kernel.org>
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
 <20251107204347.4060542-3-daniel.zahka@gmail.com> <aQ7f1T1ZFUKRLQRh@x130>
 <jhmdihtp63rblcjiy2pibhnz2sikvbm6bhnkclq3l2ndxgbqbb@e3t23x2x2r46>
Content-Language: en-US
From: Daniel Zahka <daniel.zahka@gmail.com>
In-Reply-To: <jhmdihtp63rblcjiy2pibhnz2sikvbm6bhnkclq3l2ndxgbqbb@e3t23x2x2r46>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762801774; x=1763406574; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Kh/pfFXNphB5J8FM7JSKHKBWUvUQumq6jmykYXtU/Fk=;
 b=VEskPKs1VcKqodzCoRU+4QUsBiEgEknZXmPHVMR4vxBZTgKgpzTWj0DWbfYPnZKTbm
 N/13To7p9z4Pjm0iG/DkEYx4JBPKtH7O13plfIRxk9K4H8UHPfyypwBgrxw9QS3KOoku
 FAj0SL1dJyCPpRJsncfSIqiUqZudve9++I8bPqALfQ2TBMSveK3BeScvC55bKGL8of1L
 hw/90tmO3fKuLoreLujMFAKD77bL2Mv4shpB/7EfBQ9JHfaDW3VCro7odcSs7zxGFRNk
 topMTjVr0ND7uiwfqCv9IFiJXPhx662D3cqk1FfpsrYu4um08Epu/rvKiwf8ixOyHQN+
 w7iw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=VEskPKs1
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



On 11/9/25 5:46 AM, Jiri Pirko wrote:
> Regardless this patch, since this is param to be reflected on fw reboot
> (permanent cmode), I think it would be nice to expose indication if
> param value passed to user currently affects the fw, or if it is going
> to be applied after fw reboot. Perhaps a simple bool attr would do?

I can add something like this. For permanent cmode params, it might make 
the most sense to expose current and next values the way mstconfig does, 
but that would be a more complicated change.
