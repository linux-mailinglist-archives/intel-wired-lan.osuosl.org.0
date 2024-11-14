Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC1A9C8C60
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 15:03:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 730D640661;
	Thu, 14 Nov 2024 14:03:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GSl5xRQSOXY9; Thu, 14 Nov 2024 14:03:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C4CD40630
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731593019;
	bh=GqKgpHXJPgeJvDOsvEihGzuMXQdGRJsoWcGApoVDQSA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6w7d4JNzdzQGqJ9uGv8KLnHSayl8AsF32sxgI6tGjQQz0h5kQjIMZbbUYIG66pIPM
	 XgQeiq5ObbmCQvISOOBliz5DJNotqCPLLbGDed/gd6ZGEZSN9JVTaH/EZILOJTwEUG
	 KOlkKgXtByW4XFoJjGu0ILaReXaBMEHFxo423STtFzOu1ZZ5A+887LOfiUEepP/Q40
	 rlQqpR+l983K6L2OgRi+UrRWXfpqzQDIZSZNuHFMxw9BYH/BNuGJdqqmGhwcJfYvVZ
	 3J+CIpPJuVaB7FMzIh+GNOp2ChhfGA4M8deRo32cKZF+jaq2cIe3bhrFI7MQzIGSzN
	 /AmaAj2Tc2bjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C4CD40630;
	Thu, 14 Nov 2024 14:03:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A686972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:03:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B29160597
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:03:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1KVpI9hAJaxa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 14:03:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4F062600B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F062600B6
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F062600B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:03:34 +0000 (UTC)
Received: from [172.29.1.246] (unknown [141.14.52.155])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7162661E5FE05;
 Thu, 14 Nov 2024 15:02:50 +0100 (CET)
Message-ID: <ec66b579-90b7-42cc-b4d4-f4c2e906aeb9@molgen.mpg.de>
Date: Thu, 14 Nov 2024 15:02:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tore Amundsen <tore@amundsen.org>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Ernesto Castellotti <ernesto@castellotti.net>
References: <20241109232557.189035-1-tore@amundsen.org>
 <20241109232557.189035-2-tore@amundsen.org>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241109232557.189035-2-tore@amundsen.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ixgbe: Correct BASE-BX10
 compliance code
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

[Cc: +Ernesto]

Dear Tore,


Thank you for your patch.

Am 10.11.24 um 00:25 schrieb Tore Amundsen:
> SFF-8472 (section 5.4 Transceiver Compliance Codes) defines bit 6 as
> BASE-BX10. Bit 6 means a value of 0x40 (decimal 64).
> 
> The current value in the source code is 0x64, which appears to be a
> mix-up of hex and decimal values. A value of 0x64 (binary 01100100)
> incorrectly sets bit 2 (1000BASE-CX) and bit 5 (100BASE-FX) as well.
> 
> Signed-off-by: Tore Amundsen <tore@amundsen.org>

Could you add a Fixes: tag?

Fixes: 1b43e0d20f2d (ixgbe: Add 1000BASE-BX support)

> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> index 14aa2ca51f70..81179c60af4e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> @@ -40,7 +40,7 @@
>   #define IXGBE_SFF_1GBASESX_CAPABLE		0x1
>   #define IXGBE_SFF_1GBASELX_CAPABLE		0x2
>   #define IXGBE_SFF_1GBASET_CAPABLE		0x8
> -#define IXGBE_SFF_BASEBX10_CAPABLE		0x64
> +#define IXGBE_SFF_BASEBX10_CAPABLE		0x40
>   #define IXGBE_SFF_10GBASESR_CAPABLE		0x10
>   #define IXGBE_SFF_10GBASELR_CAPABLE		0x20
>   #define IXGBE_SFF_SOFT_RS_SELECT_MASK		0x8

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
