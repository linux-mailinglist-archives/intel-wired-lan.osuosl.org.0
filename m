Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 825A67C7657
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 112A9612B2;
	Thu, 12 Oct 2023 19:08:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 112A9612B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137699;
	bh=YDifL7dWelpRrRXAQp3LUGTLXgvWXpFiJkJSlcFrimo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q1N/B6r+VDeVjisjhDXE9i1/sTHesXX3YsbdaggbWCIF6fJRxBbTmDge+XmbEuNmJ
	 df2e9UUanpNTcA5DkyCcesCBskDLUaR0HotZJzJDTSoaho7/VMCZCW3tZ1cOhaUfqA
	 EcFwq+FktiQ+pFAFRBSNEO87H4HKt4uC/isdCR7UvqSmhO9xeYxrg+HWx6c8+A1Jiw
	 GJ6FP2PhxKI6yU1Sf6BcRZSx35tFTod8QCJqVz8o10ha7MGXnLn2J/mCMHN1gHIH07
	 5qgiQHRMDiOo2r6FBW+Qq0M03Cqche+6jOAIpf74vXikp9KIHRlUdLv2wRZpyjvrDO
	 Zyor+1SII+XKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PxWET2Q9r0QM; Thu, 12 Oct 2023 19:08:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 465AF610A7;
	Thu, 12 Oct 2023 19:08:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 465AF610A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60BC21BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4611760ACA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4611760ACA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GkAEzbKQB5bB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:38:08 +0000 (UTC)
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0544E60AA5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0544E60AA5
Received: by mail-io1-xd35.google.com with SMTP id
 ca18e2360f4ac-79f8e4108c3so279693039f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:38:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696977487; x=1697582287;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3zNGcN7ioUMQHb8bk2NzBsCzcqOrQO1iAEOkrmKrYXM=;
 b=kg4R8gr3hoj9fQHmku5mKrwNdwO1TMYNKGgyLp6NMWgp+ScULp5JZ1XyS8ju6sAsMN
 8RriFzS2TBfqx6XHQX87K5p9tScRCKGE6u1Qkldi3PZoqJvmNpQmK/zONkrRe5UvPuZv
 idRdm56/K+4+IdUELwjjmtO4v/kqgfap43al+ShR08pA1yjI/mPT+sScuk3LbInlZs6a
 PRmjpyBCpw8hjyjVqT/hm8nvSBSpUr3TeYqk7me4FcblWcOTrOS7oLDZYUJCKwNF09Df
 AOP/NRQA0E1IM/DqwyZfufaUy/jujCa1ZGmkOF1HeDKpH82PthQpqb2b7C8ErMzgOUsJ
 T74Q==
X-Gm-Message-State: AOJu0YztNatR/coXHfvnIXw9VgiW6Y7V0zSIKPCwwFQyUWaGgTUwPIn7
 0ZlNwiQJHvmN8RDEhHtRVm4FQQ==
X-Google-Smtp-Source: AGHT+IF6Um4LnbDBI26Vqf3dh+kOKLT+6rSoMobUgThSalliqR7ZTUfixHvuAF0JcRuwo3IeNTy0Iw==
X-Received: by 2002:a5d:8059:0:b0:791:385c:f8b0 with SMTP id
 b25-20020a5d8059000000b00791385cf8b0mr22710127ior.3.1696977486725; 
 Tue, 10 Oct 2023 15:38:06 -0700 (PDT)
Received: from google.com (161.74.123.34.bc.googleusercontent.com.
 [34.123.74.161]) by smtp.gmail.com with ESMTPSA id
 g8-20020a02cd08000000b00445630238cfsm3054749jaq.48.2023.10.10.15.38.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 15:38:06 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:38:03 +0000
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20231010223803.idmaw2sskmzj4d3e@google.com>
References: <20231010-strncpy-drivers-net-ethernet-intel-i40e-i40e_ddp-c-v1-1-f01a23394eab@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010-strncpy-drivers-net-ethernet-intel-i40e-i40e_ddp-c-v1-1-f01a23394eab@google.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696977487; x=1697582287; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=3zNGcN7ioUMQHb8bk2NzBsCzcqOrQO1iAEOkrmKrYXM=;
 b=Cd7DtV1ji1ss4Zp4+U6uaPfz9084NFAz92H9l4bQUpLHb/esBlGwgv+ROo9Rs6DSCh
 Xs8TyGWcl01KHNeY6kXLYHqQtdOD2fq9PdlJwFFhvhCqg0LqXAsupqTj+iAE3u8C0rLa
 +tIq5gfHHfKmUakrP7sTskY8CP3CljFM0Nju8xNoCidcETV8xjO52wVca4A5+wjW7GcM
 UizEgo/qf/Zmer518nJ9dsddcz2pOBA+nI1tEohZTtW6UU/T1SL8VFP4ff++lTJgPoo1
 mFZl+eeFeh+6V242oVmbC7GESbxqzrE4BdIu3Y56xdS4GNrLsz8+iV8zfq/q3WCif/EH
 TkeQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=Cd7DtV1j
Subject: Re: [Intel-wired-lan] [PATCH] i40e: use scnprintf over
 strncpy+strncat
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

On Tue, Oct 10, 2023 at 08:53:00PM +0000, Justin Stitt wrote:
> `strncpy` is deprecated for use on NUL-terminated destination strings
> [1] and as such we should prefer more robust and less ambiguous string
> interfaces.
>
> Moreover, `strncat` shouldn't really be used either as per
> fortify-string.h:
>  * Do not use this function. While FORTIFY_SOURCE tries to avoid
>  * read and write overflows, this is only possible when the sizes
>  * of @p and @q are known to the compiler. Prefer building the
>  * string with formatting, via scnprintf() or similar.
>
> Instead, use `scnprintf` with "%s%s" format string. This code is now
> more readable and robust.
>
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: linux-hardening@vger.kernel.org
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
> Note: build-tested only.
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ddp.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
> index 0e72abd178ae..ec25e4be250f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
> @@ -438,10 +438,9 @@ int i40e_ddp_flash(struct net_device *netdev, struct ethtool_flash *flash)
>  		char profile_name[sizeof(I40E_DDP_PROFILE_PATH)
>  				  + I40E_DDP_PROFILE_NAME_MAX];
>
> -		profile_name[sizeof(profile_name) - 1] = 0;
> -		strncpy(profile_name, I40E_DDP_PROFILE_PATH,
> -			sizeof(profile_name) - 1);
> -		strncat(profile_name, flash->data, I40E_DDP_PROFILE_NAME_MAX);
> +		scnprintf(profile_name, sizeof(profile_name), "%s%s",
> +			  I40E_DDP_PROFILE_PATH, flash->data);
> +
>  		/* Load DDP recipe. */
>  		status = request_firmware(&ddp_config, profile_name,
>  					  &netdev->dev);
>
> ---
> base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
> change-id: 20231010-strncpy-drivers-net-ethernet-intel-i40e-i40e_ddp-c-dd7f20b7ed5d
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
