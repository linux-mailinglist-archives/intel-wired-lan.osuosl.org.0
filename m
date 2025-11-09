Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76357C43BCC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 09 Nov 2025 11:37:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D34156082E;
	Sun,  9 Nov 2025 10:37:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G74hOrsDmfSu; Sun,  9 Nov 2025 10:37:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4608360823
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762684634;
	bh=wLEi3FY3R8yLDeWkcJs5QaKXb4kMtZGvr5BAdfLs/b8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aectcZ2wF/5Yzx2le54o6Qfn7aYfGIuBGt/y9Rpk796b2BVxcDovBrfhs8dt/5HCa
	 jgEwm32EboXAWgOzT45sPDQho7Tlmnf/f0PR6iqDpsYhBMVJR2iYkWDp2UzTO2V2+H
	 6o5KHfWRIB3gcijgB+lk+phduysswDLCj2L64WutOWNKfO+rTEJUKn9o0BtEggvh/f
	 plw7vdrsz/DXl7fOCNfFfUHjTtiQozKn7RIbLqT98/K7T8BFhy7rfk++ccZrGKWFJ4
	 20Xdn4ow3R4GWNVIEv5hUvhTKPe4iAmHqejx7pSvS11V6217AHufouk5QYLurGWkbv
	 qzRTL0OpMFZSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4608360823;
	Sun,  9 Nov 2025 10:37:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 92F4FFA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 10:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8485F40394
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 10:37:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wQvUNC1fbilH for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Nov 2025 10:37:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52d; helo=mail-ed1-x52d.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BD5814024E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD5814024E
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD5814024E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 10:37:09 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-640d0ec9651so3660599a12.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 09 Nov 2025 02:37:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762684627; x=1763289427;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wLEi3FY3R8yLDeWkcJs5QaKXb4kMtZGvr5BAdfLs/b8=;
 b=WO+yn58nKkUjeVP0ivGGD8m4U+WLjHqqqiJRYcRVjVbbNWZUnK4lRvzGdJs8j24dXL
 Hf1mP9hgqbL5XvXFiksqdCBqayC9Qz/BGEkxzwgb3H2G+VFjyRrMBo2M7GYEvMBt26NZ
 4/rIflpYM2XkubnMyqfo4Xqi5fZVfZMZSbfDYb/ce5fvqy1eUPiVvvLn44ETzoC5aeeh
 oZurkBsY/cN8FCrWsj4SjRGuO8xL1wR1uJh4atZO6rfxeELlkUyY9BGNSc5VPTpJ1j4k
 4kRSi9FoIf3JX9QKHqqCu9nFXTpMWfOPcKCjzLFtos6fgX+onUNAzQcfN1f/R+SN4R+4
 7ydQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWF0+11cxwhfiw/JagZ/5AORV7w67d8KRj1GDKYIthnSMk+g5L3IdtpN/bPPk+YRRiNh9hcH1ZrRYg4gpNxRvU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YywNmm7SJp2ABMUzrAn018jXTc1PJC2anCmjZUDes/lIGcFJ8PK
 hI3z4dYkQCx84qjRFhCsa5tjOI8R96zeTsN47SnfJEORStBiXASvjPM02pP9GWV8oMk=
X-Gm-Gg: ASbGnctGNo0+V1Ef7T7Ax5l18Evd5RISLVOrmLa2JdI4APmgQLrD4fiRT+rbtMk10MB
 /fz9q+lT6XLs0GkcsoVcCJe0lur2e9IxMAGHrEzCu8Q37SSpY/oc+9vZ5vSNHaqpWlhY+QQH7EW
 152wKgAdo1LWWS1mPum+cbJITSFu2oKSkrDEMoNZqOt0nu3AB4SmkZiz6yb6s+m6GeO0c/3RQX/
 ZwBQz+64wadfr0LoWjvPoHeCW31eejLm2GFVcEqFUdQ0Qc9kNkxC5HpoOcyr61GmIyyvSdjTXdz
 gSDF0RziCjEP7iAIAtnub+t+/ZEljDBOgYvzeUtSmyKhqfU5Qu9Kvv2tbLYaNfCjrbkh1nAaE9b
 G8vybKrmlrueYYqSrJN2LrI3uAOF84AgTheMZPjJgmLoPXieLCY5I0VmspmOz1zCk3QS/GMfRfH
 GOK5LFmL/dB8gtKv5q
X-Google-Smtp-Source: AGHT+IHaHIj6pMYgrtnGgyPEbnoCPcv9+h0U8aTlvRy8s+b5dWYGafxzPV9vjN/4tKYk16VfiLaOFA==
X-Received: by 2002:a17:907:2d8d:b0:b40:b54d:e687 with SMTP id
 a640c23a62f3a-b72e055e508mr471128366b.47.1762684626905; 
 Sun, 09 Nov 2025 02:37:06 -0800 (PST)
Received: from jiri-mlt ([85.163.81.98]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b72bfa0f1bbsm758571366b.65.2025.11.09.02.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Nov 2025 02:37:06 -0800 (PST)
Date: Sun, 9 Nov 2025 11:37:03 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Saeed Mahameed <saeed@kernel.org>
Cc: Daniel Zahka <daniel.zahka@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, 
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
Message-ID: <utjcgietdlf3jva5deqt5a6qtv7clkysth473hfa3szlwmll7l@6i6fqhem64mf>
References: <20251103194554.3203178-1-daniel.zahka@gmail.com>
 <20251103194554.3203178-3-daniel.zahka@gmail.com>
 <mhm4hkz52gmqok56iuiukdcz2kaowvppbqrfi3zxuq67p3otit@5fhpgu2axab2>
 <db5c46b4-cc66-48bb-aafb-40d83dd3620c@gmail.com>
 <6aa2f011-3ba5-4614-950d-d8f0ec62222b@gmail.com>
 <p3pj3mu4mabgninwowqikegeotxgzhc4yptf7qrfhns37bnkoz@ugkbgvlkxqxb>
 <78db1fab-e482-4ebc-82ce-ba84b3f561e2@gmail.com>
 <aQ7XWOI68rVDRewR@x130>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aQ7XWOI68rVDRewR@x130>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1762684627; x=1763289427;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=wLEi3FY3R8yLDeWkcJs5QaKXb4kMtZGvr5BAdfLs/b8=;
 b=KxqtZybGLZ5x1TfrhzzidyQVNWMo9xPlHjWtB7FyBAiW3IxkxyNgaErTHbmGYW8wmK
 0UUzXX4FQW1k7+/eA8s2ouuQTq+CdT1qVOzAsYw9cHaKUzTBevaxyd3SK9W10WH8P7uV
 2tVq0P43G+i2EbrmPzDFZFflsJBs1BmAFmMyVNGV5zJCae5LhnlAjjf8zlt7D7b/PN4P
 lv8hiPptymRzinwMBx5Pvm1sndxQOYPG/fBZJJ8N2NL+IV84ch8WYnbJWkFvQ3dW3CuZ
 9m4qOM9DHe3T1iIweCo25iE4Dg6gAMbcZflWOPcxIWNGcGAfl0aHNzcIJwACAYILSryj
 1lLQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=KxqtZybG
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

Sat, Nov 08, 2025 at 06:38:32AM +0100, saeed@kernel.org wrote:
>On 04 Nov 09:48, Daniel Zahka wrote:
>> 
>> 
>> On 11/4/25 9:39 AM, Jiri Pirko wrote:
>> > Tue, Nov 04, 2025 at 01:51:16PM +0100, daniel.zahka@gmail.com wrote:
>> > > 
>> > > On 11/4/25 6:38 AM, Daniel Zahka wrote:
>> > > > 
>> > > > On 11/4/25 5:14 AM, Jiri Pirko wrote:
>> > > > > I did some research. 0/DEVICE_DEFAULT should not be ever reported back
>> > > > > from FW. It's purpose is for user to reset to default FW configuration.
>> > > > > What's the usecase for that? I think you could just avoid
>> > > > > 0/DEVICE_DEFAULT entirely, for both get and set.
>> > > > I find that 0/DEVICE_DEFAULT is reported back on my device. I have
>> > > > observed this same behavior when using the mstconfig tool for setting the
>> > > > parameter too.
>> > > e.g.
>> > > $ dmesg | grep -i mlx | grep -i firmware
>> > > [   10.165767] mlx5_core 0000:01:00.0: firmware version: 28.46.1006
>> > > 
>> > > $ ./mstconfig -d 01:00.0 -b ./mlxconfig_host.db query SWP_L4_CHECKSUM_MODE
>> > > 
>> > > Device #1:
>> > > ----------
>> > > 
>> > > Device type:        ConnectX7
>> > > Name:               CX71143DMC-CDAE_FB_Ax
>> > > Description:        ConnectX-7 Ethernet adapter card; 100 GbE OCP3.0;
>> > > Single-port QSFP; Multi Host; 2 Host; PCIe 4.0 x16; Crypto and Secure Boot
>> > > Device:             01:00.0
>> > > 
>> > > Configurations:                                          Next Boot
>> > >         SWP_L4_CHECKSUM_MODE DEVICE_DEFAULT(0)
>> > This is next-boot value. You should query current (--enable_verbosity)
>> > to show in param get.
>> 
>> I am still seeing that DEVICE_DEFAULT(0) is read back:
>> 
>> $ ./mstconfig --enable_verbosity -d 01:00.0 -b ./mlxconfig_host.db query
>> SWP_L4_CHECKSUM_MODE
>> 
>> Device #1:
>> ----------
>> 
>> Device type:        ConnectX7
>> Name:               CX71143DMC-CDAE_FB_Ax
>> Description:        ConnectX-7 Ethernet adapter card; 100 GbE OCP3.0;
>> Single-port QSFP; Multi Host; 2 Host; PCIe 4.0 x16; Crypto and Secure
>> Boot
>> Device:             01:00.0
>> 
>> Configurations:                  Default             Current       Next Boot
>>         SWP_L4_CHECKSUM_MODE DEVICE_DEFAULT(0) DEVICE_DEFAULT(0)   
>> DEVICE_DEFAULT(0)
>> 
>
>When default value of nvconfig is managed by FW, 0 will always mean
>DEVICE_DEFAULT, and it is a way for the driver to reset back to default on
>write, but on read FW should never return it, so this is a FW bug.

What I understand is that 0 is still okay to be read back after writing
it. I don't think it is a fw bug. Also, I don't think we should expose
"default" as devlink param value.

>
>But this shouldn't block this series so just return 'default', from the
>driver perspective we should return 'default' when we know 0 means that.
>
