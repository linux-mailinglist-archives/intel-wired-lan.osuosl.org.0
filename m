Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 873A67C7655
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C68561317;
	Thu, 12 Oct 2023 19:08:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C68561317
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137690;
	bh=iag71N5J+yn/MiTTZyG/O0R0VFvTaQes8DA2nP2jo2A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=86C3gZdnK4pBbVviavPuZhm0hAESOUIr8/7GTx1Zx0cRFR/HFIq+PDRASWWV2TIfB
	 X4lwgqGmPHK/oLIVSQmd55VDPr1Zf/N+4k5JuhJwyfe9Y5JSFvSjBoZ2RK+YzFHEjU
	 FXTBujZmWF8U1nw5duKzT5FLK9NVqLqNHZy/AegQZYI5NPMf7/LKK+waF7Vfd1r6SF
	 AAKiVtc6SP/LBcp4mvWF5UvU9pAylB6lMGQq1ORznBnfg0KOVUQK2MJNG1K/Ch+25z
	 4jRy7cWCLJG+FZTYH11GzjMIqbymUlBlBdBlGfWDh0dwjfy0nBtRiw87iDEGdvQ2US
	 ltiC2Aj2FIw6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id keoSIp_wCJgp; Thu, 12 Oct 2023 19:08:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D50916105A;
	Thu, 12 Oct 2023 19:08:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D50916105A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A379F1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A76E8198D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:36:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A76E8198D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xeo-nr3XgmQE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:36:26 +0000 (UTC)
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 837768193E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:36:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 837768193E
Received: by mail-io1-xd2c.google.com with SMTP id
 ca18e2360f4ac-79faba5fe12so233998939f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:36:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696977385; x=1697582185;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fp1+19JThVDp5aV8ZmVBXvT9jXnK6YGxCfcTc284ZzQ=;
 b=Afu/JU/OlOPL+AeDhAuO1tpr/jO+stmgH7x8pNvhhtyWfudWyRE2VVV36iV+83UGQh
 7hcBYCJQhHt4pYTMZgvHSM9eqc951jl8rWYwa/3io/2/1C/IFr427vI2AJOA1jODnT/x
 UjVVCH6VroEDqp0lVmmCHjdPvTNh9c87+xJZpta+S32A1/ZsAxee+D1QkBSPYHOOUvG8
 f2qLmcDZKPXOPTRyQMN8l2WjXV/csP6a1lRaTsV0UxmhR7YUYsnt41V2g2yrNvWJcNhV
 e30NumUdTXFEtK5qkC84gIc5STKE2LfQHbdqjaGA5OX4EluzR8wvwJ/DHWvX2rHL2DyI
 Q9Pw==
X-Gm-Message-State: AOJu0YwPXVp3pjaxVgeIPdtCeN0Qvh2F0h3ix3q/KUFi0Czp/dddjubo
 nblNcaJGaoCoISh/wowvwQdF6g==
X-Google-Smtp-Source: AGHT+IEoHPDq/5iygy94KT86qlz3QZwHbRQso0lz7RaMmjKkCunaMgvNTfv7uf58Yir3pWdJMnT3eQ==
X-Received: by 2002:a6b:e704:0:b0:78b:b892:e334 with SMTP id
 b4-20020a6be704000000b0078bb892e334mr22796097ioh.11.1696977385502; 
 Tue, 10 Oct 2023 15:36:25 -0700 (PDT)
Received: from google.com (161.74.123.34.bc.googleusercontent.com.
 [34.123.74.161]) by smtp.gmail.com with ESMTPSA id
 dp19-20020a0566381c9300b0043a1a45a7b2sm3051398jab.62.2023.10.10.15.36.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 15:36:24 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:36:22 +0000
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20231010223622.tnurv2ujreo56qwz@google.com>
References: <20231010-strncpy-drivers-net-ethernet-intel-e1000-e1000_main-c-v1-1-b1d64581f983@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010-strncpy-drivers-net-ethernet-intel-e1000-e1000_main-c-v1-1-b1d64581f983@google.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696977385; x=1697582185; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fp1+19JThVDp5aV8ZmVBXvT9jXnK6YGxCfcTc284ZzQ=;
 b=MiAt1Ik6qqLePI6DYw3WUUKa10INQVTKNxJzTd/XIlxAKqaxkyYZMJF6ALsprsr37g
 r4Tnph0L24CSbSbx4woJQwIr92WDuGGkfz8gYMySog11DvnchTSmlAhz2N/s8rvoK9PC
 ZsT0SWPUF9i0V957Io4RqMD/DBXNEz12sOsvj6X2T19gTWQ/ljZcJoMxFGz/swQu3LTp
 3/1STeIXRhIYBalSNUwuO3S1ul4ysSWAmi3VmOk+PBjI8cyzXBECVZas3bEJfoC9zxZL
 X4EvDPcDkuG9Tg3SxEJ7UwCHonnEGxNuTNxTWLKUQ4etAwC6hRdR/JaF3RRmyRikeRRv
 xt1g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=MiAt1Ik6
Subject: Re: [Intel-wired-lan] [PATCH] e1000: replace deprecated strncpy
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

On Tue, Oct 10, 2023 at 06:35:59PM +0000, Justin Stitt wrote:
> `strncpy` is deprecated for use on NUL-terminated destination strings
> [1] and as such we should prefer more robust and less ambiguous string
> interfaces.
>
> We can see that netdev->name is expected to be NUL-terminated based on
> it's usage with format strings:
> |       pr_info("%s NIC Link is Down\n",
> |               netdev->name);
>
> A suitable replacement is `strscpy` [2] due to the fact that it
> guarantees NUL-termination on the destination buffer without
> unnecessarily NUL-padding.
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
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index da6e303ad99b..1d1e93686af2 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -1014,7 +1014,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	netdev->watchdog_timeo = 5 * HZ;
>  	netif_napi_add(netdev, &adapter->napi, e1000_clean);
>
> -	strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);
> +	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
>
>  	adapter->bd_number = cards_found;
>
>
> ---
> base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
> change-id: 20231010-strncpy-drivers-net-ethernet-intel-e1000-e1000_main-c-a45ddd89e0d7
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
