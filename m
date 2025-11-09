Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6454CC43C21
	for <lists+intel-wired-lan@lfdr.de>; Sun, 09 Nov 2025 11:46:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4A086082E;
	Sun,  9 Nov 2025 10:46:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wcz9zIqmYjqS; Sun,  9 Nov 2025 10:46:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22A5460823
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762685205;
	bh=LobDOj+CVtAhCKBNhLXMD5rH/KOzKtMHgkkQPmZQZqo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YGTzrBbE6Hss+Syas+/sA2XDKTdChbIwDb5G0wjd+7FJ5+C+E4joz87GO6FfZq7us
	 bQrMbZTsRih9AFeFFXqDJixHV+MYYK7fKPPNXCh94FWTf5mrKvIjvt1n1bCymYMpcJ
	 nm4slDwxn2Dps+LzIanAjmqLDQs257Ss8NIF9o7SWsoAalTiwLj81LneajnVjVwMKk
	 aonKUyJmx66sxPM5+89uhSMGD/p198YfFSH2Iq7wC6pYzGrx8HeRTG9fQA3mNlmk4g
	 ABrjUTYGTLy5zkf4Hz075z8gqCVv64uaESFauUIDlQIhXYTonzVfB/MfqjsuY9l/DY
	 mqcks65NrXUOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22A5460823;
	Sun,  9 Nov 2025 10:46:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6418225D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 10:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55F7C40394
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 10:46:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kGFUGeCXpe9K for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Nov 2025 10:46:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 47B4D4024E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47B4D4024E
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47B4D4024E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 10:46:42 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-b7277324204so357370366b.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 09 Nov 2025 02:46:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762685201; x=1763290001;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LobDOj+CVtAhCKBNhLXMD5rH/KOzKtMHgkkQPmZQZqo=;
 b=l8TjDNdZ9KmFWbOTwl7yfIlEN8ZlUsZ/6fLdQLPjZeIqpPLeA9qHcML8Q8/8XgqF8s
 kPXBx/6LX04KIUYBeLOHiCz7cPmibjHG1cOCHD6fnuvxvNm1Vujzt5T22KghNuONOC2E
 tO+uU/UEv7nkE8T+MD6oBsm8wk0s7c6yNPAIiIwhQKh+E+ValS1AOWOgH5zkDdkTsLlD
 xlsYQkupWTM9KYRW/OTRa3j3166gF0BRGXfSMjjU/VNDczLgs23nYjVTB+HnXaIAwoTx
 uNoqnBh4sE82LPDlPGxgEglnookNJ0uVK3yXTvNpr27sA25+wg8ECXQ6MrTMtX5G96IP
 FKcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUabzJAHpvDYOxq5lYLpiJX3bzLlgmoBE98Iha3QaF4Na4PAPL+0iizLGTQQlf/+01rIyn1wVVTWM1P6P9JPDQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwtSPoLvwQ004C195SZ4fZQSTm0PJ4Z1D/qS2At13Kpncd606Ys
 4rggYR4K0TRjdJ4a8SvyeuELsIa2voU5Rn07hTsS2TnT1ovZmnMYTAfpZMZB7UQSL8E=
X-Gm-Gg: ASbGnctWr4+7wVL1NNftwu10AGPMwJcH/zAWqk+pnxVME0LWq8W9oLJB7/OBBn0gxDi
 j9wT2xoXo6aRA7EwMJm2wWiFsV93vcdqmIsMmSTCZ3uzxwyM25Z5E1+OLXFuhZjoizESdpUs2+t
 n5ik/MSt4l1andDv1N9RcqSIRjrJdHbIk0VLPXPjNbMS9rL40qWEFPVOSJWNW56U5+KjnvL9nyu
 4f82iLgyWyX+Ff+t5Rt3dcUXBeyYl1WfVW+SoqaZTl41FhTHs0W6937zSonAUFAiXuE8HVNff3k
 xpFK2Mng2t0duLr3WsQvsNEB4UlzT+WQcb2hA96QzhwdMs2ap4G0es7BOW6eNs0qkvfDG77NHbR
 vei+4F1tGhhm0sLVLBJexOe3xTP32PNr8GlXjU9lxB3ly0yQOjZ7bIavijUA4akEgMPfIQvigWw
 CITtKwMSDO1ONgL9Hs
X-Google-Smtp-Source: AGHT+IEf3v9YSyb6OvnE4os4GAWYkoIF/Hz2buBIRvx1KU2RTdYxzUhIiX3St2MD76hgPlkL2ITw2Q==
X-Received: by 2002:a17:907:3fa8:b0:b72:afb1:fc4 with SMTP id
 a640c23a62f3a-b72e04c5bd6mr465868766b.50.1762685200809; 
 Sun, 09 Nov 2025 02:46:40 -0800 (PST)
Received: from jiri-mlt ([85.163.81.98]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b72de4f920bsm497418966b.67.2025.11.09.02.46.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Nov 2025 02:46:40 -0800 (PST)
Date: Sun, 9 Nov 2025 11:46:37 +0100
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
Message-ID: <jhmdihtp63rblcjiy2pibhnz2sikvbm6bhnkclq3l2ndxgbqbb@e3t23x2x2r46>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <aQ7f1T1ZFUKRLQRh@x130>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aQ7f1T1ZFUKRLQRh@x130>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1762685201; x=1763290001;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LobDOj+CVtAhCKBNhLXMD5rH/KOzKtMHgkkQPmZQZqo=;
 b=OFdBjAadmqih4p+6aDR/Z+l4fi/EvwukKwtLwxmRQ4jvDlfXhVAS/3S0oZnKpxxEpz
 t/CA07VYCxvuk/k38cwO2884UkCj1XTa1dErTk40KDjWMTtEPcR8hUTnnzLn0OI/zfFI
 4C1ws6U0F24AOMQO8pigM2qcvZcfrVMSqfLJjAoBkRiLBJ8BbR5Y8xdo6dV1PAiUIQ02
 8SB2r8oGQekktITTV5ePIYs5n7R4qvy+5ULQNc0aoET3fPwjqbLVLHBWj0mEOS3DDKDV
 8XrQuq8E7D3sV18rEZ9IrmYLKQeQafE1fGSk3DQ7b8SGshUX3+JaMvBvkv9a98mhlSH6
 5BHg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=OFdBjAad
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

Sat, Nov 08, 2025 at 07:14:45AM +0100, saeed@kernel.org wrote:
>On 07 Nov 12:43, Daniel Zahka wrote:
>> swp_l4_csum_mode controls how L4 transmit checksums are computed when
>> using Software Parser (SWP) hints for header locations.
>> 
>> Supported values:
>>  1. device_default: use device default setting.
>>  2. full_csum: calculate L4 checksum with the pseudo-header.
>>  3. l4_only: calculate L4 checksum without the pseudo-header. Only
>>     available when swp_l4_csum_mode_l4_only is set in
>>     mlx5_ifc_nv_sw_offload_cap_bits.
>> 
>> The l4_only setting is a dependency for PSP initialization in
>> mlx5e_psp_init().
>> 
>> Signed-off-by: Daniel Zahka <daniel.zahka@gmail.com>
>> ---
>> 
>> Notes:
>>    v2:
>>    - use extack in mlx5_nv_param_devlink_swp_l4_csum_mode_get()
>>    - fix indentation issue in mlx5.rst entry
>> 
>> Documentation/networking/devlink/mlx5.rst     |   9 +
>> .../net/ethernet/mellanox/mlx5/core/devlink.h |   3 +-
>> .../mellanox/mlx5/core/lib/nv_param.c         | 161 ++++++++++++++++++
>> 3 files changed, 172 insertions(+), 1 deletion(-)
>> 
>> diff --git a/Documentation/networking/devlink/mlx5.rst b/Documentation/networking/devlink/mlx5.rst
>> index 0e5f9c76e514..675b5a1ec625 100644
>> --- a/Documentation/networking/devlink/mlx5.rst
>> +++ b/Documentation/networking/devlink/mlx5.rst
>> @@ -218,6 +218,15 @@ parameters.
>>        * ``balanced`` : Merges fewer CQEs, resulting in a moderate compression ratio but maintaining a balance between bandwidth savings and performance
>>        * ``aggressive`` : Merges more CQEs into a single entry, achieving a higher compression rate and maximizing performance, particularly under high traffic loads
>> 
>> +   * - ``swp_l4_csum_mode``
>> +     - string
>> +     - permanent
>> +     - Configure how the L4 checksum is calculated by the device when using
>> +       Software Parser (SWP) hints for header locations.
>> +       * ``device_default`` : Use the device's default checksum calculation mode
>
>Let's omit the device, just "default".
>
>So, I checked a couple of flows internally, and it seems this allows
>some flexibility in the FW to decide later on which mode to pick,
>based on other parameters, which practically means
>"user has no preference on this param". Driver can only find out
>after boot, when it reads the runtime capabilities, but still
>this is a bug, by the time the driver reads this (in devlink), the
>default value should've already been determined by FW, so FW must
>return the actual runtime value. Which can only be one of the following

I don't think it is correct to expose the "default" as a value.

On read, user should see the configured value, either "full_csum" or
"l4_only". Reporting "default" to the user does not make any sense.
On write, user should pass either "full_csum" or "l4_only". Why we would
ever want to pass "default"?

Regardless this patch, since this is param to be reflected on fw reboot
(permanent cmode), I think it would be nice to expose indication if
param value passed to user currently affects the fw, or if it is going
to be applied after fw reboot. Perhaps a simple bool attr would do?


>
>> +       * ``full_csum`` : Calculate full checksum including the pseudo-header
>> +       * ``l4_only`` : Calculate L4-only checksum, excluding the pseudo-header

[...]
