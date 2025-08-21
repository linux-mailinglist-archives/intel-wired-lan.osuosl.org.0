Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCF6B2FC50
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 16:23:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2D5C842D6;
	Thu, 21 Aug 2025 14:23:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y_dOXzdeuAc1; Thu, 21 Aug 2025 14:23:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20B91843B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755786225;
	bh=gltw2YB8idtK1To8X9NeA2NjVxqELvTwQkrDIQqvz6Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oFox+SHud3KE6HjcBM+mcXRIcuxVazpzMMEP+Ciy4i2OzPTiY5o0VLWXIdYrXA41G
	 RdMaijMSrcuVkXjPCL2b0LAxQ75mT/3YVxfnzg1dC62LjZu8VQG+vLzcAjq9D2J80s
	 QeEYpJ58DqdJBqKwiVzCnTbvJhKmjPCfm0qJ4j4Bp67BqTz9gSLrfeqMPewBwd9qmF
	 YVuy2xBbsrlgIsSUhQqPyrQS5FYF+DRG8U8fEGr7SPfqQyUbwd/fz/mkADeB43jnR2
	 W6og0xNqRCF1UQdbP85LkR5lc99n3nijZl9BsAVw2N1TbsLS0HkZX35n9/S0m9bifW
	 bVZo8NeVyFV5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20B91843B5;
	Thu, 21 Aug 2025 14:23:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E2131E0A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 14:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C86AD61516
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 14:23:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uVdwt9VK1yVS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 14:23:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42a; helo=mail-pf1-x42a.google.com;
 envelope-from=calvin@wbinvd.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 28F3161219
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28F3161219
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28F3161219
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 14:23:43 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id
 d2e1a72fcca58-76e2e88c6a6so999558b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 07:23:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755786222; x=1756391022;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gltw2YB8idtK1To8X9NeA2NjVxqELvTwQkrDIQqvz6Q=;
 b=nX/PItls8pvhfPPQmk0FqW2aSGiCbR8OoZoVjFFmkyYQ1M9bpwd1d4coq6nnFKDVjP
 UFC9UmhZTdQ45U9c0b4s8cUQSf6pFGeeHPVMPLf+IZSZpQ+l77E2KcxrFJ9QRyVTxzXR
 dXzOItjGxKKe+WFt3KZgSdQLcjSPjCTBNY4Fl9WuxrF5bZHRPlFzoWgsRVWZrCxB4iiJ
 yEQC5vluGb8vq+3t+Mn510jRTef99Yj1HAoXz+zSN/VQrL2SBHnuPlzMNxF6KtmFTP9I
 fFKbTuRpVHMTJ/kCR6gKw8QWkRtZbcuJAI4p9iABrGEkxU3zItLI8ylHoUOQe6xctmUQ
 l39A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUty6xVSbAI1aOiBSN3/LCpMHdPreP7v2VHEQjBRHqhyvaCxNRmsokmzkNBtnRNIkc4WmCXtcieZRqv/HUgyNU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxwCgDBWH54RemoJvN/i+EAM8hkcARA2YPQDQ0iPSKBESwDAugS
 K+T+Z7I2ML2OekdIWBmnFNkqjCIDnIjfD8SFRVCrkyLX854kncv7PUaRtynMqO41sPw=
X-Gm-Gg: ASbGncs7XvlOxKdLW9m4NEgEWXKJEIOf3T4cbLkxctB1gl7drvCj96yEhTUVNaJcD+d
 DFFWdmp/8DiDUY8A7P+iIlM35ukr4UChdtVHyXGTqrE5vnHnYbdzgDXM9q6NEH2LNuGt7GSZayO
 7IjMtL0Lyj5NjXKTYEcQEi9K86gXRy/2tTW6b2523K/NL2HH1HPtRanLkzE6BGmhTxX636QKJO9
 Vhgq52jhjh5BI2uI7ndz8z+lj72RkL+zs/PcJuUraS5Tj/ygAEX1wQ9Tu9YOK3e3kZeE7S0Acov
 IVPeBkywvmsPgXpz/WzbSmXxrj+34aRC+Js1rp3Zn37Yh8vdnpP9PxVmnEBCQYspkpi8mY5DvOY
 nWUGuS3lPKbNHUxdHHKztvanD
X-Google-Smtp-Source: AGHT+IHC9kZMbllRdoU5B4ZJo00K1PDPDVqdvazp9vl34+r/qKCj0BP9ePp+tekV3D9iBLHdu8oAsA==
X-Received: by 2002:a05:6a21:998d:b0:240:27be:bb99 with SMTP id
 adf61e73a8af0-2433074e72bmr3189057637.9.1755786222380; 
 Thu, 21 Aug 2025 07:23:42 -0700 (PDT)
Received: from mozart.vkv.me ([192.184.167.117])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76e7d0d62f3sm8455613b3a.19.2025.08.21.07.23.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Aug 2025 07:23:41 -0700 (PDT)
Date: Thu, 21 Aug 2025 07:23:40 -0700
From: Calvin Owens <calvin@wbinvd.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <aKcr7FCOHZycDrsC@mozart.vkv.me>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <aKXqVqj_bUefe1Nj@mozart.vkv.me> <aKYI5wXcEqSjunfk@mozart.vkv.me>
 <e71fe3bf-ec97-431e-b60c-634c5263ad82@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e71fe3bf-ec97-431e-b60c-634c5263ad82@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wbinvd.org; s=wbinvd; t=1755786222; x=1756391022; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=gltw2YB8idtK1To8X9NeA2NjVxqELvTwQkrDIQqvz6Q=;
 b=iIdMwLiY0XpfRtgBqpWjqukUD6DEkdTqPDqKaTUf3oZWAe4/nwW2VurYpfRmdRWfIA
 XBArGMoEVfKKlGAYqbVhMfniXoXo5b1HiO0rOJSksdtOUq/Op819XE+RFCirqFHcgM8g
 kj1ZUmPoK0JQzomqDDK7jIzRDROjS4dx/jon8i6rxrWi4dTvNRWdDCK6aM5sma+0j4Tw
 XxgQZoIQgXCvYhF+WBhUo0y71mAOnFTcPc09NNIPYg9smbvW/PrXtpnXCHB9nASqW4UF
 Gko/YdTLvCUN+ELyn6r3qvLJJRLFwD8XgieRpjbFoZ85lp155yT6F5DvQKE8qoIVKIgT
 xqmA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wbinvd.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=wbinvd.org header.i=@wbinvd.org header.a=rsa-sha256
 header.s=wbinvd header.b=iIdMwLiY
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thursday 08/21 at 10:00 +0200, Przemek Kitszel wrote:
> On 8/20/25 19:41, Calvin Owens wrote:
> > On Wednesday 08/20 at 08:31 -0700, Calvin Owens wrote:
> > > On Wednesday 08/20 at 08:42 +0200, Michal Schmidt wrote:
> > > > On Wed, Aug 20, 2025 at 6:30 AM Calvin Owens <calvin@wbinvd.org> wrote:
> > > > > The same naming regression which was reported in ixgbe and fixed in
> > > > > commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
> > > > > changes") still exists in i40e.
> > > > > 
> > > > > Fix i40e by setting the same flag, added in commit c5ec7f49b480
> > > > > ("devlink: let driver opt out of automatic phys_port_name generation").
> > > > > 
> > > > > Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> > > > 
> > > > But this one's almost two years old. By now, there may be more users
> > > > relying on the new name than on the old one.
> > > > Michal
> > > 
> > > Well, I was relying on the new ixgbe names, and I had to revert them
> > > all in a bunch of configs yesterday after e67a0bc3ed4f :)
> 
> we have fixed (changed to old naming scheme) ixgbe right after the
> kernel was used by real users (modulo usual delay needed to invent
> a good solution)

No, the "fix" actually broke me for a *second time*, because I'd
already converted my infrastructure to use the *new* names, which match
i40e and the rest of the world.

We've seen *two* user ABI regressions in the last several months in
ixgbe now, both of which completely broke networking on the system.

I'm not here to whine about that: I just want to save as many people out
there in the real world as I can the trouble of having to do the same
work (which has absolutely no benefit) over the next five years in i40e.

If it's acceptable to break me for a second time to "fix" this, because
I'm the minority of users (a viewpoint I am in agreement with), it
should also be acceptable to break the minority of i40e users who are
running newer kernels to "fix" it there too.

Why isn't it?

> > 
> > And, even if it is e67a0bc3ed4f that introduced it, v6.7 was the first
> > release with it. I strongly suspect most servers with i40e NICs running
> > in the wild are running older kernels than that, and have not yet
> > encountered the naming regression. But you probably have much better
> > data about that than I do :)
> 
> RedHat patches their kernels with current code of the drivers that their
> customers use (including i40e and ixgbe)
> One could expect that changes made today to those will reach RHEL 10.3,
> even if it would be named "kernel 6.12".
> 
> (*) the changes will likely be also in 10.2, but I don't want to make
> any promises from Intel or Redhat here

But how many i40e users are actually on the most recent version of RHEL?
Not very many, is my guess. RHEL9 is 5.14, and has the old behavior.

If you actually have data on that, obviously that's different. But it
sounds like you're guessing just like I am.
