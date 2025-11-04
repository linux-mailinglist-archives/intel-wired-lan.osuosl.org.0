Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3006C310F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 13:51:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02CE060F83;
	Tue,  4 Nov 2025 12:51:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VJ3vyTmy7HVS; Tue,  4 Nov 2025 12:51:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7112860F71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762260682;
	bh=eNACkyQqVSo6Hmo5PjkrfufaeZZc3fNY7YlAuWMuRq0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LoIP/42FW/2LxmaUb5P1v6Srm+86NEqUsOCYvylJs1jHpuPOxGBQMRmtAVPlBOdDg
	 coPMdbi/PphTxrs52in2AW1nYw9n5cq4Q+eStT7KvPodMzKeBuw1IyBmPIRdTNbj1j
	 CiaLwNizKgrpLRDMYgelbELwTrphTvbUZm1gYUuTR1ISKEL/M8dnHotvuoLBpJywwd
	 OYPEguGYgaoKXDh1q0RNeJ4a27yKgzq8abm/tHqk1Z7lgpW9eC32hilPligtc6ybF+
	 SpgIUkbzzeXI41MnEe9r4jtc/wcU/laceNFr+hvz6iXrSkHtQ6dveiYII51qKhYW2c
	 0ZOPW9FlBFf7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7112860F71;
	Tue,  4 Nov 2025 12:51:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3980C222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 12:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2675240622
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 12:51:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OZiHxBwquMxx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 12:51:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f2e; helo=mail-qv1-xf2e.google.com;
 envelope-from=daniel.zahka@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 57060405FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57060405FF
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com
 [IPv6:2607:f8b0:4864:20::f2e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57060405FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 12:51:20 +0000 (UTC)
Received: by mail-qv1-xf2e.google.com with SMTP id
 6a1803df08f44-88025eb208bso46992826d6.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Nov 2025 04:51:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762260679; x=1762865479;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eNACkyQqVSo6Hmo5PjkrfufaeZZc3fNY7YlAuWMuRq0=;
 b=cRQvICIgRX0bhz7OcWqictBwyW51SivkhEtTmBSE1mPWGHB0HjTUOULWZgZThlLyh4
 wycKw/lBuVsRVbkQ7hteOOCm0owZv7Iis9jUlye8vkclZSeDdi6COz28xTNO9VCGHGVV
 TpsNBCdPsdpY9LAX8vwa3iRXhXeWUuNNiaBEflGdMGbr9ySa5VVKkOgBJC/y1wkQaFEo
 UGcwRrcSZjPAbMrUFhlf4iRV0vTMXGWBu8ZZzXwmXzRDzYfKVhkIPaQEnhu8b18Z4Whx
 9eZWCcyZ/t/IrQ0xtFvtsSj1S6l5vIlYr4rfiMdgCRs5ZVaT0l9BtMpO6dnp/YzfUpGL
 NKqA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVjzHEWx4UuTQXWMmHioJDp+UaFYwgrZtpvmLWaVmTNJg4x1zXKpXJgrUESbFZMVLjxuV3SeWBbfjNIdCC/LBU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxx+gvbR5pvhrA1pRcFi60wX99mzJjNUmOd/t51HsuRnl6MDVe/
 03gKicGOHiBJjXoJY93TRK9oILceCxpGPRHuA2VzFe6fykjt9edUBJCp
X-Gm-Gg: ASbGncvy2FkZfN5hF0Tgu9sy5UEK2/n6sCwVdVllov2i3Ze9zN6w8H9QmafeBwgRO5R
 /+Jr3sefdibr0BUDxld5++J1Umq+D1FP0PkgrqZfxidYtrT+CyPxHR2i0D2sFArS2/s7U4BDtiH
 sntZqLidEBP/kLUQUupJdbVAtFKyAXpQXmyousEoWG4A1UJvCILB5wYxvRA6NJBrMV4QhIsqy6a
 7h6pTYyK0QuV7op1UQ26uR7Uwdq/i/sQ4S+V/KIcqFm7yCBk9RAj9Sl1bEEwCEtP+D7lKl1xeFS
 Tu+VsnsxHuhK0y6F1P+cM9b13XCJJKjrpDRZeZREJfNlt4I2Xz3ca4SFptwSfMzUK3z1Km6DGE6
 50NklCucp4FaJIIAKjWOZnEwze/oTpP1cm5LAvZJeNFjqkdjiCxWlQPRl/x2sXtWSemAwDgveDx
 y0qe1TDK1I1XOKPWa+OQHqu9QlJHCRTokUxmicRsaqlUjEZ/6PiCNUA5A=
X-Google-Smtp-Source: AGHT+IFm58ty03czXFexlH5hj0mLZA/g2M5F1UsdQEG3Wd5VnU77sQjl9srK3J0v7dmYKkp7SqLOlQ==
X-Received: by 2002:a05:6214:262e:b0:880:5edf:d177 with SMTP id
 6a1803df08f44-8805edfd5b5mr52809046d6.11.1762260678910; 
 Tue, 04 Nov 2025 04:51:18 -0800 (PST)
Received: from ?IPV6:2600:4040:93b8:5f00:52dd:c164:4581:b7eb?
 ([2600:4040:93b8:5f00:52dd:c164:4581:b7eb])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-88060e906efsm19114706d6.45.2025.11.04.04.51.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Nov 2025 04:51:18 -0800 (PST)
Message-ID: <6aa2f011-3ba5-4614-950d-d8f0ec62222b@gmail.com>
Date: Tue, 4 Nov 2025 07:51:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Daniel Zahka <daniel.zahka@gmail.com>
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
Content-Language: en-US
In-Reply-To: <db5c46b4-cc66-48bb-aafb-40d83dd3620c@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762260679; x=1762865479; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=eNACkyQqVSo6Hmo5PjkrfufaeZZc3fNY7YlAuWMuRq0=;
 b=U9x06dzyOaN7Aj5qNwK/r8dZBgjYtBmU0K1l+PHjBoD80ZIuI2Fpmu41KZa9YlnPRb
 /8GPB1ZNF3pfE8tzsrXluZxM1z1OQNIz3bphbE3RrEwwKV7KqRUQvylW2gB+yxlshRww
 Li2gtif9LDN5XMQFJ2U912OUGEMtocLXPcOlyDaGJKUUwjdP6vY/IAr1newgKfGxActG
 +wWvX4zaBRSGRUTerVgoCYQROpR3UaFKXLBuNRLFXiqEHfGwPy7zVoFJGyMRMTUZNTvN
 L1tzqcwZAPvXfKEqeAEtbz0eIjAuDe9QsN8pRUjjYbR09nkxuOo5huAwIFQs8hA9JAtx
 l5tQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=U9x06dzy
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



On 11/4/25 6:38 AM, Daniel Zahka wrote:
>
>
> On 11/4/25 5:14 AM, Jiri Pirko wrote:
>> I did some research. 0/DEVICE_DEFAULT should not be ever reported back
>> from FW. It's purpose is for user to reset to default FW configuration.
>> What's the usecase for that? I think you could just avoid
>> 0/DEVICE_DEFAULT entirely, for both get and set.
>
> I find that 0/DEVICE_DEFAULT is reported back on my device. I have 
> observed this same behavior when using the mstconfig tool for setting 
> the parameter too.

e.g.
$ dmesg | grep -i mlx | grep -i firmware
[   10.165767] mlx5_core 0000:01:00.0: firmware version: 28.46.1006

$ ./mstconfig -d 01:00.0 -b ./mlxconfig_host.db query SWP_L4_CHECKSUM_MODE

Device #1:
----------

Device type:        ConnectX7
Name:               CX71143DMC-CDAE_FB_Ax
Description:        ConnectX-7 Ethernet adapter card; 100 GbE OCP3.0; 
Single-port QSFP; Multi Host; 2 Host; PCIe 4.0 x16; Crypto and Secure Boot
Device:             01:00.0

Configurations:                                          Next Boot
         SWP_L4_CHECKSUM_MODE DEVICE_DEFAULT(0)
