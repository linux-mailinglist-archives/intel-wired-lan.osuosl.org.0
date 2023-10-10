Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B29147C7658
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46A43611C1;
	Thu, 12 Oct 2023 19:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46A43611C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137703;
	bh=lt2DD6EIUMwtL+ujsdV3BYORPi24DHWauqtRYDqNdtg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=537Vh04fd3O7h45L7HucJQiclktKrCpdJFHV8irmQR/R1s92vEnb203QlNJgwqqZY
	 Vug8BwUIDYWAivCE5j8z9RNr1xgKchIoTPOCoe+tYp7gqFBD1dAc/u95psrJDNNNgd
	 Loq6dQpY0GiIlN78Gg6yKb6HtX8Vy5KBns2vdZuVZLnLhvNXm+w6YXgQ3qoVey5uSF
	 +DzqkPfa7EXm1ybuBD4h7tP3CSFjAAekK4WDKdl8tpJAgsgigpndVZNsfpPrdASYE7
	 37I1OOsaRPB7dX616gXa8KYpVij/+Q+A8aLQ5yVvhHkfeA+GU1S/nerqMasEhkAEnZ
	 88NiWwBfjl1sA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DQs35f_SURw0; Thu, 12 Oct 2023 19:08:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 687C6610C7;
	Thu, 12 Oct 2023 19:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 687C6610C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC2161BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 917AF4157A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 917AF4157A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OnysydLn1L5U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:38:50 +0000 (UTC)
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 435C741570
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 435C741570
Received: by mail-io1-xd2c.google.com with SMTP id
 ca18e2360f4ac-7a269637b98so221330439f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:38:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696977529; x=1697582329;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X7j1W3e+lGoZCZMgFqMWH4B2yEAzZ+/aTSC9fxHvMic=;
 b=MTeV8HDEOjTnKr7GabVSiCQoAXsVZ45RJ8fcHD7DXOw5PBSZI7YqVde2ygCAekQfcX
 qHNxJbU0O43q4Lmyza8m6ejHqOwN5JijURKjUS+xgqPhcwBP666C/oTF720fwJJXo4wH
 1urfx/yUf9rXBpHP8Imw+wfWXAzrF6Bnia7lUqqakhZpESqHXQ4X3xErama4GN0Cs41i
 h7qo1vHcUuKz7v22q1adUg76w1OfKJxVhLfXdIkameXiF1DQ4ShdFMfedYYs2uV+xsRe
 obaVfDqybV0/V9AHJcid2z265Jp6S6BGX37ynX1wohivJwRDtaeWH+m+yXtkn1QN5rxY
 HhXg==
X-Gm-Message-State: AOJu0Ywiz9F5ZBBej3SCqClPPjll9QoOBTmH4U1w3VoTVJuJySW0kDHG
 96g/iKfIeNg0uiSbY3Bth34ABw==
X-Google-Smtp-Source: AGHT+IH1AL7DMI2fWDPxGND2BRfTD6++5areXe5L931LevO2S8ZQprCtLI+3kD4KSwqKDVIdowL91w==
X-Received: by 2002:a6b:6b12:0:b0:79a:bbd2:8f5a with SMTP id
 g18-20020a6b6b12000000b0079abbd28f5amr21401252ioc.12.1696977529326; 
 Tue, 10 Oct 2023 15:38:49 -0700 (PDT)
Received: from google.com (161.74.123.34.bc.googleusercontent.com.
 [34.123.74.161]) by smtp.gmail.com with ESMTPSA id
 u23-20020a6be317000000b007a278f16881sm3273529ioc.42.2023.10.10.15.38.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 15:38:48 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:38:46 +0000
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20231010223846.fxmqzdjelxfmio7u@google.com>
References: <20231010-strncpy-drivers-net-ethernet-intel-igb-igb_main-c-v1-1-d796234a8abf@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010-strncpy-drivers-net-ethernet-intel-igb-igb_main-c-v1-1-d796234a8abf@google.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696977529; x=1697582329; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=X7j1W3e+lGoZCZMgFqMWH4B2yEAzZ+/aTSC9fxHvMic=;
 b=Acfo92w84Him9xWC43nx6CqrgZtLAHiKBbGuUiF4bzZ24c/GZzA9BeHo9RCpsi1acd
 7qPq1aQ+1a/XLybqpueGP9+t3EQHW+yQgaxStUoZhXRIlqf20zVwxH9MU3nudEtn5KSt
 U1OKs8dC6M4OnfS3xawdY0JmhOLLWyBZrOONtyVoU7C22d23ZxtgI/HPP1mOwLYvhsG6
 6Ls56djNNaONtRs33w/3SEKCTEtzz7YlppeaHQZP7MtXe+9F761amMOJHAuYwXAhHPKC
 R7leJtx1I2RAheZhndpabiDkeMeGLN/ASEU4KgrmzYlb6ibWiAVcbcsXa5AEVFPjGPr6
 XsAQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=Acfo92w8
Subject: Re: [Intel-wired-lan] [PATCH] igb: replace deprecated strncpy with
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

On Tue, Oct 10, 2023 at 09:07:59PM +0000, Justin Stitt wrote:
> `strncpy` is deprecated for use on NUL-terminated destination strings
> [1] and as such we should prefer more robust and less ambiguous string
> interfaces.
>
> We see that netdev->name is expected to be NUL-terminated based on its
> usage with format strings:
> |       sprintf(q_vector->name, "%s-TxRx-%u", netdev->name,
> |               q_vector->rx.ring->queue_index);
>
> Furthermore, NUL-padding is not required as netdev is already
> zero-allocated:
> |       netdev = alloc_etherdev_mq(sizeof(struct igb_adapter),
> |                                  IGB_MAX_TX_QUEUES);
> ...
> alloc_etherdev_mq() -> alloc_etherdev_mqs() -> alloc_netdev_mqs() ...
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
>  drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 76b34cee1da3..9de103bd3ad3 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3264,7 +3264,7 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	igb_set_ethtool_ops(netdev);
>  	netdev->watchdog_timeo = 5 * HZ;
>
> -	strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);
> +	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
>
>  	netdev->mem_start = pci_resource_start(pdev, 0);
>  	netdev->mem_end = pci_resource_end(pdev, 0);
>
> ---
> base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
> change-id: 20231010-strncpy-drivers-net-ethernet-intel-igb-igb_main-c-b259e3f289d3
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
