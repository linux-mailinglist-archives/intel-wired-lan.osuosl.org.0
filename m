Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3057C7659
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09ECA61331;
	Thu, 12 Oct 2023 19:08:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09ECA61331
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137707;
	bh=mu4AIbxmcfAkDVeZb86MMTBSyU3hZ45FAOtoAQ3PrBQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zeluip0RMCozSfCIeASdsV+O7NOB9woIlthBzv6+CxTmc3j3LmZFprjm1MkRJi2oT
	 nJZQqrKzKHjm7t0qdVUOWu6plWG61sORmPtwoadX6gMytdqzzLk40NAxug6u3Jc/Gb
	 wG2M66mdqjeou56+HVKhr9VMmlxKJRVg9xrvPPRcZooj4UwhYRkKoOOQ1kK7idZSet
	 Z9HKgboUlDORwbFB+d14GNHKzs1GfCnLUpyqkNObI9dUrypAV4ypU4G5fqOh58WSjr
	 cWr7KPzqACwMq7Ly1R4GC514CtUDMaa9b9zZt1MWvi1dxGrda41Jr7IiUIAzXwJTs5
	 EzTo/xEaKsktw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qTSiRvJxA3Hm; Thu, 12 Oct 2023 19:08:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96CDB610C7;
	Thu, 12 Oct 2023 19:08:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96CDB610C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99BD51BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E2EA60E96
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:42:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E2EA60E96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XWtgXTLqLGWe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:42:02 +0000 (UTC)
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B06060ACA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B06060ACA
Received: by mail-il1-x12a.google.com with SMTP id
 e9e14a558f8ab-35135f69de2so21017375ab.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:42:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696977721; x=1697582521;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NvHEYuzwR8RWQJwsOaEdhIqtkzlrA9r5/0O9OEN8OX8=;
 b=efNqPnUyhZe6RoUmEdApw2UEgK6BsVBWQg3PIFOn2gs+SYzG68jU4akuSQYFL1c2Vi
 oOpLQQ8qWZl+OOx7+EW+s2LtrZin3E+E/TEfxmvBrbf7HQ+5xEbJ85sc0qcLTx0vHR8F
 GA9cE00xTbAeukSlT9/j3P0+QfRT6HgmVxdGSaYrPrxeTvbYjDBpNOGEa6Tv6fXtBPYu
 Xa+thpKM8eSDJAL1p9oxb8axXUa4EHx5fG9UMUYNngTuzOhslu+oaLOqI5QLg7kN4K8l
 uaLOGPNlezT3uFwX0N9KQZeMfGVUm9x2ZBUu8NHxMMoEYWGp0bwzBfuj5hYN7i3LkzIs
 mRvg==
X-Gm-Message-State: AOJu0YyKF2tlaTgaHwN3ZiaTBoEkv35qlVt9xIrpAfKV9iZ29k3JO+WB
 7HE4spdrM3G98b4RvDzDH5pQyA==
X-Google-Smtp-Source: AGHT+IHqBS/F5DigO4tHV0GMbrKCEUUTNodif2ztURMC6G0riAFV2RzwgdpbMg5Z+8Ni9JvwmbtsFA==
X-Received: by 2002:a05:6e02:12ea:b0:351:1647:5f7e with SMTP id
 l10-20020a056e0212ea00b0035116475f7emr25370364iln.15.1696977721050; 
 Tue, 10 Oct 2023 15:42:01 -0700 (PDT)
Received: from google.com (161.74.123.34.bc.googleusercontent.com.
 [34.123.74.161]) by smtp.gmail.com with ESMTPSA id
 z12-20020a92cb8c000000b003515cdb8f23sm3805333ilo.32.2023.10.10.15.42.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 15:42:00 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:41:58 +0000
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20231010224158.ityyz3vgjfbblv6y@google.com>
References: <20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-v1-1-69ccfb2c2aa5@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-v1-1-69ccfb2c2aa5@google.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696977721; x=1697582521; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=NvHEYuzwR8RWQJwsOaEdhIqtkzlrA9r5/0O9OEN8OX8=;
 b=fNekXXkpj5btYOXEVjAF3DlKgzkSxSfCTZeFz/Y7mnqWCJa874+CMY9xxm3tU3G+RW
 4lwxO9anYPmDEFOowG2C+dkNSbpRqEtmggWxQiX2cGFAQw2bk7/l/1pEfUsp9wVCfOKU
 YI8xIG0nXTD1qmUmPNcTUW/z8x0zR6ZvsF7xdJ6XDoQWnYrC3A4dWPuFF139DM5vPQRH
 NQP8idrKjPHTgH+zgGbg99BO+/6BESkeuadCoYPRC31y/+beOQLOI/rXGbx2FS5plUiT
 /T/Cib1Csor7048Tsgdermdwuh4Ls7cs3tREqJ7zR5bBYv4y8phe+0VZCqe69QFaBFBO
 z9jg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=fNekXXkp
Subject: Re: [Intel-wired-lan] [PATCH] igbvf: replace deprecated strncpy
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

On Tue, Oct 10, 2023 at 09:12:00PM +0000, Justin Stitt wrote:
> `strncpy` is deprecated for use on NUL-terminated destination strings
> [1] and as such we should prefer more robust and less ambiguous string
> interfaces.
>
> We expect netdev->name to be NUL-terminated based on its usage with
> `strlen` and format strings:
> |       if (strlen(netdev->name) < (IFNAMSIZ - 5)) {
> |               sprintf(adapter->tx_ring->name, "%s-tx-0", netdev->name);
>
> Moreover, we do not need NUL-padding as netdev is already
> zero-allocated:
> |       netdev = alloc_etherdev(sizeof(struct igbvf_adapter));
> ...
> alloc_etherdev() -> alloc_etherdev_mq() -> alloc_etherdev_mqs() ->
> alloc_netdev_mqs() ...
> |       p = kvzalloc(alloc_size, GFP_KERNEL_ACCOUNT | __GFP_RETRY_MAYFAIL);
>
> Considering the above, a suitable replacement is `strscpy` [2] due to
> the fact that it guarantees NUL-termination on the destination buffer
> without unnecessarily NUL-padding.
>
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: linux-hardening@vger.kernel.org
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
> Note: build-tested only.
> ---
>  drivers/net/ethernet/intel/igbvf/netdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
> index 7ff2752dd763..fd712585af27 100644
> --- a/drivers/net/ethernet/intel/igbvf/netdev.c
> +++ b/drivers/net/ethernet/intel/igbvf/netdev.c
> @@ -2785,7 +2785,7 @@ static int igbvf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>
>  	igbvf_set_ethtool_ops(netdev);
>  	netdev->watchdog_timeo = 5 * HZ;
> -	strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);
> +	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
>
>  	adapter->bd_number = cards_found++;
>
>
> ---
> base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
> change-id: 20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-aea454a18a2d
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
