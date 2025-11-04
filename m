Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE26C31917
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 15:40:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5286481336;
	Tue,  4 Nov 2025 14:40:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qG0rcFa4zZ14; Tue,  4 Nov 2025 14:40:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5AE8813AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762267211;
	bh=rEkFVWT5NBv3AWUofiDX8hOm3L/6oD6jZrSiQV9+dPY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WiJo8XL5pcdM3YGBom3jV7iUa1p9Ky2+6VOtOX205zCRA3LdqbrPgT68X4DTDiiPz
	 01AfOFLg0WYqyMtKgk9ZNT1tFRt7aZyH8riOhCMmp6831oJEvb6OKohInqAGDdcdTj
	 ADZTw9Y2f0FGeqbATsfjCzEhP9z3lyhpyhLkpsmpXkDyuX++38Fk2GfR9++6pCp+bV
	 jsRGrVYUNP48B65Gz0AjKWNxV8ekPZmWvUFtyq9KlGEXnzTFRvJ7hBmBFYaDt3RMG+
	 u1YRo0+1WKRkPDjbGmWdvxl4OBjmiT2mYTVWDfJre+gqO1Rp6/j2XQlGk7TQpQ5dHj
	 6E76vgEmHeoIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5AE8813AA;
	Tue,  4 Nov 2025 14:40:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CA76E222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 14:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C017740D16
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 14:40:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id su_QX95Pe-K6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 14:40:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 30A1840D14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30A1840D14
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30A1840D14
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 14:40:05 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-47755a7652eso6591155e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Nov 2025 06:40:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762267203; x=1762872003;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rEkFVWT5NBv3AWUofiDX8hOm3L/6oD6jZrSiQV9+dPY=;
 b=FzbPn3gHeLBBSNxngzBZCzooBskWOGcFyL/YJaX69HI3LIp6H6/x5gkrbfpv2a332w
 3CKCLuSy15Zk1erF1o0x8q0IS72b7PdvpFcHMB06VpRQd75hBcsbV1rG7bwJV3U4bs6l
 hQC8emx6wkT5jcCbaiTmPQSML7TmU6yScCXMsCBHHyBtwENffOt9v+UmZkO6Uu0Iba6+
 vlrNFRuemdCLbrYQ1Kj8hKcTfbL5LhzJFg3jmkW5LYyMSJ6etjKy4/LL0uqcv6rbgEEN
 VpYiw9W53ylLGWrqkD8wzCkxiYboSWPd/lNjqc3BiKg0gSlLCJP9dIKJ3uaIeYgQXAj5
 NLJQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCViHHvCAPmz9BrVaxh43d7LkETMM+htQTTJdFsgS0Yi1BsYIDpDsmcENZ4fPW6NUXzBxP0PXPXJR/E9Xy1PzpI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxio8hVovXRQ2ab8NYqYDfA+mYqmSQGFuoVE2HYwOe51QLAJmNl
 pTOJ2oC5pJAgdeNzEebDkIzSJBV018zbbbEDOSP2ZvMzcfKQTHKREJVeEaftjIH4oRg=
X-Gm-Gg: ASbGncuLStUhFJVOYEcI4+HBG1q8JUQmXIwfHidyu0hTCwf4yL5Vw0kp2KKLV/QU2Dn
 +KVhc8etbY47AryFylX0IOqLT/iqwF9BuV5lxyOMaSMFVAT8/NINDwD8XUGBaBzI37lBrPfLLt9
 /Xg+pFVmHahADRec2mc6uCvHuMrnEPcF+G5ap7kjYBhLVuiVss4LADb7z2qvdpIkrtFg9IGZ1Bi
 gMbT5QFUwe8qQweT5eR2omFg8Dx3n5PJW80KQSKxFg25ZWbfmZ1R6kvHIEssEQn9l1PozlilzMh
 K7n/kjHprjcW17B5PODnyqruUeezvSIMk5SNpQ9aLEX9eTPSaM/vBUncKGrDQDL/l4fbxLAfiav
 8ZptR9KaxK0mNFS5HGueY7IwjhuzEOcDJQcaMsSYlq0taqOao0dny3dpuow0FVZIFxhfOHRm0Yn
 Tz3Qazl8cB
X-Google-Smtp-Source: AGHT+IH+wSpO7CA7uoT1EyqMsmESkKjEBIh7MZyEYgnZ6s42MxUO4LQk7aoyZId0Y8Jc8HF2ped2Fw==
X-Received: by 2002:a05:600c:1f8f:b0:477:58:7cfe with SMTP id
 5b1f17b1804b1-477307e4885mr128649795e9.18.1762267202870; 
 Tue, 04 Nov 2025 06:40:02 -0800 (PST)
Received: from jiri-mlt ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47755932134sm18947015e9.14.2025.11.04.06.39.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Nov 2025 06:40:01 -0800 (PST)
Date: Tue, 4 Nov 2025 15:39:54 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Daniel Zahka <daniel.zahka@gmail.com>
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
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>, 
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>, 
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org
Message-ID: <p3pj3mu4mabgninwowqikegeotxgzhc4yptf7qrfhns37bnkoz@ugkbgvlkxqxb>
References: <20251103194554.3203178-1-daniel.zahka@gmail.com>
 <20251103194554.3203178-3-daniel.zahka@gmail.com>
 <mhm4hkz52gmqok56iuiukdcz2kaowvppbqrfi3zxuq67p3otit@5fhpgu2axab2>
 <db5c46b4-cc66-48bb-aafb-40d83dd3620c@gmail.com>
 <6aa2f011-3ba5-4614-950d-d8f0ec62222b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6aa2f011-3ba5-4614-950d-d8f0ec62222b@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1762267203; x=1762872003;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=rEkFVWT5NBv3AWUofiDX8hOm3L/6oD6jZrSiQV9+dPY=;
 b=sLDzN6H1XR+08MNeW7/TiPbY7QqFIkP6ZixjU/6hX4HuOLwTHlf7a7/UmhtKFgjaMU
 I+tbrzLc947bvYAjnxR7HWRLi5uXVAp8RVX0osXNNDn3XF/5dxAsnEG19wJ4AOUzV2s9
 cg6VcMJpnInCZgrcOpmbnLV68WD9BBOwHN6gV+OCttSsh8t89vjMmAAKZKmZ9i4oVExl
 L6yWh+jFXCvvkWhmX///xBkLCN7gOfguQ1YFepEezL8jaUmMNl15X0IDuSWgKNXcLfRE
 H/OvjWFttjWYaJc9uHYeY3HDvGq6fbjSJXInd6D4L+Sys0sHI8WooPFco2wqvTgAAvIE
 yYjQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=sLDzN6H1
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

Tue, Nov 04, 2025 at 01:51:16PM +0100, daniel.zahka@gmail.com wrote:
>
>
>On 11/4/25 6:38 AM, Daniel Zahka wrote:
>> 
>> 
>> On 11/4/25 5:14 AM, Jiri Pirko wrote:
>> > I did some research. 0/DEVICE_DEFAULT should not be ever reported back
>> > from FW. It's purpose is for user to reset to default FW configuration.
>> > What's the usecase for that? I think you could just avoid
>> > 0/DEVICE_DEFAULT entirely, for both get and set.
>> 
>> I find that 0/DEVICE_DEFAULT is reported back on my device. I have
>> observed this same behavior when using the mstconfig tool for setting the
>> parameter too.
>
>e.g.
>$ dmesg | grep -i mlx | grep -i firmware
>[   10.165767] mlx5_core 0000:01:00.0: firmware version: 28.46.1006
>
>$ ./mstconfig -d 01:00.0 -b ./mlxconfig_host.db query SWP_L4_CHECKSUM_MODE
>
>Device #1:
>----------
>
>Device type:        ConnectX7
>Name:               CX71143DMC-CDAE_FB_Ax
>Description:        ConnectX-7 Ethernet adapter card; 100 GbE OCP3.0;
>Single-port QSFP; Multi Host; 2 Host; PCIe 4.0 x16; Crypto and Secure Boot
>Device:             01:00.0
>
>Configurations:                                          Next Boot
>        SWP_L4_CHECKSUM_MODE DEVICE_DEFAULT(0)

This is next-boot value. You should query current (--enable_verbosity)
to show in param get.
