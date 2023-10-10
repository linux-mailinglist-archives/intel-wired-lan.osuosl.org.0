Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 693817C765A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB71C61338;
	Thu, 12 Oct 2023 19:08:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB71C61338
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137711;
	bh=HHKN1vBpbDqkqkl5NsyX86jJVShlU0k2uaNj7mrENW4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qxH8J2wGVlrGYLoEASPywzjE0Bct2uhs7dNIRBum1Co1E2BISXRYUuzRS6J06V/Qk
	 1Msgko9cyO13/zSGa1mKnDP4eskpMkIYF4ox3+wtshs5yuLC6s2NoXeyefra5SO4Ul
	 35ZbEGuRul+xwfTcGzxSEWgallpzIbY7G9yiUNsd631XDRZ4S1wQP7LA/RxhRDIBGn
	 HlEXtrVff1IBQf7WzOdeL7AabWf6AZZVtGZMcACFWSPxSp8xKGoCXAqXQrHgq62eSs
	 ykPm0GOweXcnQhXkdu7ltRhnM+YZs5MP47j2UXjAt44i6Hm9WzqjL9JNnlekbktj3Z
	 8ACdNzAHVlWDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aKnjgVcg_Ygs; Thu, 12 Oct 2023 19:08:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B53E6610C7;
	Thu, 12 Oct 2023 19:08:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B53E6610C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CBBB1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:42:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 018B14044D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:42:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 018B14044D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AoXfL0akRAN6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:42:49 +0000 (UTC)
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com
 [IPv6:2607:f8b0:4864:20::d30])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B8EE640012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8EE640012
Received: by mail-io1-xd30.google.com with SMTP id
 ca18e2360f4ac-79fce245bf6so248334939f.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:42:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696977769; x=1697582569;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=l5epg5slVi2ZMZ2XCdkm8B/4iSOhQb3T0qsBgHlWnKI=;
 b=UQevIdaC86KWztccu+mqyZVMZ7k6VvBv0vQOGlURdOJ3N8woqSTpln2TUaBzGEq2yg
 PEe9o25tpheNjHs9ll+y20HZSFlN5jAAaJw23C/CPD/zvAQM+M7NrGjeIDm/CzTdU5fP
 G90LHdLa0a45QR2EsvE55afkSjOOfGrNQw5jn/7ySHIl35eBADS9Zeonrx3YgaKhMYui
 YdvuCa4pz+4Ie63XaKO+4nQC9rHqCielIGB0ki8geVq3TrwXzwVx+TfHNx+2zNC7Lenb
 n6xQvbkQtxo6pzor/3lZ78FJQa5yukKQio283FtZGYSgJEpXFnoF1r4g7TXe6k7vb1Nu
 z4cA==
X-Gm-Message-State: AOJu0Yxa3Zq+9Yw901AOGRY9RXCUjRKmj1UeO2GRjFSaAo9u+QKq8JOx
 9tgelfDxNYCoW3XLJ0cumSh39g==
X-Google-Smtp-Source: AGHT+IGYNa3gzIhjt40GIF5yGfmofKxjAmOdD0gzDqAUw0ZpUfFc3Tji+MMCm1XS+RHalBJ6bgVecQ==
X-Received: by 2002:a5e:dd0d:0:b0:786:7100:72de with SMTP id
 t13-20020a5edd0d000000b00786710072demr20110506iop.16.1696977768722; 
 Tue, 10 Oct 2023 15:42:48 -0700 (PDT)
Received: from google.com (161.74.123.34.bc.googleusercontent.com.
 [34.123.74.161]) by smtp.gmail.com with ESMTPSA id
 ee24-20020a056638293800b004332f6537e2sm3057256jab.83.2023.10.10.15.42.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 15:42:48 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:42:45 +0000
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20231010224245.i57oix72csm7kjp7@google.com>
References: <20231010-strncpy-drivers-net-ethernet-intel-igc-igc_main-c-v1-1-f1f507ecc476@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010-strncpy-drivers-net-ethernet-intel-igc-igc_main-c-v1-1-f1f507ecc476@google.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696977769; x=1697582569; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=l5epg5slVi2ZMZ2XCdkm8B/4iSOhQb3T0qsBgHlWnKI=;
 b=XNRRENd78KobXTTgOrj7Hmp+ZSnccKAVL+bbbGDf/SvzUuXAE935HjGVSB9FVqk1NU
 e6ALDY1MpNy35gp47oZdxzrJ+BSsfwP0uqW0Lq31Bnmyfa4TWT0Ql6meXymJZonlx9X1
 GztLekqMPSGQ43rUDHrvmTDyAB7arMUL0CoNtJS3pal0cUtN71zQuAvPn+W4iiWbG44j
 8SAD2nfJ5dLetSrncv2yEvFZhaY+5J/WueoyHWZaiQQ/NNOZ34UecW3lJegiGONU7mlz
 3nFs/NmmQDCkskMXz3ZKYiSoN9bwgRkOVKUmAO49TatoKMLjxTF9p7n9b3vJMnQmtGnE
 TBGA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=XNRRENd7
Subject: Re: [Intel-wired-lan] [PATCH] igc: replace deprecated strncpy with
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

On Tue, Oct 10, 2023 at 09:15:39PM +0000, Justin Stitt wrote:
> `strncpy` is deprecated for use on NUL-terminated destination strings
> [1] and as such we should prefer more robust and less ambiguous string
> interfaces.
>
> We expect netdev->name to be NUL-terminated based on its use with format
> strings:
> |       if (q_vector->rx.ring && q_vector->tx.ring)
> |               sprintf(q_vector->name, "%s-TxRx-%u", netdev->name,
>
> Furthermore, we do not need NUL-padding as netdev is already
> zero-allocated:
> |       netdev = alloc_etherdev_mq(sizeof(struct igc_adapter),
> |                                  IGC_MAX_TX_QUEUES);
> ...
> alloc_etherdev() -> alloc_etherdev_mq() -> alloc_etherdev_mqs() ->
> alloc_netdev_mqs() ...
> |       p = kvzalloc(alloc_size, GFP_KERNEL_ACCOUNT | __GFP_RETRY_MAYFAIL);
>
> Considering the above, a suitable replacement is `strscpy` [2] due to
> the fact that it guarantees NUL-termination on the destination buffer
> without unnecessarily NUL-padding.
>
> Let's also opt for the more idiomatic strscpy usage of (dest, src,
> sizeof(dest)) instead of (dest, src, SOME_LEN).
>
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: linux-hardening@vger.kernel.org
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
> Note: build-tested only.
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 98de34d0ce07..e9bb403bbacf 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6935,7 +6935,7 @@ static int igc_probe(struct pci_dev *pdev,
>  	 */
>  	igc_get_hw_control(adapter);
>
> -	strncpy(netdev->name, "eth%d", IFNAMSIZ);
> +	strscpy(netdev->name, "eth%d", sizeof(netdev->name));
>  	err = register_netdev(netdev);
>  	if (err)
>  		goto err_register;
>
> ---
> base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
> change-id: 20231010-strncpy-drivers-net-ethernet-intel-igc-igc_main-c-26efa209ddb5
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
