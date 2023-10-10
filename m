Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B03B07C7656
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4019261063;
	Thu, 12 Oct 2023 19:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4019261063
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137694;
	bh=/EYZH9E9OkAUxFyLnJk0xfM0Rv8rtuSgfkN2z4ZFO3o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O9MDqR3aQ3b64opeqLOobInq/oTFIjepUEOZdBauY5lfUTl3zwbQLn0F2Bef6awNA
	 vcOQmSR2UacTspjaVr5ZIhi+VEKkjIjmfky7JkqUyXQhoAbAKDvt1hxcZE2d5E26kw
	 QMR0OI9DNPDAV/dNCRtsrnC2bw+2YKwjPnE+Ib2aF303zj2RJygjfE4o+wBH+ta5Ac
	 KzUF941KsvW1XaweL/ln2aZ6xp+gGj0E94iPyQninzPmCflejW0GI7YhexcAqXC06K
	 Ho62wGESMnFDD1h9wUpCAUBVaDwIFvjlz19qtgVk+5W6yOhycd05qMvSRgFBU8G0oY
	 YNS9V9BE2PQVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VS-4amRu6tqr; Thu, 12 Oct 2023 19:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2722B6105A;
	Thu, 12 Oct 2023 19:08:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2722B6105A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B413E1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 976AF410E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:37:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 976AF410E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hP5t4FjNM8MJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:37:13 +0000 (UTC)
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C57B4159D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:37:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C57B4159D
Received: by mail-io1-xd31.google.com with SMTP id
 ca18e2360f4ac-76c64da0e46so244458039f.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:37:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696977432; x=1697582232;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H7KEiEpOZzZFI+Ee/8SqyvOUW+DenGZx3h9JZJySH7A=;
 b=fXdeTxNvqCUcttseVTZ42nR5RVd7CGADg2hUlAzBkEbc6Z17Elwkt9XB+Jtj8fqJj/
 HExEV9LzOvZVo3pZeoKpMh7tNFKjHWf4BGBDNtLYpUN2B/nMtj9QFOKMQBp4qEvXfOna
 1AZstDVMyKe1G2bsnm+SXK+MY1rXaEiI8OpZj4Eb6vojIJvJrJhaFGFIqy6Y/ymHHBIk
 ZEvHvWomW8t5ADmsjmpFsqWSxHDhejtAQoGEDsvdJlCBwcgCzk9T0M5t/PKa8XP6SE34
 jX6n0Ad6AKPTBTfXXmbmPOy5jmtzJDiCx0ipQymncEZxrcDA+GKLgFDj9/9P3K42ppHk
 aGzA==
X-Gm-Message-State: AOJu0YxBHh5axfdo8+nM1aHJkLOEJ0YGKYy3OZJeKcjhHvAfcM0DdlYk
 2dZTHTwUelsxAIVJV/cq7GGPJg==
X-Google-Smtp-Source: AGHT+IEJloSK9+Eu6q8mKS5r36VH2nOerdRMot+Hr6r6WmCNCHggUejrdLlT5nQV+4mLGFpYxPMDoQ==
X-Received: by 2002:a6b:5b03:0:b0:787:1555:efca with SMTP id
 v3-20020a6b5b03000000b007871555efcamr22044276ioh.5.1696977432213; 
 Tue, 10 Oct 2023 15:37:12 -0700 (PDT)
Received: from google.com (161.74.123.34.bc.googleusercontent.com.
 [34.123.74.161]) by smtp.gmail.com with ESMTPSA id
 p2-20020a02b882000000b0043cb3818dffsm2962711jam.3.2023.10.10.15.37.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 15:37:11 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:37:08 +0000
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20231010223708.mwju62xvxgmv6mbf@google.com>
References: <20231010-strncpy-drivers-net-ethernet-intel-fm10k-fm10k_ethtool-c-v1-1-dbdc4570c5a6@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010-strncpy-drivers-net-ethernet-intel-fm10k-fm10k_ethtool-c-v1-1-dbdc4570c5a6@google.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696977432; x=1697582232; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=H7KEiEpOZzZFI+Ee/8SqyvOUW+DenGZx3h9JZJySH7A=;
 b=VzgQ+FXCCsZssxzW4pyQSqnkX9/v+PXabD415Sjj18vuYe0oRvZPj/gAT/JQSvWLWT
 W9Sf8MzrgI/0acdGgBKCV9bOhf+5wQkniRh6707bfeXjwwbhav+l6E2wa7Dy9w+yrV7z
 1S5j+2J9XUTfaM6127Br9QfZVK2VDxlhp8tEuiKsz/j90SQsZptJ9WLOws0txly4RHKQ
 3IhCJHShcyjdk2+epO4wnUTXUrJ/UW5vSQBtV2+x2P27Jxzor1yvHh9fzg99bUO2K0KJ
 UeadeswKIx9hlJ64jdrXcqE95YuNkwYSsmwJ0wWVbYz0nO1HWOvXn6ed7Vm+/XikMhGd
 Yeyw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=VzgQ+FXC
Subject: Re: [Intel-wired-lan] [PATCH] fm10k: replace deprecated strncpy
 with strscpy
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

On Tue, Oct 10, 2023 at 07:53:32PM +0000, Justin Stitt wrote:
> `strncpy` is deprecated for use on NUL-terminated destination strings
> [1] and as such we should prefer more robust and less ambiguous string
> interfaces.
>
> A suitable replacement is `strscpy` [2] due to the fact that it
> guarantees NUL-termination on the destination buffer without
> unnecessarily NUL-padding.
>
> Other implementations of .*get_drvinfo also use strscpy so this patch
> brings fm10k_get_drvinfo in line as well:
>
> igb/igb_ethtool.c +851
> static void igb_get_drvinfo(struct net_device *netdev,
>
> igbvf/ethtool.c
> 167:static void igbvf_get_drvinfo(struct net_device *netdev,
>
> i40e/i40e_ethtool.c
> 1999:static void i40e_get_drvinfo(struct net_device *netdev,
>
> e1000/e1000_ethtool.c
> 529:static void e1000_get_drvinfo(struct net_device *netdev,
>
> ixgbevf/ethtool.c
> 211:static void ixgbevf_get_drvinfo(struct net_device *netdev,
>
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: linux-hardening@vger.kernel.org
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
> Note: build-tested only.
> ---
>  drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> index d53369e30040..13a05604dcc0 100644
> --- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> +++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> @@ -448,10 +448,10 @@ static void fm10k_get_drvinfo(struct net_device *dev,
>  {
>  	struct fm10k_intfc *interface = netdev_priv(dev);
>
> -	strncpy(info->driver, fm10k_driver_name,
> -		sizeof(info->driver) - 1);
> -	strncpy(info->bus_info, pci_name(interface->pdev),
> -		sizeof(info->bus_info) - 1);
> +	strscpy(info->driver, fm10k_driver_name,
> +		sizeof(info->driver));
> +	strscpy(info->bus_info, pci_name(interface->pdev),
> +		sizeof(info->bus_info));
>  }
>
>  static void fm10k_get_pauseparam(struct net_device *dev,
>
> ---
> base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
> change-id: 20231010-strncpy-drivers-net-ethernet-intel-fm10k-fm10k_ethtool-c-8184ea77861f
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
