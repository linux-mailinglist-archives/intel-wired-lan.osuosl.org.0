Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA8E7C4579
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 01:31:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A65840968;
	Tue, 10 Oct 2023 23:31:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A65840968
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696980702;
	bh=NNTvuU7mR9kfCRIZ26pWYXxlXdMBiglPNGvXmP5PbZc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9K1ap7hpo/n3cHyX0IqIsFQH0gunijPsM494pIdcX/G3W6TzOnVfIawK3xJ8Ljplw
	 JKmA/LSUlqrwXgUImv6noZSTeJewxSLNjO5HKOcWQQQVLdIOs3YyvS4Dqs9lPLZcXw
	 ULxgkM1k7YI6sdtw3RLqgsTVPUr/TEjxbphjWy6S1eiaEiW1M+EVacZSr77iiH2F0e
	 HsuKkgZLdZ4r/P37xR5Noka48b5uNNHypyFyXAPnPptbcG36cAp1nUG7rg2Tptgwl9
	 NgubdMSxAAoLsF1qxcQS6bRhaGKt+BenOGUpU42YrOcB+xH4GMnYq+udbTQIMPFfci
	 nP/rddHYSxwdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BwSHlpqJrPb6; Tue, 10 Oct 2023 23:31:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A33C408F1;
	Tue, 10 Oct 2023 23:31:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A33C408F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F3571BF83C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 666CA81E29
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:31:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 666CA81E29
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BduMxmowRs2x for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 23:31:35 +0000 (UTC)
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E30C81E27
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:31:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E30C81E27
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-69af8a42066so3770792b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 16:31:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696980695; x=1697585495;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FUjyOBhd765L6DdntubpjwFEWCc0T7iDXxMPZLU1JCY=;
 b=ZXXA6OanRV7CsZFnA80D5ejPydDfX0NCZewamc06fNM/QVtFlGv3JJ8oIxTNblHrGL
 yCaLMR60ODAl7NWL6nqvc0AmWMpe5sv9e1Ptz1p+LMce4EeRY0t6+oN70pUD2n0bEF6t
 LonL7b/cMTjMpES3+aTV7CsmFSZS7viv0bqTprE0MALy6nZYw/t1sCa9PH/UwLZPJD+4
 Hghk1JEF4exrZLxhvs0on2rYbGHtJhPxxK5/a34oLefza3ln32aPg6y96Vnk3Z5lUxt/
 8g6Z2m21hdwPZ0cXeP44WemYsH+U2UHzlqkUOWIhn5Qi/ItzeEJWwfP3+UHVB+iZE98y
 B+9A==
X-Gm-Message-State: AOJu0YxB2aCRO9HxiI+5wqtBjA9ISbf7Y9WCT9Wqz0PPPb5M/BKaoTSY
 /m3NoogNXRFyNbtBkXFq5n5Rbw==
X-Google-Smtp-Source: AGHT+IGadnp4YcxPOL/WJ85GFmKVZw/8m1cJ8MXKeIjm+wQceLO6xqiz7GHgTMTUka9eEN3b6icCIw==
X-Received: by 2002:a05:6a00:18a3:b0:690:ca4e:662f with SMTP id
 x35-20020a056a0018a300b00690ca4e662fmr19894283pfh.5.1696980694989; 
 Tue, 10 Oct 2023 16:31:34 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 fn6-20020a056a002fc600b0069302c3c054sm8810670pfb.207.2023.10.10.16.31.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 16:31:34 -0700 (PDT)
Date: Tue, 10 Oct 2023 16:31:32 -0700
From: Kees Cook <keescook@chromium.org>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <202310101630.AB35100@keescook>
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1696980695; x=1697585495; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FUjyOBhd765L6DdntubpjwFEWCc0T7iDXxMPZLU1JCY=;
 b=ZeQAx8M7nxsX3F0RsF/TmaDZ6NtQLZbuHD94pY9Lfo8DmxyLnW/Lk7PyhpL3dY+/oR
 igkWtr2BEaj+2LBaBp733+KTdHtcJrVl/aL7sFXTCnruOmZBuROz4iEraunFR5Ik8/Uz
 rlStyByCn4Rq9RlHTn1+XI2q+5WBECIBSfcTA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=ZeQAx8M7
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/7] net: intel: replace
 deprecated strncpy uses
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 10, 2023 at 10:26:53PM +0000, Justin Stitt wrote:
> Hi,
> 
> This series aims to eliminate uses of strncpy() as it is a deprecated
> interface [1] with many viable replacements available.
> 
> Predominantly, strscpy() is the go-to replacement as it guarantees
> NUL-termination on the destination buffer (which strncpy does not). With
> that being said, I did not identify any buffer overread problems as the
> size arguments were carefully measured to leave room for trailing
> NUL-bytes. Nonetheless, we should favor more robust and less ambiguous
> interfaces.
> 
> Previously, each of these patches was sent individually at:
> 1) https://lore.kernel.org/all/20231009-strncpy-drivers-net-ethernet-intel-e100-c-v1-1-ca0ff96868a3@google.com/
> 2) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-e1000-e1000_main-c-v1-1-b1d64581f983@google.com/
> 3) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-fm10k-fm10k_ethtool-c-v1-1-dbdc4570c5a6@google.com/
> 4) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-i40e-i40e_ddp-c-v1-1-f01a23394eab@google.com/
> 5) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igb-igb_main-c-v1-1-d796234a8abf@google.com/
> 6) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-v1-1-69ccfb2c2aa5@google.com/
> 7) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igc-igc_main-c-v1-1-f1f507ecc476@google.com/
> 
> Consider these dead as this series is their new home :)
> 
> I found all these instances with: $ rg "strncpy\("
> 
> This series may collide in a not-so-nice way with [3]. This series can
> go in after that one with a rebase. I'll send a v2 if necessary.
> 
> [3]: https://lore.kernel.org/netdev/20231003183603.3887546-1-jesse.brandeburg@intel.com/
> 
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
> Link: https://github.com/KSPP/linux/issues/90
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
> Justin Stitt (7):
>       e100: replace deprecated strncpy with strscpy
>       e1000: replace deprecated strncpy with strscpy
>       fm10k: replace deprecated strncpy with strscpy
>       i40e: use scnprintf over strncpy+strncat
>       igb: replace deprecated strncpy with strscpy
>       igbvf: replace deprecated strncpy with strscpy
>       igc: replace deprecated strncpy with strscpy

These all look good to me. Thanks for the careful analysis!

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
