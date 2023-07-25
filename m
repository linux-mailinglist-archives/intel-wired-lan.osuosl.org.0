Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CA076097E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 07:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38A1060AA5;
	Tue, 25 Jul 2023 05:41:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38A1060AA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690263661;
	bh=2km1j446m1tRXdn3jKKc2oavjNhp1dIHA7lx7EJfqjg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GmROJ13WpscXb8oma9RqljqWPa7B4M+aPplbuBuQNquCTLpDvELg1cp1Q+anZF4Ex
	 vMakgO2Y2oLh6ot0Q1xufl/srNfUEyg1jYncXDvNsOLD5HJc4JwDxL9ijJvFGBXCrM
	 RbWWayUjxxICd78ckrNH+atX9TFX6KTUsEHeMoCbw2U2KKKjprjklf6FUd3nTCCiX2
	 eP/y0cfdC5y8BLjxM6LIjU7+yqtPng851xG1rYBAiHMCVW+13In7AkGlBxMBjPRq3I
	 O3YDGj/mBYMsRe0t2geW/cTpOYD8L2BK1RaUa25/BvZB7/1BffSiiVZOAq2GM0m3J8
	 NMsiyocGMcx7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cIWUw06nEurj; Tue, 25 Jul 2023 05:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AFBE60A9C;
	Tue, 25 Jul 2023 05:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AFBE60A9C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 440DA1BF980
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 05:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1DBAF40461
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 05:40:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DBAF40461
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjjBtHmQ66FP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 05:40:53 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D89C4028D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 05:40:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D89C4028D
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EFD546153A;
 Tue, 25 Jul 2023 05:40:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A12EEC433C7;
 Tue, 25 Jul 2023 05:40:50 +0000 (UTC)
Date: Tue, 25 Jul 2023 08:40:46 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20230725054046.GK11388@unreal>
References: <20230723075042.3709043-1-linma@zju.edu.cn>
 <20230724174435.GA11388@unreal>
 <20230724142155.13c83625@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230724142155.13c83625@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690263651;
 bh=VEjQx7H1H+Mb+AJoPV4BZFXw7TX8zA9RwisdpdkLNwY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tFXTRYo1hIredh5OpbIa/0sE9HPeA7+c/oG6J17Iqb7+3ofR0Zj0Mj6PmdnelcXVd
 4xbcYRK408jG39EjjZQF+NI1oyAQjemYoD8HN9rk9d4R+CB1LdxuclPhx9oJ8k12xb
 HDpOHt1NG/1aRVJieW+CeGukcrf/9rOv6M9d3LJJP0CmvNrrH7TkQDl27SgmEUqZyr
 4FBNNp6wAJA9VuMpZMysRlqUr3bQ9kGbKvmLVS1om/cD9WOzgxZwjpu1ZxexWyt/zy
 8mIDWKZq57LQHlaxDZUX7F02niWvQMbDKVnnZ/s9IPRucVshhg5NLF027Tdz7nXIpc
 EwUDUWkAfXT6Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tFXTRYo1
Subject: Re: [Intel-wired-lan] [PATCH v1] i40e: Add length check for
 IFLA_AF_SPEC parsing
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
Cc: ast@kernel.org, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, richardcochran@gmail.com, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, Lin Ma <linma@zju.edu.cn>, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 24, 2023 at 02:21:55PM -0700, Jakub Kicinski wrote:
> On Mon, 24 Jul 2023 20:44:35 +0300 Leon Romanovsky wrote:
> > > @@ -13186,6 +13186,9 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
> > >  		if (nla_type(attr) != IFLA_BRIDGE_MODE)
> > >  			continue;
> > >  
> > > +		if (nla_len(attr) < sizeof(mode))
> > > +			return -EINVAL;
> > > +  
> > 
> > I see that you added this hunk to all users of nla_for_each_nested(), it
> > will be great to make that iterator to skip such empty attributes.
> > 
> > However, i don't know nettlink good enough to say if your change is
> > valid in first place.
> 
> Empty attributes are valid, we can't do that.

Maybe Lin can add special version of nla_for_each_nested() which will
skip these empty NLAs, for code which don't allow empty attributes.

> 
> But there's a loop in rtnl_bridge_setlink() which checks the attributes.
> We can add the check there instead of all users, as Leon points out.
> (Please just double check that all ndo_bridge_setlink implementation
> expect this value to be a u16, they should/)
> -- 
> pw-bot: cr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
