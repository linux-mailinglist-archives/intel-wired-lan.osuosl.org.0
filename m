Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BE3AC511C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 May 2025 16:44:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6DEF60B31;
	Tue, 27 May 2025 14:43:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dwdZsGu9sNcv; Tue, 27 May 2025 14:43:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4360160B34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748357039;
	bh=mVMNjMGDSUuEO4y7gEYhrwQzt1jxDhqlHtxkFj74w20=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mFNWgEQ8ZSxuRFtXE8dpchRVQShaX1jyqpN928fl0rSK/34tNbCUFl2xVRUrpKvRt
	 lYKLQANAsh+Eugc7DBQGL8m/3hUVgBHCYlkcAiNq7jQopdhmCWBq5iZ3zb8Swnfy9O
	 YhRXX7IW9eBcBUd2qhEqA7teorS5YbslZInvTA1LezzS+taBWGfiyYZxWLiDxK0wbA
	 U5tcx4tAVH9FRmCBvRJcQQwcBefhy2+nWvqN0DiQqZBmFkYlj2FhsvSscRko+XLcuF
	 X49Jp7GYQaz3xRoWSWeAiz+roqJgp13FTj00UDdDEW509yabyTMQuR+tDLcDIIECfO
	 GLxhnKrsHzUZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4360160B34;
	Tue, 27 May 2025 14:43:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B06919F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 14:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 44FE440572
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 14:43:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c6fwxtqct1oI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 May 2025 14:43:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EA8F140445
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA8F140445
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA8F140445
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 14:43:54 +0000 (UTC)
Received: from [141.14.220.36] (g36.guest.molgen.mpg.de [141.14.220.36])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 65C8A61E6478F;
 Tue, 27 May 2025 16:43:23 +0200 (CEST)
Message-ID: <7eed2cf1-5d54-4669-9e31-96707a116f01@molgen.mpg.de>
Date: Tue, 27 May 2025 16:43:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mikael Wessel <post@mikaelkw.online>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 torvalds@linuxfoundation.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew@lunn.ch, kuba@kernel.org,
 pabeni@redhat.com, security@kernel.org, stable@vger.kernel.org,
 davem@davemloft.net, edumazet@google.com, linux-kernel@vger.kernel.org
References: <20250527085612.11354-1-post@mikaelkw.online>
 <20250527085612.11354-2-post@mikaelkw.online>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250527085612.11354-2-post@mikaelkw.online>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: fix heap overflow in
 e1000_set_eeprom()
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

Dear Mikael,


Thank you for your patch.

Am 27.05.25 um 10:56 schrieb Mikael Wessel:
> The ETHTOOL_SETEEPROM ioctl copies user data into a kmalloc'ed buffer
> without validating eeprom->len and eeprom->offset.  A CAP_NET_ADMIN
> user can overflow the heap and crash the kernel or gain code execution.
> 
> Validate length and offset before memcpy().
> 
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
> Reported-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
> Cc: stable@vger.kernel.org
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 9364bc2b4eb1..98e541e39730 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -596,6 +596,9 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   	for (i = 0; i < last_word - first_word + 1; i++)
>   		le16_to_cpus(&eeprom_buff[i]);
>   
> +        if (eeprom->len > max_len ||
> +            eeprom->offset > max_len - eeprom->len)
> +                return -EINVAL;

I think you used spaces instead of tabs for indentation. It’d be great 
if you could fix this, and send v3 tomorrow. Running 
`scripts/checkpatch.pl` with the patch as an argument, should catch 
these things.

>   	memcpy(ptr, bytes, eeprom->len);
>   
>   	for (i = 0; i < last_word - first_word + 1; i++)


Kind regards,

Paul
