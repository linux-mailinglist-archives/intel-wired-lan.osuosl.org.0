Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B47597C7654
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 453D761160;
	Thu, 12 Oct 2023 19:08:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 453D761160
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137687;
	bh=Sd9QuyWz7YWwbVUKucF04V3vsOuRmqh1W7xmD9N7hvc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kijVL4dY4y0MJebg+OgwITNsrnFrNGFVEGZUp90YTaOsFivG+hawamjxmsR1dndvj
	 HOgwBN3mYsKyEI5xovC49y5Els1tUYbCafE5Rz0st2LZ8FkvrFc0wM9WiOXxU/Fvn7
	 WWC7MTqpjZt2xIZyPqoHMh977t9sdpAI+Q1pNk/YVyjUVKaNoCH1Lwc9UQ5Oq+94yD
	 BFv5fxhlqfgCrP8NJMtzlnyHnHmbc5ego4Ye6FlFnPxqL0gaBNT3/ZFnqAvMNWlpks
	 NUgQbfPNMQNdhA86Pc4shs+hiEWRxA6/BHkdvZcyoq98E6v9opuBiUMoHOM1aA/1A2
	 quVIn+Kp0Ej+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id unZD4-LEGHeb; Thu, 12 Oct 2023 19:08:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96BD36109C;
	Thu, 12 Oct 2023 19:08:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96BD36109C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C4321BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0EF0A40580
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:35:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EF0A40580
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wo1AMwOSalbF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:35:30 +0000 (UTC)
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9512E40510
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9512E40510
Received: by mail-io1-xd2c.google.com with SMTP id
 ca18e2360f4ac-79f915e5b47so256978239f.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:35:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696977329; x=1697582129;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LbnEdKq2z/F673J0PyLo1dcLzZBfT0ZL+5O9D0Q9H3k=;
 b=KTw78OSRZFuMRVhQN16lu3g7WqIzBhS+7AXRx2SE76mkBNkWwjb1jH7DltPP4Zl18G
 5qbUS6EDWSlY29GGzsIdVi8gIp3DqDwanY5c63zCZVLBVstgt1NPKcNgpBrhAq487bC+
 zPF4vLAyToh9x7+2dnW2poceJGlYU8LZfeX1PLsYcxilGwLqLBUUfHYZlSZEuVXDb55H
 uNg3kk3kJ9x+1uOM794xw3OXE1gXvm2DFWLGjCTPUE3yCE30N04Rdy6z+hAUq9urN6qZ
 y4pHZ7mC1ncVqd069cQmVch7PSWvcMcd12W1TLezGrHIAF5Wd5iitMpGrP6j1A4JLVgw
 TbRg==
X-Gm-Message-State: AOJu0Yxc2k4nRuOMH+9HUGH3cbuaBVSNx/YMkTKgdHOxsGld1aR5UNXT
 QjUvXD+rA34EdHlQ6oPNyflGBg==
X-Google-Smtp-Source: AGHT+IE79Ek/gb463rp8bLbwMC/z4YopcNOtHcxvez3Rikw2zfNOxy/a5n3J8for9IZJ2q5BpTQahQ==
X-Received: by 2002:a6b:6f09:0:b0:790:a073:f122 with SMTP id
 k9-20020a6b6f09000000b00790a073f122mr19043765ioc.2.1696977329595; 
 Tue, 10 Oct 2023 15:35:29 -0700 (PDT)
Received: from google.com (161.74.123.34.bc.googleusercontent.com.
 [34.123.74.161]) by smtp.gmail.com with ESMTPSA id
 q21-20020a02a315000000b0042b2df337ccsm2907113jai.76.2023.10.10.15.35.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 15:35:28 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:35:26 +0000
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20231010223526.2qc4q64txfoi64lq@google.com>
References: <20231009-strncpy-drivers-net-ethernet-intel-e100-c-v1-1-ca0ff96868a3@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231009-strncpy-drivers-net-ethernet-intel-e100-c-v1-1-ca0ff96868a3@google.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696977329; x=1697582129; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LbnEdKq2z/F673J0PyLo1dcLzZBfT0ZL+5O9D0Q9H3k=;
 b=SSVuYSpQqjel6WKS0u76Iis1knzh7ud+wEUE04cl41XM2t/sfWoNePuvH/m35F1CVB
 b3dlviWiDhLO8wRSw8Bmq/R64ryYN7JgauMgX4OQvexwidvq2sno/ve7qBDv4eghxjps
 vZSoNFtZjzBHkgEyYebQzF0w8lysuRh+tiA3ZELKpOMs7FbbHw7ojeMqkiRWJiEZA1Is
 3ZQ4TaopG4XBKN7uK3209e/5cmSoq71EojuIAj0K5yoqimRLRJYu/O0U8rcDI6B+b3Rx
 we+p/3hLpnbFo8RTJsL00K9Luje68M/wq1g79K9aOum38k0ek3GtNBLvpORlhXlfnfRb
 /TFg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=SSVuYSpQ
Subject: Re: [Intel-wired-lan] [PATCH] e100: replace deprecated strncpy with
 strscpy
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 09, 2023 at 11:41:01PM +0000, Justin Stitt wrote:
> `strncpy` is deprecated for use on NUL-terminated destination strings
> [1] and as such we should prefer more robust and less ambiguous string
> interfaces.
>
> The "...-1" pattern makes it evident that netdev->name is expected to be
> NUL-terminated.
>
> Meanwhile, it seems NUL-padding is not required due to alloc_etherdev
> zero-allocating the buffer.
>
> Considering the above, a suitable replacement is `strscpy` [2] due to
> the fact that it guarantees NUL-termination on the destination buffer
> without unnecessarily NUL-padding.
>
> This is in line with other uses of strscpy on netdev->name:
> $ rg "strscpy\(netdev\->name.*pci.*"
>
> drivers/net/ethernet/intel/e1000e/netdev.c
> 7455:   strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
>
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> 10839:  strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
>
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: linux-hardening@vger.kernel.org
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
> Note: build-tested only.
> ---
>  drivers/net/ethernet/intel/e100.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
> index d3fdc290937f..01f0f12035ca 100644
> --- a/drivers/net/ethernet/intel/e100.c
> +++ b/drivers/net/ethernet/intel/e100.c
> @@ -2841,7 +2841,7 @@ static int e100_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	netdev->netdev_ops = &e100_netdev_ops;
>  	netdev->ethtool_ops = &e100_ethtool_ops;
>  	netdev->watchdog_timeo = E100_WATCHDOG_PERIOD;
> -	strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);
> +	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
>
>  	nic = netdev_priv(netdev);
>  	netif_napi_add_weight(netdev, &nic->napi, e100_poll, E100_NAPI_WEIGHT);
>
> ---
> base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
> change-id: 20231009-strncpy-drivers-net-ethernet-intel-e100-c-4547179d9f2c
>
> Best regards,
> --
> Justin Stitt <justinstitt@google.com>
>

Hi, this patch was bundled up with some others. It has a new home:

https://lore.kernel.org/all/20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
