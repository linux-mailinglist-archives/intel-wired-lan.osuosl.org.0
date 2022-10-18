Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326C7602906
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 12:09:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5F8D40AA8;
	Tue, 18 Oct 2022 10:09:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5F8D40AA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666087782;
	bh=MYisQYCu+2O68kK3uBqb8HAO2qvnRBR2xtMoF/sMilE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DlP1AojDx32+0QAzq9mITRjU54kS+IhdYCFGpVYp4L2OCx6qiWTsaGhaC/Y6Vqw7f
	 /alq0PB9KLc3r3GP+uBfrHe1+LCmBMmZe83ncZGWQ3ul8bBBNZmtb4V+aDFEskfyCY
	 WevBJgTErsqTO+ZyaW6arGykC5eY+SJwz038K5ga3ZLL28wAIGXslJK/MQWiTCAts5
	 JrTVdHFWrXmkI+LqeyxNujhuPzbp2mG7m9NRcBROziTSRlHOUUQPOaulHvR23iiUon
	 /4D+iDaIEbu6hFXTLfgFPKzgqcswOU57AkJibLNcXcsv7QoRxshOqKV6wRqt0UotSZ
	 leHCtJD+ZQdDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ucAjmi5_Tey; Tue, 18 Oct 2022 10:09:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4503408ED;
	Tue, 18 Oct 2022 10:09:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4503408ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED39D1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 10:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C7B4C408ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 10:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7B4C408ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Rv7b6HXvU1N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Oct 2022 10:09:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AEE1402D0
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8AEE1402D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 10:09:35 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id fw14so13535419pjb.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 03:09:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zKUSHBzIV9AmjcAPIwH4d1e4/pivyZO+yk3jBrIXqik=;
 b=Dt4cpNC2CkQHL8pEm1i/7dflixQsEDSv2XphWXuRAG2GQAmTZBcJwoDon9pXb3ONfU
 ByUZnLRBeNAITLkQRnsVuzQNdQiAEHuxGFM9UhNqsGsr12HYRAiJS1RlfcDrjJ1US/ZJ
 O3J4rfaInxp2lLXXw/p7PV7xEDYUjVDKeMcRbiku2n/+Uwdwyd8IAEmwKCC8RKwtPxYT
 81tB7bLlJ+RLwiN5kn6HVhPCkuyneqeIkigJEBBGtcYy30CbWMdx2fTWa4Tp+wocxgGb
 fKKRU3zc//KHHW3pUeClRLj3/0FquPQJf4Ep2GcMUby188u6dPEhW9q5SAADHdin02Ke
 EyKw==
X-Gm-Message-State: ACrzQf19k9JlY2/VMk8ODrhAUgDGUxG++wMgZeC9UWulnAuvW5KJRU7R
 olkr8+l7ekX4aWXb2hYEGJ6wHw==
X-Google-Smtp-Source: AMsMyM5wU1XEsuBMrD5Wn9zq3F5URSQDleuB2+Yfz06/29+vEOi6q0FdiYAl8IeHpZIEEsdsNB+sDA==
X-Received: by 2002:a17:90b:1c11:b0:20d:459b:ef0e with SMTP id
 oc17-20020a17090b1c1100b0020d459bef0emr38396657pjb.129.1666087774961; 
 Tue, 18 Oct 2022 03:09:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 x1-20020a170902ec8100b0017da2798025sm8337107plg.295.2022.10.18.03.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Oct 2022 03:09:33 -0700 (PDT)
Date: Tue, 18 Oct 2022 03:09:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Michael J Ruhl <michael.j.ruhl@intel.com>
Message-ID: <202210180307.484A016FE0@keescook>
References: <20221018092340.never.556-kees@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221018092340.never.556-kees@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=zKUSHBzIV9AmjcAPIwH4d1e4/pivyZO+yk3jBrIXqik=;
 b=Og8qUuzdDioBAnndTRdVzqW2TKX37JQVBINZ/GxEZMvHmg91nkbp/PJcaf8RpNdIEr
 CX+xnORcAVblgI6/GK7I1zT5c5+88KvTGhc96WQKY4nHKe4MQ34CBQjvxc4GiiK13BwG
 JbpG2Xjma0DFxR3gRlBpequA1KZ/aXUeyFs4o=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=Og8qUuzd
Subject: Re: [Intel-wired-lan] [PATCH v3 0/2] igb: Proactively round up to
 kmalloc bucket size
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 18, 2022 at 02:25:23AM -0700, Kees Cook wrote:
> Kees Cook (2):
>   igb: Do not free q_vector unless new one was allocated
>   igb: Proactively round up to kmalloc bucket size
> 
>  drivers/net/ethernet/intel/igb/igb_main.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)

Ugh, yay for my MUA vs commas. Sorry for any future typo bounce spam. :(

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
