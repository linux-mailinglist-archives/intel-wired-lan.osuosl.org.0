Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87671B24079
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 07:43:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26130827D8;
	Wed, 13 Aug 2025 05:43:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TXvaA5Mvg3Y5; Wed, 13 Aug 2025 05:43:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F7A3827DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755063813;
	bh=lEg6sIKMesLubMLmMqbaJCBsDbb3RY8xW9sh+eHBSSM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f6e97Pvwm3amYUaL0tEsX9GrSENF6ctBM2wWs+8Ml0wRsLCXKi690wQAfVu1sEN//
	 /PtwkkKv515MddyJ5HliRdR/cYf2KsqkABAKDE4VahQOUvGgDmjTSga/OJjNqgnoYW
	 j5INOwPAhH8vUw+msCG4c5lgnQ468iODPneiPWm/n3Zoo1icvKUXgGWNmNqcprr5AV
	 RocGB09IaCVI1rmO1C8iiTQvwlE1NuGoXbDi54Ct4KsHj9gCtRYwkIhmZVW9lVNty6
	 scwgnjM3ADl9CaJ1frtCEB4hqiOQQ9MBxGGi1ue8KcYLTgJ+cCweWLOA9+xgmjq8nQ
	 S7MpkTfE8nYtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F7A3827DD;
	Wed, 13 Aug 2025 05:43:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 69B85938
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 05:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A8B682716
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 05:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0JS_1ds5_QOF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 05:43:30 +0000 (UTC)
X-Greylist: delayed 509 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 13 Aug 2025 05:43:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C7F68272D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C7F68272D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=gregkh@linuxfoundation.org;
 receiver=<UNKNOWN> 
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C7F68272D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 05:43:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4C3A05C69BE;
 Wed, 13 Aug 2025 05:34:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FF0CC4CEEB;
 Wed, 13 Aug 2025 05:34:58 +0000 (UTC)
Date: Wed, 13 Aug 2025 07:34:54 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sasha Levin <sashal@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Kuniyuki Iwashima <kuniyu@google.com>, stable@vger.kernel.org
Message-ID: <2025081319-carried-liberty-dc3e@gregkh>
References: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
 <20250812135714.0e1a7ee0@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250812135714.0e1a7ee0@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1755063299;
 bh=y2cn1F377n62GhXtZy13sRaL2HV14HmDYX5otP9AhZo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UVQNBEl4Mnahh/6yIBSJHL8GXVmvkVjvNEn6JoiqWownwKkR5H46Zh5/mlZsGh15Z
 usdr427yGZpl577ep4e1H4VltQu32GO9fB2DhfhKGdMQkpBwugAbrMu8kElmHG/fBq
 Ip6ZkOyTs21Iv8C4HbN+lg6jRK21Nd3bFgAhJ3eE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=UVQNBEl4
Subject: Re: [Intel-wired-lan] [PATCH 00/12] ice: split ice_virtchnl.c
 git-blame friendly way
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 12, 2025 at 01:57:14PM -0700, Jakub Kicinski wrote:
> On Tue, 12 Aug 2025 15:28:58 +0200 Przemek Kitszel wrote:
> > Summary:
> > Split ice_virtchnl.c into two more files (+headers), in a way
> > that git-blame works better.
> > Then move virtchnl files into a new subdir.
> > No logic changes.
> > 
> > I have developed (or discovered ;)) how to split a file in a way that
> > both old and new are nice in terms of git-blame
> > There were no much disscussion on [RFC], so I would like to propose
> > to go forward with this approach.
> > 
> > There is more commits needed to have it nice, so it forms a git-log vs
> > git-blame tradeoff, but (after the brief moment that this is on the top)
> > we spend orders of magnitude more time looking at the blame output (and
> > commit messages linked from that) - so I find it much better to see
> > actual logic changes instead of "move xx to yy" stuff (typical for
> > "squashed/single-commit splits").
> > 
> > Cherry-picks/rebases work the same with this method as with simple
> > "squashed/single-commit" approach (literally all commits squashed into
> > one (to have better git-log, but shitty git-blame output).
> > 
> > Rationale for the split itself is, as usual, "file is big and we want to
> > extend it".
> > 
> > This series is available on my github (just rebased from any
> > earlier mentions):
> > https://github.com/pkitszel/linux/tree/virtchnl-split-Aug12
> > (the simple git-email view flattens this series, removing two
> > merges from the view).
> > 
> > 
> > [RFC]:
> > https://lore.kernel.org/netdev/5b94d14e-a0e7-47bd-82fc-c85171cbf26e@intel.com/T/#u
> > 
> > (I would really look at my fork via your preferred git interaction tool
> > instead of looking at the patches below).
> 
> UI tools aside I wish you didn't cut off the diffstat from the cover
> letter :/ It'd make it much easier to understand what you're splitting.
> 
> Greg, Sasha, I suspect stable will suffer the most from any file split /
> movement. Do you have any recommendation on what should be allowed?

We don't care, do whatever you need to for Linus's tree, and the
backports can work themselves out as needed.

thanks,

greg k-h
