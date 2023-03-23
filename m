Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A256C6C7217
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Mar 2023 22:02:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF2DE403C9;
	Thu, 23 Mar 2023 21:02:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF2DE403C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679605375;
	bh=EmvFG7JOnBSpeHe0A1XjNfvqXAgN6b5u5xNV0uwboM0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Df4nu17WNjjsVNsa4ye8K+FfODVPbbs2R7xcnZuitOLmq0u1dZLcnGzBp4Hs/8maP
	 uWQyfMJxYwy1OYKMQNK6Mq0B7+HFAezmLqAxdJjmGlGBcHmMq8JV157/erQrdK459h
	 o6JTxmOsL8JwGEC+D9PFHA4E6xLcP8UpuQhljvTjM5T/ZbzHTlaT5JnRFWwIkjVdIp
	 lGAmz8ZvT/ECyu6OkhGRBys7D3PaFcX3RGHDE/t97JE36noKRnpEH+PwYghjkI1d2b
	 dPOKHbwHNgAlnWPJR0sHL/magboulpWC5+p16DB4csuln4wNwniFzSpTgi4DyWY050
	 4dFfwoH5PVurw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u43NJIulaFka; Thu, 23 Mar 2023 21:02:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBA424023D;
	Thu, 23 Mar 2023 21:02:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBA424023D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 913881BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 21:02:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69E9284189
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 21:02:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69E9284189
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FMUYPRBtPTOS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Mar 2023 21:02:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E51768417A
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E51768417A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 21:02:46 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pfS4r-008Era-Mu; Thu, 23 Mar 2023 22:02:29 +0100
Date: Thu, 23 Mar 2023 22:02:29 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <fccbd0cc-f760-4f1a-8830-64a245b228dc@lunn.ch>
References: <20230322233028.269410-1-kuba@kernel.org>
 <06d6a33e-60d4-45ea-b928-d3691912b85e@lunn.ch>
 <20230322180406.2a46c3bd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230322180406.2a46c3bd@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=v41Uzc7Rv9i7N0Yv5b15xyHNDj7bAPZv3i2XxSJR6x8=; b=GvYu4i6/0P+gHXG681mxJIsx+L
 IEgiIwKX/U+JbluHp2VX5fw69HOEdwDPTcgyNPfaoWrFjOvP2m/JIUkHqKBJT5gvaVXjJ+r7BKiIb
 m7DcHTTi2Uvd3Aon2DeyzKfNSEB7YvX2XaXEGqn4ruEr1Yw1u42hZW8OR2UPd522UmoE=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=GvYu4i6/
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] net: provide macros for
 commonly copied lockless queue stop/wake code
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
Cc: willemb@google.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, michael.chan@broadcom.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 22, 2023 at 06:04:06PM -0700, Jakub Kicinski wrote:
> CC: maintainers, in case there isn't a repost
> https://lore.kernel.org/all/20230322233028.269410-1-kuba@kernel.org/
> 
> On Thu, 23 Mar 2023 01:35:34 +0100 Andrew Lunn wrote:
> > On Wed, Mar 22, 2023 at 04:30:26PM -0700, Jakub Kicinski wrote:
> > > A lot of drivers follow the same scheme to stop / start queues
> > > without introducing locks between xmit and NAPI tx completions.
> > > I'm guessing they all copy'n'paste each other's code.
> > >
> > > Smaller drivers shy away from the scheme and introduce a lock
> > > which may cause deadlocks in netpoll.  
> > 
> > I notice there is no patch 0/X. Seems like the above would be good
> > material for it, along with a comment that a few drivers are converted
> > to make use of the new macros.
> 
> Then do I repeat the same text in the commit? Or cut the commit down?
> Doesn't that just take away information from the commit which will
> show up in git blame?
> 
> Having a cover letter is a good default, and required if the series 
> is a larger change decomposed into steps. But here there is a major
> change and a bunch of loose conversions. More sample users than
> meaningful part.
> 
> LMK what your preference for splitting this info is, I'm unsure.

We do seem to have a policy of asking for a 0/X. And it is used for
the merge commit. That is my real point. And i don't see why the text
can be repeated in the merge commit and the individual commits.

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
