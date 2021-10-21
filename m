Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB574368AF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 19:05:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5237C40854;
	Thu, 21 Oct 2021 17:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ap3Ag3pVS9bt; Thu, 21 Oct 2021 17:05:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58E5E40703;
	Thu, 21 Oct 2021 17:05:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66C101BF429
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 17:05:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 61EA58356C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 17:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3PI1ugTLJMPK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 17:05:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF68D82EB5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 17:05:26 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id y7so1197040pfg.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 10:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7rSlILWSLtNm1l/dt0JGZldq939/2rynRrUJ8zKeXI0=;
 b=Na/vDPjgNlUzBFN4GMNIo3Shs5X6jSidKQISyssc1oT1WZZKdpKmy7O6AP6kNzB37C
 MRItv1idJFk6vxcNVM8YVNM/Lrnh/CmkC0RRngCO/jWtB9rY/j3tN+VEJE9qooifV0QA
 EOu3swvOtOuEojO2uvMd06RceQRYd4JwoosKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7rSlILWSLtNm1l/dt0JGZldq939/2rynRrUJ8zKeXI0=;
 b=ppCnOwZF21787MV3MGAxmhXCW7FLnDVLks81bOgqRpfTT4jmaC3VM2kqczevfYMM2F
 si61nwI/o0T42UJ8nj0Rz2TSWQKWRcvmzTgWUqNvwolPKpHc1XunKW3CNqZDeovcizrX
 R5AhEtuCU+GacW30JLVRT6DuR0yrz2ga3CUiW8KpAtR2kr2eC0amLiGMEy5BU/rQNgFn
 +q2KYZm//ZHOh9VBL0drHzO3xrlfBJYIkaP0gKg0onT/n85k4ogzaP6P21AiD2XQ1Nb3
 HacoZJejZMOgf1QeEsga5KIATZH6k0AK7dsyNJF4Gb+I9EElHkeQ8vtWc95r3ic1CG/l
 P39g==
X-Gm-Message-State: AOAM531NWgrDLhC6pUES81GpMYv8Coe51oRTrO9fq9ppye2xBl+nu1d1
 jtOKLv0KaAkIv9EZPtoXX5o+tg==
X-Google-Smtp-Source: ABdhPJxmNKBuSkVoniTw8LzyJ+Fy1Bl7BtYgxDGsoPz2D7Gsganf5l6nVApI7jU/y9OwrwP8onE3/Q==
X-Received: by 2002:a62:61c3:0:b0:44d:2518:cdf1 with SMTP id
 v186-20020a6261c3000000b0044d2518cdf1mr6805487pfb.31.1634835926105; 
 Thu, 21 Oct 2021 10:05:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id oa4sm7004169pjb.13.2021.10.21.10.05.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 10:05:25 -0700 (PDT)
Date: Thu, 21 Oct 2021 10:05:25 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <202110211004.6CF2B2C5D@keescook>
References: <20211006180908.GA913430@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211006180908.GA913430@embeddedor>
Subject: Re: [Intel-wired-lan] [PATCH][next] ice: use devm_kcalloc() instead
 of devm_kzalloc()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 06, 2021 at 01:09:08PM -0500, Gustavo A. R. Silva wrote:
> Use 2-factor multiplication argument form devm_kcalloc() instead
> of devm_kzalloc().
> 
> Link: https://github.com/KSPP/linux/issues/162
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

Similar patch state here, it seems? Who needs to Ack this?
https://patchwork.kernel.org/project/netdevbpf/patch/20211006180908.GA913430@embeddedor/

Thanks!

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
