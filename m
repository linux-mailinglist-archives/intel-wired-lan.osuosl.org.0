Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F341CC319B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 15:48:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C5EC8222B;
	Tue,  4 Nov 2025 14:48:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pb3s-XL-_PlR; Tue,  4 Nov 2025 14:48:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9158382226
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762267707;
	bh=TYbk9wPxk/JA4+MxrrdLZ/GfKAsrpCoWC70+eUl4rp4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I0I6bHxcYCE4QNxW3Gmk09x5HJ0U74/267KfHwzbKNCV/oav/HcojSY1IJFSFJVZS
	 6aPWjJX7YxEjLfVW4797Cbv/EteW4w3vCw3/QlOdBWbY66I8LRoroXGgD2N8+b7O0/
	 3IGYUpYnEFe+1jc1XwpUy/snkqqIOcmE9H04afu/JD7VRhieR0WzkRSemahGs6Rm11
	 ZSDiPv+qZr4AFvKQssfK4FC8L/YLzVvvM0FrYEys/PVbHYoUvH1EsUWrx4pgPNLzSG
	 ZaGyEYlfuM/MYytlKL076quzTyV+yWL7XH5XS8mGJgWqCRTnUqELuA9OQFKt0iI6Bo
	 6G877s2Uij3YA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9158382226;
	Tue,  4 Nov 2025 14:48:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C339222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 14:48:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1AFA24010B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 14:48:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7nULy8eIRTWL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 14:48:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::729; helo=mail-qk1-x729.google.com;
 envelope-from=daniel.zahka@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 507DB400E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 507DB400E7
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com
 [IPv6:2607:f8b0:4864:20::729])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 507DB400E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 14:48:25 +0000 (UTC)
Received: by mail-qk1-x729.google.com with SMTP id
 af79cd13be357-891208f6185so520793085a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Nov 2025 06:48:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762267704; x=1762872504;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TYbk9wPxk/JA4+MxrrdLZ/GfKAsrpCoWC70+eUl4rp4=;
 b=nywNOFFGbn5r+SYRHxnFN9ImpxYPLXb+kZOhmp7s39UMtPDbtW2IkqKEzlvFIc0F3K
 4k2ZkAFF5F2bzW6K3QSP5pMH+0gnvDbmGCy14v75R+BZ2s32s0EQ2l/fzYkyiVou+orc
 fUQ8JjKBbOPY9dah9HFbAla5HtNM83nMBsgVgdnok5A/wZ7mLganqSWfZJXu3AHF4lv/
 B/aSYmajxTAsoHtSRNf7+AZJGNMkKHaMnksbvLh1W8hNo/ATDjj9w309KLrTW8SkXNGE
 +m7Rkd43jmNcmwERZdKnh+JvKJkI0VxvIqTU6RzLGWehEqwBnjvZxCvtB0BLcyFL0EKN
 ftgQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXq1cuLuL+jdG8jolQhm3uD7yGP4e9/Mn0g+AoVWTq4YuTx2t/Dw5cU33FIv/jEiEKVOz0XUNpf9u62ly3H5UU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwUTWHhqbMcm6zWHK+4PcYVqFCfk279PAYifG3WacJdaR1uSzFL
 xessN/5JFgsaqAilUT0kGjbO1qd4NpPDX9Mt4KfPm0n8qfhWG7pfsCc8
X-Gm-Gg: ASbGncu3MvhJAUj9yR+K2PQ01SD26Vu1/7tn4YL6oI/IIl+IwS+neTKOkcaIJAX69iS
 U6HKt+pivZOH/P53A9NreT1AgayRybJtQhcyHpzH1lIWd4v8yxGgvuShzmh1YzlgpmN4Cekin2z
 3UKeh1CkryBBwmLOKzFSb/u9oeYqoLkmoM7zeUvexo5LvjH7EyBGnzjKRbGozuBUw20KmxrTUZM
 VY7rCIbUG6V6dBIzE08S2jj1zQMWDGpL1BFyyXJTxTdImGXohcO8Kgpphf8FLfyBG+gzHM1UqeG
 yAKusJ7qVVrl94WYM6nHhWyVuiqrre/bayQ6V73kJdaf37/oLxRZpUDZTxyJYu0je2IcO4MJxgQ
 p2p8kcBZsrtMNTJrrYFoXWVD2Jbs46hJKnJRRW7YWlX6DQo+tkwxK9eIKBhn2w+E79cKYO7FHS2
 5VOpomh+mjmes7iCq1rEh81CtgVZs4vwrAdOVgXBrSy1BdLloycLRB+os1N2tjOMrGQg==
X-Google-Smtp-Source: AGHT+IGmraHbZP2E2iRwXxMxNgGXM9zhZedCgpJV66vhLBH8PzAO8Dn4btILshzP2e0cEKgwNzEvBA==
X-Received: by 2002:a05:620a:1a27:b0:886:173f:1b4c with SMTP id
 af79cd13be357-8ab9ba6fd3emr1982205785a.80.1762267703489; 
 Tue, 04 Nov 2025 06:48:23 -0800 (PST)
Received: from ?IPV6:2600:4040:93b8:5f00:52dd:c164:4581:b7eb?
 ([2600:4040:93b8:5f00:52dd:c164:4581:b7eb])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8b0f543d90csm198693785a.17.2025.11.04.06.48.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Nov 2025 06:48:23 -0800 (PST)
Message-ID: <78db1fab-e482-4ebc-82ce-ba84b3f561e2@gmail.com>
Date: Tue, 4 Nov 2025 09:48:21 -0500
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
References: <20251103194554.3203178-1-daniel.zahka@gmail.com>
 <20251103194554.3203178-3-daniel.zahka@gmail.com>
 <mhm4hkz52gmqok56iuiukdcz2kaowvppbqrfi3zxuq67p3otit@5fhpgu2axab2>
 <db5c46b4-cc66-48bb-aafb-40d83dd3620c@gmail.com>
 <6aa2f011-3ba5-4614-950d-d8f0ec62222b@gmail.com>
 <p3pj3mu4mabgninwowqikegeotxgzhc4yptf7qrfhns37bnkoz@ugkbgvlkxqxb>
Content-Language: en-US
From: Daniel Zahka <daniel.zahka@gmail.com>
In-Reply-To: <p3pj3mu4mabgninwowqikegeotxgzhc4yptf7qrfhns37bnkoz@ugkbgvlkxqxb>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762267704; x=1762872504; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TYbk9wPxk/JA4+MxrrdLZ/GfKAsrpCoWC70+eUl4rp4=;
 b=DBg/Gbixdc4aYaT4G6jlM3aN4V5MZzx2d7J14s/qQWH2xMItuAjwlSEK/WhRRUCVDd
 v3duGC7MaLOcMjcZx1ABovO5f9iizHpw6X1EmW4UApJRFQQrA+7DpDpNta3BMCOI0lX8
 8ou5TSaCyRzd12XyZALiIqW6gROonvrtibcFfFymKYyPt1lasbjPc9xJuHKjXDoYaXdW
 nN3Yaw4nbFxnRomMdosLOGuLiQtv/92IuRpyjPi9+FX35FRiBv66ZLrpoaJ1XC6OanB2
 5h8giBYRdxv0XAqIRao+qcFR+JRWTGgnunASi/h/nO6NMo84HDx8iT2klU0kGYUxd86N
 oF3A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=DBg/Gbix
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] net/mlx5: implement
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



On 11/4/25 9:39 AM, Jiri Pirko wrote:
> Tue, Nov 04, 2025 at 01:51:16PM +0100, daniel.zahka@gmail.com wrote:
>>
>> On 11/4/25 6:38 AM, Daniel Zahka wrote:
>>>
>>> On 11/4/25 5:14 AM, Jiri Pirko wrote:
>>>> I did some research. 0/DEVICE_DEFAULT should not be ever reported back
>>>> from FW. It's purpose is for user to reset to default FW configuration.
>>>> What's the usecase for that? I think you could just avoid
>>>> 0/DEVICE_DEFAULT entirely, for both get and set.
>>> I find that 0/DEVICE_DEFAULT is reported back on my device. I have
>>> observed this same behavior when using the mstconfig tool for setting the
>>> parameter too.
>> e.g.
>> $ dmesg | grep -i mlx | grep -i firmware
>> [   10.165767] mlx5_core 0000:01:00.0: firmware version: 28.46.1006
>>
>> $ ./mstconfig -d 01:00.0 -b ./mlxconfig_host.db query SWP_L4_CHECKSUM_MODE
>>
>> Device #1:
>> ----------
>>
>> Device type:        ConnectX7
>> Name:               CX71143DMC-CDAE_FB_Ax
>> Description:        ConnectX-7 Ethernet adapter card; 100 GbE OCP3.0;
>> Single-port QSFP; Multi Host; 2 Host; PCIe 4.0 x16; Crypto and Secure Boot
>> Device:             01:00.0
>>
>> Configurations:                                          Next Boot
>>          SWP_L4_CHECKSUM_MODE DEVICE_DEFAULT(0)
> This is next-boot value. You should query current (--enable_verbosity)
> to show in param get.

I am still seeing that DEVICE_DEFAULT(0) is read back:

$ ./mstconfig --enable_verbosity -d 01:00.0 -b ./mlxconfig_host.db query 
SWP_L4_CHECKSUM_MODE

Device #1:
----------

Device type:        ConnectX7
Name:               CX71143DMC-CDAE_FB_Ax
Description:        ConnectX-7 Ethernet adapter card; 100 GbE OCP3.0; 
Single-port QSFP; Multi Host; 2 Host; PCIe 4.0 x16; Crypto and Secure Boot
Device:             01:00.0

Configurations:                  Default             Current       Next Boot
         SWP_L4_CHECKSUM_MODE DEVICE_DEFAULT(0) DEVICE_DEFAULT(0)    
DEVICE_DEFAULT(0)

