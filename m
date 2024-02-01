Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB39845AB3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 15:57:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 767498452D;
	Thu,  1 Feb 2024 14:57:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 767498452D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706799457;
	bh=PTAHlg2lGLULguSgzhC15cqbj7bq3oza+EEUoNsO4Ak=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l6rpe+WT+KpMWkmYopwknbA9J1uJSa0H8ayalUhJ3+zJ+tJtFU/c29GJ+kFDbhzlV
	 oKultKyopIeySv+uxQHEPE9aEfM0PaFIgOgb6xy3UdW76TPEIOyTGTarr7yPHSL9mF
	 fSQ34qV9cACrqNLh/xGWOYzjZPuJp79xox9WoUIf7uNJxR9HaNXVfk0rOtxjuH5Pm3
	 utsXKKT5dbm7I4Cl7KbEbrpQABU4hb0B5t3rINtPhbDAx8dS+PQWuHQ3ROmwkgaXfP
	 ZtEscmfX9Pn9Mu+Py6lIQcRvewzhvZPSs9H1NlbOGJJU+Z977yEZuO5QH6Ax6YYrKH
	 Z7quiHrysruQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NTuqPE5U1-lj; Thu,  1 Feb 2024 14:57:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A15F584506;
	Thu,  1 Feb 2024 14:57:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A15F584506
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 63BBF1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45C004206D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:57:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45C004206D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RYmV2A0mN2UM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 14:57:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 400A941F63
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:57:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 400A941F63
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 283D3615ED;
 Thu,  1 Feb 2024 14:57:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68A83C433C7;
 Thu,  1 Feb 2024 14:57:27 +0000 (UTC)
Date: Thu, 1 Feb 2024 06:57:26 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Dave Ertman
 <david.m.ertman@intel.com>
Message-ID: <20240201065726.50a0b1f2@kernel.org>
In-Reply-To: <898b6ac8-186d-4675-a1e7-abd78b885d01@leemhuis.info>
References: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
 <bce78734-d359-499b-9693-05549e6a73a4@intel.com>
 <CAK8fFZ6PqCwgt1n4iuROs=76esQVSOS-HHL=0eN7+efeKT25Uw@mail.gmail.com>
 <898b6ac8-186d-4675-a1e7-abd78b885d01@leemhuis.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706799447;
 bh=vOnNLgQvFZT/mX3ECw6fr4mBPUYw8qLvXjsyK/by+NQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qMhqFRP17RDQlAlhumDhCYoyMRgklZKoleBAEsBEEQXq0jxy3nKeIi31XAihLZu5S
 e5kUoQATJ9bidl5A0gMB6N+IEqzRSS8DFBa5y5eEB+bXTN+/70wnQVidaHeAs7EJyp
 DEBP6JlFBC3zoT7Cdpk9RZorLeOItHDC2Gj0bDQ3VFoVoAg7XShDX+UZMflkriPGuR
 P1AeN492hm+5b7xj9SP0OzgyfcuelVp+L6RYAnaE//PP0+3KsJqNpBeAv5C+jcjR2o
 rJDimDgRIZUJ6HfbYkfa0zuBWCvbqA5RN6kRpYz9jFldzSLdczy8LYzFv7lGhmMz5m
 SigGdmyUkLHGQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qMhqFRP1
Subject: Re: [Intel-wired-lan] [REGRESSION] Intel ICE Ethernet driver in
 linux >= 6.6.9 triggers extra memory consumption and cause continous
 kswapd* usage and continuous swapping
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 Daniel Secik <daniel.secik@gooddata.com>,
 "Linux regression tracking \(Thorsten Leemhuis\)" <regressions@leemhuis.info>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Igor Raits <igor@gooddata.com>,
 Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 24 Jan 2024 15:29:38 +0100 Linux regression tracking (Thorsten
Leemhuis) wrote:
> >> I think that's a bad bisect. There is no reason I could understand for
> >> that change to cause a continuous or large leak, it really doesn't make
> >> any sense. Reverting it consistently helps? You're not just rewinding
> >> the tree back to that point, right? just running 6.6.9 without that
> >> patch? (sorry for being pedantic, just trying to be certain)  
> > 
> > Reverting just the single bisected commit continuously helps for >=
> > 6.6.9 and as well for current 6.7.
> > We cannot use any new linux kernel without reverting it due to this
> > extra memory utilization.  
> 
> Quick query: what's the status wrt to this regression? Looks like
> nothing happened in the past week.

Is someone working on this? Indeed the commit in question looks
harmless but can't argue with the revert helping :S
